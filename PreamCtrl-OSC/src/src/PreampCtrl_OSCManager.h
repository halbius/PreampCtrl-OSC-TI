#pragma once
#ifndef PreampCtrl_OSCMANAGER_H
#define PreampCtrl_OSCMANAGER_H

// ============================================================================
// PreampCtrl_OSCManager.h
//
// Singleton der pro Gerät genau einen OSC-Send- und Receive-Socket verwaltet.
// Mehrere Plugin-Instanzen die dasselbe Gerät nutzen teilen sich diese Sockets.
//
// Thread-Modell:
//   - Pro Gerät: ein Receive-Thread blockiert auf UdpListeningReceiveSocket
//   - Eingehende Nachrichten werden anhand der Kanal-Nummer an die
//     registrierte Plugin-Instanz weitergeleitet (Callback)
//   - Senden erfolgt direkt aus dem AAX-Hauptthread via SendOSC()
// ============================================================================

#include "PreampCtrl_Config.h"
#include "ip/UdpSocket.h"
#include "osc/OscPacketListener.h"
#include "osc/OscReceivedElements.h"

#include <string>
#include <vector>
#include <map>
#include <functional>
#include <mutex>
#include <thread>
#include <atomic>
#include <memory>

#define OSC_MANAGER_BUFFER_SIZE 1024

// ----------------------------------------------------------------------------
// Eingehender OSC-Wert – wird per Callback an die Plugin-Instanz übergeben
// ----------------------------------------------------------------------------
struct SOSCIncomingValue;  // Forward-Deklaration (definiert in Parameters.h)

// Callback-Typ: Plugin-Instanz registriert diese Funktion beim Manager
// Parameter: paramID (z.B. "Gain"), value (echter Parameterwert)
using PreampCtrlOSCCallback = std::function<void(const std::string& paramID, float value)>;


// ----------------------------------------------------------------------------
// Interne Klasse: OSC-Listener für einen Gerät-Socket
// Wird vom Receive-Thread aufgerufen, leitet Nachrichten an Callbacks weiter
// ----------------------------------------------------------------------------
class PreampCtrl_OSCDeviceListener : public osc::OscPacketListener
{
public:
    PreampCtrl_OSCDeviceListener() = default;

    // Callback für einen bestimmten Kanal registrieren
    // channel: 1-basiert (mChannel der Plugin-Instanz)
    // isStereo: true wenn Stereo-Instanz (belegt channel und channel+1)
    void RegisterChannel(int channel, bool isStereo, PreampCtrlOSCCallback callback);

    // Kanal-Registrierung entfernen
    void UnregisterChannel(int channel);

    // Stereo-Status eines Kanals aktualisieren
    void UpdateStereo(int channel, bool isStereo);

    void ProcessMessage(const osc::ReceivedMessage& msg,
                        const IpEndpointName& remoteEndpoint) override;

private:
    struct ChannelEntry
    {
        bool                  isStereo;
        PreampCtrlOSCCallback callback;
    };

    mutable std::mutex              mMutex;
    std::map<int, ChannelEntry>     mChannels;  // key = Kanal (1-basiert)

    // Hilfsfunktion: OSC-Adresse prüfen
    bool CheckAddress(const std::string& address, int ch, const char* param) const;

    // OSC-Argument als float lesen
    static bool ReadFloat(const osc::ReceivedMessage& msg, float& outValue);
    static bool ReadFloatOrBool(const osc::ReceivedMessage& msg, float& outValue);
    static bool ReadInt(const osc::ReceivedMessage& msg, float& outValue);
};


// ----------------------------------------------------------------------------
// Pro-Gerät-Kontext: Socket + Thread + Listener
// ----------------------------------------------------------------------------
struct PreampCtrlDeviceContext
{
    std::string                                     deviceId;
    std::string                                     ip;
    int                                             sendPort;
    int                                             receivePort;

    // Senden
    std::unique_ptr<UdpTransmitSocket>              sendSocket;

    // Empfangen
    std::unique_ptr<PreampCtrl_OSCDeviceListener>   listener;
    UdpListeningReceiveSocket*                      receiveSocket = nullptr;
    std::thread                                     receiveThread;
    std::atomic<bool>                               receiveRunning{false};

    void StartReceive();
    void StopReceive();
};


// ----------------------------------------------------------------------------
// PreampCtrl_OSCManager – Singleton
// ----------------------------------------------------------------------------
class PreampCtrl_OSCManager
{
public:
    // Singleton-Zugriff
    static PreampCtrl_OSCManager& Instance();

    // Plugin-Instanz registrieren:
    // Stellt sicher dass für deviceId ein Socket existiert,
    // und registriert den Callback für den angegebenen Kanal.
    // instanceId: eindeutige ID der Plugin-Instanz (z.B. Pointer als String)
    void RegisterInstance(const std::string& instanceId,
                          const std::string& deviceId,
                          int                channel,
                          bool               isStereo,
                          PreampCtrlOSCCallback callback);

    // Plugin-Instanz abmelden (bei Destruktor aufrufen)
    void UnregisterInstance(const std::string& instanceId);

    // Kanal/Stereo einer Instanz aktualisieren (bei Kanalwechsel im Plugin)
    void UpdateChannel(const std::string& instanceId,
                       int newChannel,
                       bool isStereo);

    // OSC-Nachricht senden
    // Gibt false zurück wenn kein Socket für deviceId vorhanden
    bool SendOSC(const std::string& deviceId,
                 const std::string& address,
                 float value);

    bool SendOSC(const std::string& deviceId,
                 const std::string& address,
                 int32_t value);

    // Gibt alle belegten Kanäle für ein Gerät zurück
    // (für automatische Kanal-Vergabe beim Start einer neuen Instanz)
    std::vector<int> GetUsedChannels(const std::string& deviceId,
                                         const std::string& excludeInstanceId = "") const;

    // Config neu laden (wird vom File-Watcher aufgerufen)
    // Aktualisiert Sockets wenn sich IP/Ports geändert haben
    void ReloadConfig();

    // Nicht kopierbar
    PreampCtrl_OSCManager(const PreampCtrl_OSCManager&) = delete;
    PreampCtrl_OSCManager& operator=(const PreampCtrl_OSCManager&) = delete;

private:
    PreampCtrl_OSCManager();
    ~PreampCtrl_OSCManager();

    // Gerät-Kontext erstellen oder zurückgeben
    PreampCtrlDeviceContext* GetOrCreateDevice(const std::string& deviceId);

    // Gerät-Kontext entfernen wenn keine Instanzen mehr registriert sind
    void CleanupDeviceIfUnused(const std::string& deviceId);

    // Registrierte Instanzen
    struct InstanceEntry
    {
        std::string           deviceId;
        int                   channel;
        bool                  isStereo;
        PreampCtrlOSCCallback callback;
    };

    mutable std::mutex                                      mMutex;
    std::map<std::string, InstanceEntry>                    mInstances;   // key = instanceId
    std::map<std::string, std::unique_ptr<PreampCtrlDeviceContext>> mDevices; // key = deviceId
};

#endif // PreampCtrl_OSCMANAGER_H
