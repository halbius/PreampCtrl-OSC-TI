#pragma once
#ifndef PreampCtrl_PARAMETERS_H
#define PreampCtrl_PARAMETERS_H

// ============================================================================
// PreampCtrl_Parameters.h
//
// AAX Parameter-Klasse für PreampCtrl-OSC.
// OSC-Kommunikation erfolgt über PreampCtrl_OSCManager (Singleton).
// Konfiguration (IP, Ports, Geräteliste) kommt aus PreampCtrl_Config.
//
// Thread-Modell:
//   - OSCManager-Callback läuft im Receive-Thread → schreibt in mIncomingQueue
//   - TimerWakeup() läuft im AAX-Hauptthread → liest Queue, setzt AAX-Parameter
//   - mQueueMutex schützt mIncomingQueue
// ============================================================================

#include "AAX_CEffectParameters.h"
#include "PreampCtrl_OSCManager.h"

#include <string>
#include <queue>
#include <mutex>
#include <atomic>
#include <chrono>


// ----------------------------------------------------------------------------
// Eingehender Parameterwert aus dem OSC-Receive-Thread
// ----------------------------------------------------------------------------
struct SOSCIncomingValue
{
    std::string paramID;  // z.B. "Gain", "Phantom", "PhaseL" ...
    float       value;    // echter Parameterwert
};


// ----------------------------------------------------------------------------
// PreampCtrl_Parameters
// ----------------------------------------------------------------------------
class PreampCtrl_Parameters : public AAX_CEffectParameters
{
public:
    PreampCtrl_Parameters();
    ~PreampCtrl_Parameters() AAX_OVERRIDE;

    static AAX_CEffectParameters* AAX_CALLBACK Create();

public:
    AAX_Result EffectInit()    AAX_OVERRIDE;

    AAX_Result NotificationReceived(AAX_CTypeID  iNotificationType,
                                    const void*  iNotificationData,
                                    uint32_t     iDataSize) AAX_OVERRIDE;

    AAX_Result TimerWakeup()   AAX_OVERRIDE;

private:
    // OSC senden
    void SendOSC_Gain(float gainValue);
    void SendOSC_Bool(const char* oscParam, bool value,
                      std::atomic<bool>& lastSent,
                      std::atomic<int64_t>& lastSentMs);
    void SendOSC_HPF(int32_t hzValue);
    void SendOSC_Phase(bool phaseOn, int channel,
                       std::atomic<bool>& lastSent,
                       std::atomic<int64_t>& lastSentMs);

    // Packet-Dispatcher Callback für Gain
    AAX_Result UpdatePacket_Gain(AAX_CPacket& ioPacket);

    // OSC-Adresse: /preamp/<channel>/<param>
    std::string BuildAddress(const char* param, int channel) const;

    // OSCManager
    void RegisterWithManager();
    void UnregisterFromManager();
    void UpdateManagerChannel();
    std::string GetInstanceId() const;

    // Callback vom OSCManager (Receive-Thread!)
    void OnOSCReceived(const std::string& paramID, float value);

    // Hilfsfunktionen
    static float GainToNormalized(float gainDB);
    static float NormalizedToGain(float norm);

    // Member
    std::string             mDeviceId;
    int32_t                 mLastChannelIndex; // letzter bekannter Channel-Parameter-Index
    bool                    mInitialized;      // true nach erstem TimerWakeup – schützt vor AAX-Reset
    bool                    mSettingParameter; // true während wir selbst SetNormalizedValue aufrufen
    int                     mChannel;
    bool                    mIsStereo;
    bool                    mRegistered;


    //Preamp Kanalanzahl
    int32_t GetPreampCount() const;
    bool    IsChannelValid() const;

    std::queue<SOSCIncomingValue>   mIncomingQueue;
    std::mutex                      mQueueMutex;

    // Echo-Unterdrückung
    std::atomic<float>      mLastSentGain;
    std::atomic<int64_t>    mLastSendGainMs;
    std::atomic<bool>       mLastSentPhantom;
    std::atomic<int64_t>    mLastSendPhantomMs;
    std::atomic<bool>       mLastSentGenerator;
    std::atomic<int64_t>    mLastSendGeneratorMs;
    std::atomic<int32_t>    mLastSentHPF;
    std::atomic<int64_t>    mLastSendHPFMs;
    std::atomic<bool>       mLastSentLimiter;
    std::atomic<int64_t>    mLastSendLimiterMs;
    std::atomic<bool>       mLastSentPhaseL;
    std::atomic<int64_t>    mLastSendPhaseLMs;
    std::atomic<bool>       mLastSentPhaseR;
    std::atomic<int64_t>    mLastSendPhaseRMs;


    static constexpr int64_t kEchoTimeoutMs = 200;
};

#endif // PreampCtrl_PARAMETERS_H
