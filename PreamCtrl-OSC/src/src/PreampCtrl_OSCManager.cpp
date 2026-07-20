// ============================================================================
// PreampCtrl_OSCManager.cpp
// ============================================================================

#include "PreampCtrl_OSCManager.h"
#include "PreampCtrl_Config.h"
#include "PreampCtrl_Defs.h"

#include "osc/OscOutboundPacketStream.h"
#include "ip/IpEndpointName.h"

#include <sstream>
#include <stdexcept>
#include <algorithm>

#ifdef _DEBUG
#  ifdef _WIN32
#    include <windows.h>
#    define DBG(msg)         OutputDebugStringA("[PreampCtrl/OSC] " msg "\n")
#    define DBGF(buf,fmt,...) do { snprintf(buf,sizeof(buf),"[PreampCtrl/OSC] " fmt "\n",__VA_ARGS__); OutputDebugStringA(buf); } while(0)
#  else
#    include <stdio.h>
#    define DBG(msg)         fprintf(stderr,"[PreampCtrl/OSC] " msg "\n")
#    define DBGF(buf,fmt,...) fprintf(stderr,"[PreampCtrl/OSC] " fmt "\n",__VA_ARGS__)
#  endif
#else
#  define DBG(msg)
#  define DBGF(buf,fmt,...)
#endif


// ============================================================================
// PreampCtrl_OSCDeviceListener
// ============================================================================

void PreampCtrl_OSCDeviceListener::RegisterChannel(int channel, bool isStereo,
    PreampCtrlOSCCallback callback)
{
    std::lock_guard<std::mutex> lock(mMutex);
    mChannels[channel] = { isStereo, callback };
#ifdef _DEBUG
    char buf[64];
    DBGF(buf, "Kanal %d registriert (stereo=%d)", channel, isStereo);
#endif
}

void PreampCtrl_OSCDeviceListener::UnregisterChannel(int channel)
{
    std::lock_guard<std::mutex> lock(mMutex);
    mChannels.erase(channel);
#ifdef _DEBUG
    char buf[64];
    DBGF(buf, "Kanal %d abgemeldet", channel);
#endif
}

void PreampCtrl_OSCDeviceListener::UpdateStereo(int channel, bool isStereo)
{
    std::lock_guard<std::mutex> lock(mMutex);
    auto it = mChannels.find(channel);
    if (it != mChannels.end())
        it->second.isStereo = isStereo;
}

bool PreampCtrl_OSCDeviceListener::CheckAddress(const std::string& address,
    int ch, const char* param) const
{
    std::ostringstream oss;
    oss << "/CON/TXCH" << ch << "/" << param;
    return address == oss.str();
}

bool PreampCtrl_OSCDeviceListener::ReadFloat(const osc::ReceivedMessage& msg, float& outValue)
{
    auto it = msg.ArgumentsBegin();
    if (it == msg.ArgumentsEnd()) return false;
    if (it->IsFloat()) { outValue = it->AsFloat(); return true; }
    else if (it->IsInt32()) { outValue = static_cast<float>(it->AsInt32()); return true; }
    return false;
}

bool PreampCtrl_OSCDeviceListener::ReadFloatOrBool(const osc::ReceivedMessage& msg, float& outValue)
{
    auto it = msg.ArgumentsBegin();
    if (it == msg.ArgumentsEnd()) return false;
    if (it->IsFloat()) { outValue = it->AsFloat(); return true; }
    else if (it->IsInt32()) { outValue = static_cast<float>(it->AsInt32()); return true; }
    else if (it->IsBool()) { outValue = it->AsBool() ? 1.0f : 0.0f; return true; }
    return false;
}

void PreampCtrl_OSCDeviceListener::ProcessMessage(const osc::ReceivedMessage& msg,
    const IpEndpointName& /*remote*/)
{
    try
    {
        std::string address(msg.AddressPattern());

        // Kopie der Channel-Map um Lock-Zeit zu minimieren
        std::map<int, ChannelEntry> channels;
        { std::lock_guard<std::mutex> lock(mMutex); channels = mChannels; }

        for (auto& [ch, entry] : channels)
        {
            // Welche Kanäle gehören zu dieser Instanz?
            std::vector<int> relevantChannels = { ch };
            if (entry.isStereo) relevantChannels.push_back(ch + 1);

            for (int testCh : relevantChannels)
            {
                float value = 0.0f;
                std::string paramID;

                if (CheckAddress(address, testCh, "Gain"))
                {
                    if (!ReadFloat(msg, value)) continue;
                    paramID = PreampCtrl_GainID;
                }
                else if (CheckAddress(address, testCh, "Phantom"))
                {
                    if (!ReadFloatOrBool(msg, value)) continue;
                    value = (value != 0.0f) ? 1.0f : 0.0f;
                    paramID = PreampCtrl_PhantomID;
                }
                else if (CheckAddress(address, testCh, "Generator"))
                {
                    if (!ReadFloatOrBool(msg, value)) continue;
                    value = (value != 0.0f) ? 1.0f : 0.0f;
                    paramID = PreampCtrl_GeneratorID;
                }
                else if (CheckAddress(address, testCh, "HPF"))
                {
                    // Stagetec sendet Hz als Int – in Stufenindex umrechnen
                    if (!ReadFloat(msg, value)) continue;
                    int32_t hzValue = static_cast<int32_t>(value + 0.5f);
                    hzValue = std::max(kPreampCtrl_HPFMin,
                              std::min(kPreampCtrl_HPFMax, hzValue));
                    hzValue = (hzValue / kPreampCtrl_HPFStep) * kPreampCtrl_HPFStep;
                    value = static_cast<float>(hzValue / kPreampCtrl_HPFStep);
                    paramID = PreampCtrl_HPFID;
                }
                else if (CheckAddress(address, testCh, "Limiter"))
                {
                    if (!ReadFloatOrBool(msg, value)) continue;
                    value = (value != 0.0f) ? 1.0f : 0.0f;
                    paramID = PreampCtrl_LimiterID;
                }
                else if (CheckAddress(address, testCh, "Polarity"))
                {
                    if (!ReadFloatOrBool(msg, value)) continue;
                    value = (value != 0.0f) ? 1.0f : 0.0f;
                    // PhaseL = primärer Kanal (ch), PhaseR = ch+1
                    paramID = (testCh == ch) ? PreampCtrl_PhaseLID : PreampCtrl_PhaseRID;
                }
                else
                {
                    continue;
                }

                // Callback aufrufen
                if (entry.callback)
                    entry.callback(paramID, value);
            }
        }
    }
    catch (...) {}  // Malformed packet – Pro Tools darf nie abstürzen
}


// ============================================================================
// PreampCtrlDeviceContext
// ============================================================================

void PreampCtrlDeviceContext::StartReceive()
{
    if (receiveRunning) return;

    try
    {
        receiveSocket = new UdpListeningReceiveSocket(
            IpEndpointName(IpEndpointName::ANY_ADDRESS, receivePort),
            listener.get()
        );

        receiveRunning = true;
        receiveThread = std::thread([this]()
            {
#ifdef _DEBUG
                char buf[64];
                DBGF(buf, "ReceiveThread gestartet für Gerät '%s' Port %d",
                    deviceId.c_str(), receivePort);
#endif
                try { receiveSocket->Run(); }
                catch (...) {}
                receiveRunning = false;
#ifdef _DEBUG
                DBGF(buf, "ReceiveThread beendet für Gerät '%s'", deviceId.c_str());
#endif
            });
    }
    catch (...)
    {
        receiveRunning = false;
        delete receiveSocket;
        receiveSocket = nullptr;
        DBG("FEHLER: Receive-Socket konnte nicht erstellt werden");
    }
}

void PreampCtrlDeviceContext::StopReceive()
{
    if (receiveSocket)
        receiveSocket->AsynchronousBreak();

    if (receiveThread.joinable())
        receiveThread.join();

    delete receiveSocket;
    receiveSocket = nullptr;
}


// ============================================================================
// PreampCtrl_OSCManager – Singleton
// ============================================================================

PreampCtrl_OSCManager& PreampCtrl_OSCManager::Instance()
{
    static PreampCtrl_OSCManager instance;
    return instance;
}

PreampCtrl_OSCManager::PreampCtrl_OSCManager()
{
    // Config laden und Change-Callback registrieren
    PreampCtrl_Config::Instance().Load();
    PreampCtrl_Config::Instance().RegisterChangeCallback([this]()
        {
            ReloadConfig();
        });
    DBG("OSCManager initialisiert");
}

PreampCtrl_OSCManager::~PreampCtrl_OSCManager()
{
    std::lock_guard<std::mutex> lock(mMutex);
    for (auto& [id, ctx] : mDevices)
        ctx->StopReceive();
    mDevices.clear();
    DBG("OSCManager zerstört");
}


// ============================================================================
// Plugin-Instanz registrieren
// ============================================================================

void PreampCtrl_OSCManager::RegisterInstance(const std::string& instanceId,
    const std::string& deviceId,
    int channel,
    bool isStereo,
    PreampCtrlOSCCallback callback)
{
    std::lock_guard<std::mutex> lock(mMutex);



    // Alte Registrierung dieser Instanz entfernen
    auto existing = mInstances.find(instanceId);
    if (existing != mInstances.end())
    {
        auto& old = existing->second;
        auto devIt = mDevices.find(old.deviceId);
        if (devIt != mDevices.end())
            devIt->second->listener->UnregisterChannel(old.channel);
    }

    // Gerät-Kontext holen oder erstellen
    PreampCtrlDeviceContext* ctx = GetOrCreateDevice(deviceId);
    if (!ctx)
    {
        DBG("FEHLER: Gerät nicht in Config gefunden");
        return;
    }

    // Kanal registrieren
    ctx->listener->RegisterChannel(channel, isStereo, callback);

    // Instanz merken
    mInstances[instanceId] = { deviceId, channel, isStereo, callback };
}

void PreampCtrl_OSCManager::UnregisterInstance(const std::string& instanceId)
{
    std::lock_guard<std::mutex> lock(mMutex);

    auto it = mInstances.find(instanceId);
    if (it == mInstances.end()) return;

    auto& entry = it->second;



    auto devIt = mDevices.find(entry.deviceId);
    if (devIt != mDevices.end())
        devIt->second->listener->UnregisterChannel(entry.channel);

    std::string deviceId = entry.deviceId; // vor erase retten!
    mInstances.erase(it);

    CleanupDeviceIfUnused(deviceId);
}

void PreampCtrl_OSCManager::UpdateChannel(const std::string& instanceId,
    int newChannel, bool isStereo)
{
    std::lock_guard<std::mutex> lock(mMutex);

    auto it = mInstances.find(instanceId);
    if (it == mInstances.end()) return;

    auto& entry = it->second;
    auto devIt = mDevices.find(entry.deviceId);
    if (devIt == mDevices.end()) return;

    // Alten Kanal abmelden, neuen registrieren
    devIt->second->listener->UnregisterChannel(entry.channel);
    devIt->second->listener->RegisterChannel(newChannel, isStereo, entry.callback);

    entry.channel = newChannel;
    entry.isStereo = isStereo;
}


// ============================================================================
// OSC senden
// ============================================================================

bool PreampCtrl_OSCManager::SendOSC(const std::string& deviceId,
    const std::string& address,
    float value)
{
    std::lock_guard<std::mutex> lock(mMutex);

    auto it = mDevices.find(deviceId);
    if (it == mDevices.end() || !it->second->sendSocket) return false;

    try
    {
        char buffer[OSC_MANAGER_BUFFER_SIZE];
        osc::OutboundPacketStream p(buffer, OSC_MANAGER_BUFFER_SIZE);
        p << osc::BeginMessage(address.c_str()) << value << osc::EndMessage;
        it->second->sendSocket->Send(p.Data(), p.Size());
        return true;
    }
    catch (...) { return false; }
}

bool PreampCtrl_OSCManager::SendOSC(const std::string& deviceId,
    const std::string& address,
    int32_t value)
{
    std::lock_guard<std::mutex> lock(mMutex);

    auto it = mDevices.find(deviceId);
    if (it == mDevices.end() || !it->second->sendSocket) return false;

    try
    {
        char buffer[OSC_MANAGER_BUFFER_SIZE];
        osc::OutboundPacketStream p(buffer, OSC_MANAGER_BUFFER_SIZE);
        p << osc::BeginMessage(address.c_str()) << value << osc::EndMessage;
        it->second->sendSocket->Send(p.Data(), p.Size());
        return true;
    }
    catch (...) { return false; }
}


// ============================================================================
// Gerät-Kontext erstellen
// ============================================================================

PreampCtrlDeviceContext* PreampCtrl_OSCManager::GetOrCreateDevice(const std::string& deviceId)
{
    // Bereits vorhanden?
    auto it = mDevices.find(deviceId);
    if (it != mDevices.end())
        return it->second.get();

    // Config abfragen
    PreampCtrlDeviceConfig cfg;
    if (!PreampCtrl_Config::Instance().GetDevice(deviceId, cfg))
    {
#ifdef _DEBUG
        char buf[128];
        DBGF(buf, "Gerät '%s' nicht in config.json gefunden", deviceId.c_str());
#endif
        return nullptr;
    }

    // Neuen Kontext erstellen
    auto ctx = std::make_unique<PreampCtrlDeviceContext>();
    ctx->deviceId = deviceId;
    ctx->ip = cfg.ip;
    ctx->sendPort = cfg.sendPort;
    ctx->receivePort = cfg.receivePort;
    ctx->listener = std::make_unique<PreampCtrl_OSCDeviceListener>();

    // Send-Socket
    try
    {
        ctx->sendSocket = std::make_unique<UdpTransmitSocket>(
            IpEndpointName(cfg.ip.c_str(), cfg.sendPort));
    }
    catch (...)
    {
        DBG("FEHLER: Send-Socket konnte nicht erstellt werden");
        ctx->sendSocket = nullptr;
    }

    // Receive-Socket starten
    ctx->StartReceive();

#ifdef _DEBUG
    char buf[128];
    DBGF(buf, "Gerät '%s' erstellt: %s:%d/%d",
        deviceId.c_str(), cfg.ip.c_str(), cfg.sendPort, cfg.receivePort);
#endif

    PreampCtrlDeviceContext* raw = ctx.get();
    mDevices[deviceId] = std::move(ctx);
    return raw;
}

void PreampCtrl_OSCManager::CleanupDeviceIfUnused(const std::string& deviceId)
{
    // Prüfen ob noch Instanzen für dieses Gerät registriert sind
    for (auto& [id, entry] : mInstances)
    {
        if (entry.deviceId == deviceId)
            return; // noch in Verwendung
    }

    // Keine Instanzen mehr – Socket schließen
    auto it = mDevices.find(deviceId);
    if (it != mDevices.end())
    {
        it->second->StopReceive();
        mDevices.erase(it);
#ifdef _DEBUG
        char buf[64];
        DBGF(buf, "Gerät '%s' entfernt (keine Instanzen mehr)", deviceId.c_str());
#endif
    }
}


// ============================================================================
// GetUsedChannels
// ============================================================================

std::vector<int> PreampCtrl_OSCManager::GetUsedChannels(const std::string& deviceId,
    const std::string& excludeInstanceId) const
{
    std::lock_guard<std::mutex> lock(mMutex);
    std::vector<int> used;
    for (const auto& [id, entry] : mInstances)
    {
        if (entry.deviceId == deviceId && id != excludeInstanceId)
        {
            used.push_back(entry.channel);
            if (entry.isStereo)
                used.push_back(entry.channel + 1);
        }
    }
    return used;
}


// ============================================================================
// Config neu laden
// ============================================================================

void PreampCtrl_OSCManager::ReloadConfig()
{
    DBG("Config neu laden – aktualisiere Sockets");

    std::lock_guard<std::mutex> lock(mMutex);

    // Alle bestehenden Geräte prüfen ob sich IP/Ports geändert haben
    for (auto& [deviceId, ctx] : mDevices)
    {
        PreampCtrlDeviceConfig cfg;
        if (!PreampCtrl_Config::Instance().GetDevice(deviceId, cfg))
            continue;

        bool changed = (ctx->ip != cfg.ip ||
            ctx->sendPort != cfg.sendPort ||
            ctx->receivePort != cfg.receivePort);

        if (!changed) continue;

#ifdef _DEBUG
        char buf[128];
        DBGF(buf, "Gerät '%s': IP/Port geändert, Socket neu erstellen", deviceId.c_str());
#endif

        // Receive-Thread neu starten
        ctx->StopReceive();
        ctx->ip = cfg.ip;
        ctx->sendPort = cfg.sendPort;
        ctx->receivePort = cfg.receivePort;

        // Send-Socket neu erstellen
        try
        {
            ctx->sendSocket = std::make_unique<UdpTransmitSocket>(
                IpEndpointName(cfg.ip.c_str(), cfg.sendPort));
        }
        catch (...)
        {
            ctx->sendSocket = nullptr;
            DBG("FEHLER: Send-Socket konnte nicht neu erstellt werden");
        }

        ctx->StartReceive();
    }
}