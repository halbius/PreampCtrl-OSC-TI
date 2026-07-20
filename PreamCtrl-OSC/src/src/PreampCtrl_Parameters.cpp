// ============================================================================
// PreampCtrl_Parameters.cpp
// ============================================================================

#include "PreampCtrl_Parameters.h"
#include "PreampCtrl_Defs.h"
#include "PreampCtrl_Alg.h"
#include "PreampCtrl_Config.h"
#include "PreampCtrl_OSCManager.h"

#include "AAX_CBinaryTaperDelegate.h"
#include "AAX_CBinaryDisplayDelegate.h"
#include "AAX_CLinearTaperDelegate.h"
#include "AAX_CNumberDisplayDelegate.h"
#include "AAX_CStringDisplayDelegate.h"
#include "AAX_IDisplayDelegate.h"
#include "AAX_Assert.h"
#include "AAX_CStateTaperDelegate.h"

#include <memory>
#include <string>
#include <sstream>
#include <cmath>
#include <map>

#ifdef _DEBUG
#  ifdef _WIN32
#    include <windows.h>
#    define DBG(msg)          OutputDebugStringA("[PreampCtrl] " msg "\n")
#    define DBGF(buf,fmt,...) do { snprintf(buf,sizeof(buf),"[PreampCtrl] " fmt "\n",__VA_ARGS__); OutputDebugStringA(buf); } while(0)
#  else
#    include <stdio.h>
#    define DBG(msg)          fprintf(stderr,"[PreampCtrl] " msg "\n")
#    define DBGF(buf,fmt,...) fprintf(stderr,"[PreampCtrl] " fmt "\n",__VA_ARGS__)
#  endif
#else
#  define DBG(msg)
#  define DBGF(buf,fmt,...)
#endif


// ============================================================================
// Hilfsfunktionen
// ============================================================================

float PreampCtrl_Parameters::GainToNormalized(float gainDB)
{
    float norm = (gainDB - kPreampCtrl_GainMin)
               / (kPreampCtrl_GainMax - kPreampCtrl_GainMin);
    if (norm < 0.0f) norm = 0.0f;
    if (norm > 1.0f) norm = 1.0f;
    return norm;
}

float PreampCtrl_Parameters::NormalizedToGain(float norm)
{
    return kPreampCtrl_GainMin + norm * (kPreampCtrl_GainMax - kPreampCtrl_GainMin);
}

std::string PreampCtrl_Parameters::BuildAddress(const char* param, int channel) const
{
    PreampCtrlDeviceConfig cfg;
    if (PreampCtrl_Config::Instance().GetDevice(mDeviceId, cfg))
        return cfg.BuildOscAddress(param, channel);
    // Fallback: /CON/TXCH<channel>/<param>
    std::ostringstream oss;
    oss << "/CON/TXCH" << channel << "/" << param;
    return oss.str();
}

std::string PreampCtrl_Parameters::GetInstanceId() const
{
    // Eindeutige ID: Pointer dieser Instanz als Hex-String
    std::ostringstream oss;
    oss << "inst_" << std::hex << reinterpret_cast<uintptr_t>(this);
    return oss.str();
}


// ============================================================================
// Konstruktor / Destruktor
// ============================================================================

AAX_CEffectParameters* AAX_CALLBACK PreampCtrl_Parameters::Create()
{
    return new PreampCtrl_Parameters();
}

PreampCtrl_Parameters::PreampCtrl_Parameters()
    : AAX_CEffectParameters()
    , mDeviceId("")
    , mChannel(1)
    , mLastChannelIndex(-1)
    , mInitialized(false) // -1 = noch nicht initialisiert
    , mIsStereo(false)
    , mRegistered(false)
    , mLastSentGain(0.0f)
    , mLastSendGainMs(0)
    , mLastSentPhantom(false)
    , mLastSendPhantomMs(0)
    , mLastSentGenerator(false)
    , mLastSendGeneratorMs(0)
    , mLastSentHPF(0)
    , mLastSendHPFMs(0)
    , mLastSentLimiter(false)
    , mLastSendLimiterMs(0)
    , mLastSentPhaseL(false)
    , mLastSendPhaseLMs(0)
    , mLastSentPhaseR(false)
    , mLastSendPhaseRMs(0)
{
    DBG("Konstruktor");
}

PreampCtrl_Parameters::~PreampCtrl_Parameters()
{
    UnregisterFromManager();
    DBG("Destruktor");
}


// ============================================================================
// OSCManager Registrierung
// ============================================================================

void PreampCtrl_Parameters::RegisterWithManager()
{
    if (mDeviceId.empty()) return;

    PreampCtrl_OSCManager::Instance().RegisterInstance(
        GetInstanceId(),
        mDeviceId,
        mChannel,
        mIsStereo,
        [this](const std::string& paramID, float value)
        {
            OnOSCReceived(paramID, value);
        }
    );
    mRegistered = true;

#ifdef _DEBUG
    char buf[128];
    DBGF(buf, "Registriert: device=%s ch=%d stereo=%d",
         mDeviceId.c_str(), mChannel, mIsStereo);
#endif
}

void PreampCtrl_Parameters::UnregisterFromManager()
{
    if (!mRegistered) return;
    PreampCtrl_OSCManager::Instance().UnregisterInstance(GetInstanceId());
    mRegistered = false;
    DBG("Abgemeldet vom OSCManager");
}

void PreampCtrl_Parameters::UpdateManagerChannel()
{
    if (!mRegistered) return;
    if (!mInitialized) return;  // Noch nicht bereit – verhindert Reset durch AAX-Initialisierung
    PreampCtrl_OSCManager::Instance().UpdateChannel(
        GetInstanceId(), mChannel, mIsStereo);
}

int32_t PreampCtrl_Parameters::GetPreampCount() const
{
    PreampCtrlDeviceConfig cfg;
    if (PreampCtrl_Config::Instance().GetDevice(mDeviceId, cfg) && cfg.preampCount > 0)
        return cfg.preampCount;
    return 32; // Fallback
}

bool PreampCtrl_Parameters::IsChannelValid() const
{
    int32_t preampCount = GetPreampCount();
    // mChannel ist 1-basiert; bei Stereo belegt er mChannel und mChannel+1
    if (mIsStereo)
        return (mChannel >= 1) && (mChannel + 1 <= preampCount);
    else
        return (mChannel >= 1) && (mChannel <= preampCount);
}


// ============================================================================
// OSC-Callback (läuft im Receive-Thread des OSCManagers)
// ============================================================================

void PreampCtrl_Parameters::OnOSCReceived(const std::string& paramID, float value)
{
    SOSCIncomingValue incoming;
    incoming.paramID = paramID;
    incoming.value   = value;

    std::lock_guard<std::mutex> lock(mQueueMutex);
    mIncomingQueue.push(incoming);
}


// ============================================================================
// EffectInit
// ============================================================================

// Display-Delegate für Kanal-Anzeige (Stereo: "1-2", Mono: "1")
class StereoChannelDisplayDelegate : public AAX_IDisplayDelegate<int32_t>
{
public:
    StereoChannelDisplayDelegate(bool isStereo) : mIsStereo(isStereo) {}

    AAX_IDisplayDelegate<int32_t>* Clone() const AAX_OVERRIDE
    {
        return new StereoChannelDisplayDelegate(mIsStereo);
    }

    bool ValueToString(int32_t iValue, AAX_CString* oString) const AAX_OVERRIDE
    {
        std::ostringstream oss;
        if (mIsStereo)
        {
            int32_t ch = (iValue * 2) + 1;
            oss << ch << "-" << (ch + 1);
        }
        else
        {
            oss << (iValue + 1);
        }
        *oString = AAX_CString(oss.str().c_str());
        return true;
    }

    bool ValueToString(int32_t iValue, int32_t, AAX_CString* oString) const AAX_OVERRIDE
    {
        return ValueToString(iValue, oString);
    }

    bool StringToValue(const AAX_CString&, int32_t*) const AAX_OVERRIDE
    {
        return false;
    }

private:
    bool mIsStereo;
};


AAX_Result PreampCtrl_Parameters::EffectInit()
{
    DBG("EffectInit");

    // Config laden – muss als erstes passieren damit Geräteliste verfügbar ist
    PreampCtrl_Config::Instance().Load();

    // Stem-Format
    AAX_EStemFormat stemFormat = AAX_eStemFormat_None;
    Controller()->GetInputStemFormat(&stemFormat);
    mIsStereo = (stemFormat == AAX_eStemFormat_Stereo);

    // Erstes verfügbares Gerät als Default setzen
    auto deviceIds = PreampCtrl_Config::Instance().GetDeviceIds();
    if (!deviceIds.empty())
        mDeviceId = deviceIds[0];

    // -----------------------------------------------------------------------
    // Parameter registrieren
    // -----------------------------------------------------------------------

    // OSC-Parameter
    // Bypass
    {
        AAX_CString id = cDefaultMasterBypassID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<bool>(
            id, AAX_CString("Master Bypass"), false,
            AAX_CBinaryTaperDelegate<bool>(),
            AAX_CBinaryDisplayDelegate<bool>("bypass", "on"), true));
        param->SetNumberOfSteps(2);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
        mPacketDispatcher.RegisterPacket(id.CString(), eAlgPortID_BypassIn);
    }

    // Gain: -20 bis +70 dB, 1-dB-Schritte (91 Stufen) → Radialknob, ganzzahlig
    {
        AAX_CString id = PreampCtrl_GainID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<int32_t>(
            id, AAX_CString("Gain"),
            static_cast<int32_t>(kPreampCtrl_GainDefault),
            AAX_CLinearTaperDelegate<int32_t>(
                static_cast<int32_t>(kPreampCtrl_GainMin),
                static_cast<int32_t>(kPreampCtrl_GainMax)),
            AAX_CNumberDisplayDelegate<int32_t>(), true));
        param->SetNumberOfSteps(kPreampCtrl_GainSteps);
        param->SetType(AAX_eParameterType_Continuous);
        mParameterManager.AddParameter(param.release());
        mPacketDispatcher.RegisterPacket(
            id.CString(), eAlgPortID_CoefsGainIn,
            this, &PreampCtrl_Parameters::UpdatePacket_Gain);
    }

    // Geräteliste einmal laden – wird für Device- und DeviceInfo-Parameter gebraucht
    auto devices = PreampCtrl_Config::Instance().GetDevices();

    // Device (Geräte-Auswahl, wird mit Session gespeichert)
    {
        int32_t numDevices = static_cast<int32_t>(devices.size());
        if (numDevices == 0) numDevices = 1; // mindestens 1 Eintrag

        std::map<int32_t, AAX_CString> deviceMap;
        for (int32_t i = 0; i < static_cast<int32_t>(devices.size()); ++i)
            deviceMap[i] = AAX_CString(devices[i].name.c_str());
        if (devices.empty())
            deviceMap[0] = AAX_CString("(keine Geräte)");

        AAX_CString id = PreampCtrl_DeviceID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<int32_t>(
            id, AAX_CString("Device"), static_cast<int32_t>(0),
            AAX_CStateTaperDelegate<int32_t>(0, numDevices - 1),
            AAX_CStringDisplayDelegate<int32_t>(deviceMap), true));
        param->SetNumberOfSteps(numDevices);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
    }

    /*
    // Device Info (read-only: zeigt IP und Ports des gewählten Geräts)
    {
        std::string infoStr = "(kein Gerät)";
        if (!devices.empty())
        {
            const auto& d = devices[0];
            std::ostringstream oss;
            oss << d.ip << "  TX:" << d.sendPort << "  RX:" << d.receivePort;
            infoStr = oss.str();
        }

        std::map<int32_t, AAX_CString> infoMap;
        infoMap[0] = AAX_CString(infoStr.c_str());

        AAX_CString id = PreampCtrl_DeviceInfoID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<int32_t>(
            id, AAX_CString("Device Info"), static_cast<int32_t>(0),
            AAX_CStateTaperDelegate<int32_t>(0, 0),
            AAX_CStringDisplayDelegate<int32_t>(infoMap), false));
        param->SetNumberOfSteps(1);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
    }
    */

    // Channel
    // Nächsten freien Kanal automatisch wählen
    int32_t firstFreeIndex = 0; // außerhalb des Blocks damit später darauf zugegriffen werden kann
    {
        // Maximum preampCount über alle Geräte – Channel-Parameter muss
        // groß genug für alle Geräte sein (AAX erlaubt keine nachträgliche Änderung)
        int32_t maxPreampCount = PreampCtrl_Config::Instance().GetMaxPreampCount();
        int32_t numChannels = mIsStereo ? (maxPreampCount / 2) : maxPreampCount;

        // Belegte Kanäle aus OSCManager abfragen
        // Eigene Instanz ausschließen – falls AAX EffectInit mehrfach aufruft
        auto usedChannels = PreampCtrl_OSCManager::Instance().GetUsedChannels(mDeviceId, GetInstanceId());
        for (int32_t i = 0; i < numChannels; ++i)
        {
            int testChannel = mIsStereo ? (i * 2 + 1) : (i + 1);
            bool occupied = false;
            for (int ch : usedChannels)
            {
                if (ch == testChannel) { occupied = true; break; }
            }
            if (!occupied) { firstFreeIndex = i; break; }
        }
        mChannel = mIsStereo ? (firstFreeIndex * 2 + 1) : (firstFreeIndex + 1);
        mLastChannelIndex = firstFreeIndex; // TimerWakeup soll diesen Wert nicht überschreiben


#ifdef _DEBUG
        char buf2[128];
        DBGF(buf2, "Belegte Kanäle für '%s': %zu", mDeviceId.c_str(), usedChannels.size());
        for (int ch : usedChannels)
            DBGF(buf2, "  belegt: %d", ch);
#endif
#ifdef _DEBUG
        char buf[64];
        DBGF(buf, "Erster freier Kanal: Index=%d → Kanal=%d", firstFreeIndex, mChannel);
#endif

        AAX_CString id = PreampCtrl_ChannelID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<int32_t>(
            id.CString(), AAX_CString("Channel"), firstFreeIndex,
            AAX_CStateTaperDelegate<int32_t>(0, numChannels - 1),
            StereoChannelDisplayDelegate(mIsStereo), false));
        param->SetNumberOfSteps(numChannels);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
    }

    // Phantom Power
    {
        AAX_CString id = PreampCtrl_PhantomID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<bool>(
            id, AAX_CString("Phantom Power"), false,
            AAX_CBinaryTaperDelegate<bool>(),
            AAX_CBinaryDisplayDelegate<bool>("Off", "On"), true));
        param->SetNumberOfSteps(2);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
    }

    // Generator
    {
        AAX_CString id = PreampCtrl_GeneratorID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<bool>(
            id, AAX_CString("Generator"), false,
            AAX_CBinaryTaperDelegate<bool>(),
            AAX_CBinaryDisplayDelegate<bool>("Off", "On"), true));
        param->SetNumberOfSteps(2);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
    }

    // HPF: 81 Stufen (0–80) × 5 Hz = 0–400 Hz → Radialknob, 5-Hz-Raster
    {
        // Display-Delegate: Stufenindex × 5 anzeigen
        std::map<int32_t, AAX_CString> hpfMap;
        hpfMap[0] = AAX_CString("Off");
        for (int32_t i = 1; i <= 80; ++i)
        {
            std::ostringstream oss;
            oss << (i * kPreampCtrl_HPFStep) << " Hz";
            hpfMap[i] = AAX_CString(oss.str().c_str());
        }
        AAX_CString id = PreampCtrl_HPFID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<int32_t>(
            id, AAX_CString("HPF"), 0,
            AAX_CStateTaperDelegate<int32_t>(0, 80),
            AAX_CStringDisplayDelegate<int32_t>(hpfMap), true));
        param->SetNumberOfSteps(kPreampCtrl_HPFSteps);
        param->SetType(AAX_eParameterType_Continuous);
        mParameterManager.AddParameter(param.release());
    }

    // Limiter
    {
        AAX_CString id = PreampCtrl_LimiterID;
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<bool>(
            id, AAX_CString("Limiter"), false,
            AAX_CBinaryTaperDelegate<bool>(),
            AAX_CBinaryDisplayDelegate<bool>("Off", "On"), true));
        param->SetNumberOfSteps(2);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
    }

    // Phase L (Mono: "Phase") und Phase R (nur Stereo)
    {
        const char* phaseLName = mIsStereo ? "Phase L" : "Phase";
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<bool>(
            PreampCtrl_PhaseLID, AAX_CString(phaseLName), false,
            AAX_CBinaryTaperDelegate<bool>(),
            AAX_CBinaryDisplayDelegate<bool>("Off", "On"), true));
        param->SetNumberOfSteps(2);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
    }

    if (mIsStereo)
    {
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<bool>(
            PreampCtrl_PhaseRID, AAX_CString("Phase R"), false,
            AAX_CBinaryTaperDelegate<bool>(),
            AAX_CBinaryDisplayDelegate<bool>("Off", "On"), true));
        param->SetNumberOfSteps(2);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
    }

    // Parameter im Audioweg
    // M/S-Decoder (nur Stereo)
    if (mIsStereo)
    {
        std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<bool>(
            PreampCtrl_MSDecodeID, AAX_CString("MS Decode"), false,
            AAX_CBinaryTaperDelegate<bool>(),
            AAX_CBinaryDisplayDelegate<bool>("Off", "On"), true));
        param->SetNumberOfSteps(2);
        param->SetType(AAX_eParameterType_Discrete);
        mParameterManager.AddParameter(param.release());
        mPacketDispatcher.RegisterPacket(
            PreampCtrl_MSDecodeID, eAlgPortID_CoefsGainIn,
            this, &PreampCtrl_Parameters::UpdatePacket_Gain);
    }


    if (mIsStereo)
    {
        // SwapLR, Mono
        struct { const char* id; const char* name; } stereoParams[] = {
            { PreampCtrl_SwapLRID, "Swap L/R" },
            { PreampCtrl_MonoID,   "Mono" },
        };
        for (auto& p : stereoParams)
        {
            std::unique_ptr<AAX_IParameter> param(new AAX_CParameter<bool>(
                p.id, AAX_CString(p.name), false,
                AAX_CBinaryTaperDelegate<bool>(),
                AAX_CBinaryDisplayDelegate<bool>("Off", "On"), true));
            param->SetNumberOfSteps(2);
            param->SetType(AAX_eParameterType_Discrete);
            mParameterManager.AddParameter(param.release());
            mPacketDispatcher.RegisterPacket(p.id, eAlgPortID_CoefsGainIn,
                this, &PreampCtrl_Parameters::UpdatePacket_Gain);
        }
    }

    // Beim OSCManager registrieren
    DBG("Vor RegisterWithManager");
#ifdef _DEBUG
    {
        std::string cfgPath = PreampCtrl_Config::Instance().GetConfigFilePath();
        char buf[512];
        DBGF(buf, "%s", cfgPath.c_str());
    }
#endif
    RegisterWithManager();
    DBG("RegisterWithManager aufgerufen");

    // mLastChannelIndex auf -1 setzen damit TimerWakeup beim ersten Aufruf
    // den Parameter-Wert korrigiert falls AAX noch den Default 0 liefert
    mLastChannelIndex = -1;
    mInitialized = false;

    return AAX_SUCCESS;
}


// ============================================================================
// NotificationReceived
// ============================================================================

AAX_Result PreampCtrl_Parameters::NotificationReceived(
    AAX_CTypeID iNotificationType,
    const void* iNotificationData,
    uint32_t    iDataSize)
{
    if (iNotificationType == AAX_eNotificationEvent_EnteringOfflineMode ||
        iNotificationType == AAX_eNotificationEvent_ExitingOfflineMode  ||
        iNotificationType == AAX_eNotificationEvent_TrackNameChanged)
    {
        AAX_EStemFormat stemFormat = AAX_eStemFormat_None;
        Controller()->GetInputStemFormat(&stemFormat);
        mIsStereo = (stemFormat == AAX_eStemFormat_Stereo);
        UpdateManagerChannel();
    }

    return AAX_CEffectParameters::NotificationReceived(
        iNotificationType, iNotificationData, iDataSize);
}


// ============================================================================
// TimerWakeup
// ============================================================================

AAX_Result PreampCtrl_Parameters::TimerWakeup()
{
    // -----------------------------------------------------------------------
    // 1. Gerät & Kanal aus AAX-Parametern lesen und ggf. aktualisieren
    // -----------------------------------------------------------------------

    // Device-Selektor
    {
        AAX_IParameter* devParam = mParameterManager.GetParameterByID(PreampCtrl_DeviceID);
        if (devParam)
        {
            int32_t devIndex = 0;
            devParam->GetValueAsInt32(&devIndex);

            auto devices = PreampCtrl_Config::Instance().GetDevices();
            if (devIndex >= 0 && devIndex < static_cast<int32_t>(devices.size()))
            {
                std::string newDeviceId = devices[devIndex].id;
                if (newDeviceId != mDeviceId)
                {
                    mDeviceId = newDeviceId;
                    // Neu registrieren mit neuem Gerät
                    UnregisterFromManager();
                    RegisterWithManager();

                    // DeviceInfo-Parameter aktualisieren
                    AAX_IParameter* infoParam = mParameterManager.GetParameterByID(PreampCtrl_DeviceInfoID);
                    if (infoParam)
                    {
                        const auto& d = devices[devIndex];
                        std::ostringstream oss;
                        oss << d.ip << "  TX:" << d.sendPort << "  RX:" << d.receivePort;
                        infoParam->SetName(AAX_CString(oss.str().c_str()));
                    }
#ifdef _DEBUG
                    char buf[128];
                    DBGF(buf, "Gerät gewechselt zu: %s", mDeviceId.c_str());
#endif
                }
            }
        }
    }

    // Kanal
    // mChannel ist die Wahrheit. Beim ersten TimerWakeup setzen wir den AAX-Parameter
    // auf den korrekten Wert (GUI-Anzeige), danach reagieren wir nur auf User-Änderungen.
    {
        AAX_IParameter* chParam = mParameterManager.GetParameterByID(PreampCtrl_ChannelID);
        if (chParam)
        {
            int32_t channel = 0;
            chParam->GetValueAsInt32(&channel);

            if (!mInitialized)
            {
                // Erster TimerWakeup: GUI-Parameter auf mChannel korrigieren.
                // mSettingParameter verhindert dass der nächste TimerWakeup
                // dies als echten Kanalwechsel interpretiert.
                int32_t preampCount = 32;
                {
                    PreampCtrlDeviceConfig cfg;
                    if (PreampCtrl_Config::Instance().GetDevice(mDeviceId, cfg) && cfg.preampCount > 0)
                        preampCount = cfg.preampCount;
                }
                int32_t numChannels = mIsStereo ? (preampCount / 2) : preampCount;
                int32_t targetIndex = mIsStereo ? ((mChannel - 1) / 2) : (mChannel - 1);
                double normalized = static_cast<double>(targetIndex)
                                  / static_cast<double>(numChannels - 1);
                mSettingParameter = true;
                chParam->Touch();
                chParam->SetNormalizedValue(normalized);
                chParam->Release();

                mLastChannelIndex = targetIndex;
                mInitialized = true;
            }
            else if (mSettingParameter)
            {
                // Dieser TimerWakeup ist die Reaktion auf unser SetNormalizedValue – ignorieren.
                mSettingParameter = false;
                mLastChannelIndex = channel; // AAX-Wert nach unserem Set merken
            }
            else if (channel != mLastChannelIndex)
            {
                // Echter Kanalwechsel durch User
                mLastChannelIndex = channel;
                mChannel = mIsStereo ? (channel * 2 + 1) : (channel + 1);
                // Kanal auf gültigen Bereich begrenzen
                int32_t maxChannel = GetPreampCount();
                if (mIsStereo && mChannel + 1 > maxChannel)
                    mChannel = maxChannel - 1; // letztes gültiges Stereopaar
                else if (!mIsStereo && mChannel > maxChannel)
                    mChannel = maxChannel;
                UpdateManagerChannel();
#ifdef _DEBUG
                char bufUpd[128];
                DBGF(bufUpd, "Kanalwechsel: inst=%s channel=%d → mChannel=%d",
                     GetInstanceId().c_str(), channel, mChannel);
#endif
            }
            // Sonst: channel == mLastChannelIndex → nichts tun, mChannel bleibt korrekt
        }
    }

    // -----------------------------------------------------------------------
    // 2. Eingehende OSC-Werte aus Queue verarbeiten
    // -----------------------------------------------------------------------
    std::queue<SOSCIncomingValue> localQueue;
    {
        std::lock_guard<std::mutex> lock(mQueueMutex);
        std::swap(localQueue, mIncomingQueue);
    }

#ifdef _DEBUG
    if (!localQueue.empty())
    {
        char buf[64];
        DBGF(buf, "TimerWakeup: %zu Wert(e) in Queue", localQueue.size());
    }
#endif

    while (!localQueue.empty())
    {
        SOSCIncomingValue incoming = localQueue.front();
        localQueue.pop();

        // Echo-Unterdrückung
        auto nowMs = []() -> int64_t {
            return std::chrono::duration_cast<std::chrono::milliseconds>(
                std::chrono::steady_clock::now().time_since_epoch()).count();
        };

        if (incoming.paramID == PreampCtrl_GainID)
        {
            int64_t ms = nowMs() - mLastSendGainMs.load();
            if (ms >= 0 && ms < kEchoTimeoutMs &&
                std::fabs(incoming.value - mLastSentGain.load()) < 0.11f)
                continue;
        }

        auto echoCheckBool = [&](const std::string& id,
                                  std::atomic<bool>& lastSent,
                                  std::atomic<int64_t>& lastMs) -> bool {
            if (incoming.paramID != id) return false;
            int64_t ms = nowMs() - lastMs.load();
            return (ms >= 0 && ms < kEchoTimeoutMs &&
                    (incoming.value != 0.0f) == lastSent.load());
        };

        if (echoCheckBool(PreampCtrl_PhantomID,   mLastSentPhantom,   mLastSendPhantomMs))   continue;
        if (echoCheckBool(PreampCtrl_GeneratorID, mLastSentGenerator, mLastSendGeneratorMs)) continue;
        if (echoCheckBool(PreampCtrl_LimiterID,   mLastSentLimiter,   mLastSendLimiterMs))   continue;
        if (echoCheckBool(PreampCtrl_PhaseLID,    mLastSentPhaseL,    mLastSendPhaseLMs))    continue;
        if (echoCheckBool(PreampCtrl_PhaseRID,    mLastSentPhaseR,    mLastSendPhaseRMs))    continue;

        // HPF Echo-Unterdrückung (mLastSentHPF speichert Hz-Wert)
        if (incoming.paramID == PreampCtrl_HPFID)
        {
            int32_t hzReceived = static_cast<int32_t>(incoming.value + 0.5f) * kPreampCtrl_HPFStep;
            int64_t ms = nowMs() - mLastSendHPFMs.load();
            if (ms >= 0 && ms < kEchoTimeoutMs && hzReceived == mLastSentHPF.load())
                continue;
        }

        // AAX-Parameter setzen
        AAX_IParameter* param = mParameterManager.GetParameterByID(incoming.paramID.c_str());
        if (!param) continue;

        if (incoming.paramID == PreampCtrl_GainID)
        {
            // Gain als int32 (ganze dB) setzen
            int32_t gainDB = static_cast<int32_t>(incoming.value + 0.5f);
            gainDB = std::max(static_cast<int32_t>(kPreampCtrl_GainMin),
                     std::min(static_cast<int32_t>(kPreampCtrl_GainMax), gainDB));
            param->Touch();
            param->SetValueWithInt32(gainDB);
            param->Release();
            mPacketDispatcher.SetDirty(incoming.paramID.c_str());
        }
        else if (incoming.paramID == PreampCtrl_HPFID)
        {
            // incoming.value ist Stufenindex aus OSCManager → direkt setzen
            int32_t stepIndex = static_cast<int32_t>(incoming.value + 0.5f);
            stepIndex = std::max(0, std::min(80, stepIndex));
            param->Touch();
            param->SetValueWithInt32(stepIndex);
            param->Release();
        }
        else
        {
            // Bool-Parameter (Phantom, Generator, Limiter, PhaseL, PhaseR)
            param->Touch();
            param->SetNormalizedValue((incoming.value != 0.0f) ? 1.0 : 0.0);
            param->Release();
        }
    }

    // -----------------------------------------------------------------------
    // 3. Geänderte Parameter an Gerät senden
    // -----------------------------------------------------------------------

    auto sendIfChanged_Bool = [&](const char* paramId, const char* oscParam,
                                   std::atomic<bool>& lastSent,
                                   std::atomic<int64_t>& lastMs)
    {
        AAX_IParameter* p = mParameterManager.GetParameterByID(paramId);
        if (!p) return;
        bool current = false;
        p->GetValueAsBool(&current);
        if (current != lastSent.load())
            SendOSC_Bool(oscParam, current, lastSent, lastMs);
    };

    sendIfChanged_Bool(PreampCtrl_PhantomID,   PreampCtrl_OSC_Phantom,   mLastSentPhantom,   mLastSendPhantomMs);
    sendIfChanged_Bool(PreampCtrl_GeneratorID, PreampCtrl_OSC_Generator, mLastSentGenerator, mLastSendGeneratorMs);
    sendIfChanged_Bool(PreampCtrl_LimiterID,   PreampCtrl_OSC_Limiter,   mLastSentLimiter,   mLastSendLimiterMs);

    // HPF
    {
        AAX_IParameter* p = mParameterManager.GetParameterByID(PreampCtrl_HPFID);
        if (p)
        {
            int32_t stepIndex = 0;
            p->GetValueAsInt32(&stepIndex);
            stepIndex = std::max(0, std::min(80, stepIndex));
            int32_t hzValue = stepIndex * kPreampCtrl_HPFStep;
            if (hzValue != mLastSentHPF.load())
                SendOSC_HPF(hzValue);
        }
    }

    // Phase L
    {
        AAX_IParameter* p = mParameterManager.GetParameterByID(PreampCtrl_PhaseLID);
        if (p)
        {
            bool current = false;
            p->GetValueAsBool(&current);
            if (current != mLastSentPhaseL.load())
                SendOSC_Phase(current, mChannel, mLastSentPhaseL, mLastSendPhaseLMs);
        }
    }

    // Phase R (nur Stereo)
    if (mIsStereo)
    {
        AAX_IParameter* p = mParameterManager.GetParameterByID(PreampCtrl_PhaseRID);
        if (p)
        {
            bool current = false;
            p->GetValueAsBool(&current);
            if (current != mLastSentPhaseR.load())
                SendOSC_Phase(current, mChannel + 1, mLastSentPhaseR, mLastSendPhaseRMs);
        }
    }

    return AAX_CEffectParameters::TimerWakeup();
}


// ============================================================================
// Packet-Dispatcher: Gain
// ============================================================================

AAX_Result PreampCtrl_Parameters::UpdatePacket_Gain(AAX_CPacket& ioPacket)
{
    AAX_IParameter* parameter = mParameterManager.GetParameterByID(PreampCtrl_GainID);
    if (parameter)
    {
        int32_t gainDB = static_cast<int32_t>(kPreampCtrl_GainDefault);
        if (parameter->GetValueAsInt32(&gainDB))
        {
            SPreampCtrl_CoefsGain& packet = *ioPacket.GetPtr<SPreampCtrl_CoefsGain>();
            packet.mIsStereo = mIsStereo ? 1 : 0;

            // Audio-Verarbeitungs-Parameter
            auto getBool = [&](const char* id) -> int32_t {
                AAX_IParameter* p = mParameterManager.GetParameterByID(id);
                if (!p) return 0;
                bool v = false; p->GetValueAsBool(&v); return v ? 1 : 0;
                };

            packet.mMSDecode = mIsStereo ? getBool(PreampCtrl_MSDecodeID) : 0;
            packet.mSwapLR = mIsStereo ? getBool(PreampCtrl_SwapLRID) : 0;
            packet.mMono = mIsStereo ? getBool(PreampCtrl_MonoID) : 0;

            SendOSC_Gain(static_cast<float>(gainDB));
        }
    }
    return AAX_SUCCESS;
}


// ============================================================================
// OSC senden
// ============================================================================

void PreampCtrl_Parameters::SendOSC_Gain(float gainValue)
{
    if (mDeviceId.empty()) return;
    if (!IsChannelValid()) return; // Kanal außerhalb des Gerätebereichs

    // mChannel wird authorativ durch TimerWakeup verwaltet – hier nicht anfassen

    // Echo-Unterdrückung
    mLastSentGain.store(gainValue);
    mLastSendGainMs.store(
        std::chrono::duration_cast<std::chrono::milliseconds>(
            std::chrono::steady_clock::now().time_since_epoch()).count());

#if PreampCtrl_OSC_NORMALIZED
    float oscValue = GainToNormalized(gainValue);
    PreampCtrl_OSCManager::Instance().SendOSC(
        mDeviceId, BuildAddress(PreampCtrl_OSC_Gain, mChannel), oscValue);
    if (mIsStereo)
        PreampCtrl_OSCManager::Instance().SendOSC(
            mDeviceId, BuildAddress(PreampCtrl_OSC_Gain, mChannel + 1), oscValue);
#else
    // Stagetec erwartet Int – auf ganze dB runden
    int32_t oscInt = static_cast<int32_t>(std::round(gainValue));
    PreampCtrl_OSCManager::Instance().SendOSC(
        mDeviceId, BuildAddress(PreampCtrl_OSC_Gain, mChannel), oscInt);
    if (mIsStereo)
        PreampCtrl_OSCManager::Instance().SendOSC(
            mDeviceId, BuildAddress(PreampCtrl_OSC_Gain, mChannel + 1), oscInt);
#endif
}

void PreampCtrl_Parameters::SendOSC_Bool(const char* oscParam, bool value,
                                          std::atomic<bool>& lastSent,
                                          std::atomic<int64_t>& lastMs)
{
    if (mDeviceId.empty()) return;
    if (!IsChannelValid()) return; // Kanal außerhalb des Gerätebereichs

    lastSent.store(value);
    lastMs.store(
        std::chrono::duration_cast<std::chrono::milliseconds>(
            std::chrono::steady_clock::now().time_since_epoch()).count());

    float oscValue = value ? 1.0f : 0.0f;
    PreampCtrl_OSCManager::Instance().SendOSC(
        mDeviceId, BuildAddress(oscParam, mChannel), oscValue);

    if (mIsStereo)
        PreampCtrl_OSCManager::Instance().SendOSC(
            mDeviceId, BuildAddress(oscParam, mChannel + 1), oscValue);
}

void PreampCtrl_Parameters::SendOSC_HPF(int32_t hzValue)
{
    if (mDeviceId.empty()) return;
    if (!IsChannelValid()) return;

    // Echo-Unterdrückung: Hz-Wert speichern
    mLastSentHPF.store(hzValue);
    mLastSendHPFMs.store(
        std::chrono::duration_cast<std::chrono::milliseconds>(
            std::chrono::steady_clock::now().time_since_epoch()).count());

    // Stagetec erwartet Int – hzValue ist bereits ganzzahlig
    PreampCtrl_OSCManager::Instance().SendOSC(
        mDeviceId, BuildAddress(PreampCtrl_OSC_HPF, mChannel), static_cast<int32_t>(hzValue));

    if (mIsStereo)
        PreampCtrl_OSCManager::Instance().SendOSC(
            mDeviceId, BuildAddress(PreampCtrl_OSC_HPF, mChannel + 1), static_cast<int32_t>(hzValue));
}

void PreampCtrl_Parameters::SendOSC_Phase(bool phaseOn, int channel,
                                           std::atomic<bool>& lastSent,
                                           std::atomic<int64_t>& lastMs)
{
    if (mDeviceId.empty()) return;

    lastSent.store(phaseOn);
    lastMs.store(
        std::chrono::duration_cast<std::chrono::milliseconds>(
            std::chrono::steady_clock::now().time_since_epoch()).count());

    PreampCtrl_OSCManager::Instance().SendOSC(
        mDeviceId, BuildAddress(PreampCtrl_OSC_Polarity, channel), phaseOn ? 1.0f : 0.0f);
}
