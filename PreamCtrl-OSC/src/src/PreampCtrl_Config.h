#pragma once
#ifndef PreampCtrl_CONFIG_H
#define PreampCtrl_CONFIG_H

// ============================================================================
// PreampCtrl_Config.h
//
// Lädt und überwacht die JSON-Konfigurationsdatei:
//   Windows: %APPDATA%\PreampCtrl-OSC\config.json
//   Mac:     ~/Library/Application Support/PreampCtrl-OSC/config.json
//
// Format:
// {
//   "devices": [
//     {
//       "id":           "stagetech_1",
//       "name":         "Stagetech Rack 1",
//       "ip":           "192.168.1.100",
//       "sendPort":     9999,
//       "receivePort":  9998,
//       "preampCount":  32
//     }
//   ]
// }
// ============================================================================

#include <string>
#include <vector>
#include <map>
#include <functional>
#include <mutex>
#include <thread>
#include <atomic>

// ----------------------------------------------------------------------------
// Gerätedefinition – entspricht einem Eintrag in config.json
// ----------------------------------------------------------------------------
struct PreampCtrlDeviceConfig
{
    std::string id;           // eindeutige Geräte-ID (z.B. "stagetech_1")
    std::string name;         // Anzeigename (z.B. "Stagetech Rack 1")
    std::string ip;           // IP-Adresse
    int         sendPort;     // UDP-Port zum Senden
    int         receivePort;  // UDP-Port zum Empfangen
    int         preampCount;  // Anzahl Preamps (z.B. 32 oder 16)

    // OSC-Pfad-Templates pro Parameter.
    // {ch} wird durch die Kanalnummer ersetzt.
    // Falls leer: Default-Pfad /preamp/{ch}/<param> wird verwendet.
    std::map<std::string, std::string> oscPaths;

    // Hilfsmethode: OSC-Adresse für einen Parameter und Kanal aufbauen
    std::string BuildOscAddress(const std::string& param, int channel) const
    {
        auto it = oscPaths.find(param);
        std::string tmpl = (it != oscPaths.end() && !it->second.empty())
                         ? it->second
                         : "/CON/TXCH{ch}/" + param;
        // {ch} ersetzen
        std::string result;
        size_t pos = 0;
        while (pos < tmpl.size())
        {
            size_t found = tmpl.find("{ch}", pos);
            if (found == std::string::npos)
            {
                result += tmpl.substr(pos);
                break;
            }
            result += tmpl.substr(pos, found - pos);
            result += std::to_string(channel);
            pos = found + 4;
        }
        return result;
    }

    PreampCtrlDeviceConfig()
        : sendPort(9999)
        , receivePort(9998)
        , preampCount(32)
    {}
};

// ----------------------------------------------------------------------------
// PreampCtrl_Config – Singleton
// Lädt die config.json und benachrichtigt bei Änderungen.
// ----------------------------------------------------------------------------
class PreampCtrl_Config
{
public:
    // Singleton-Zugriff
    static PreampCtrl_Config& Instance();

    // Konfiguration laden (beim ersten Aufruf automatisch)
    // Erstellt Beispiel-config.json falls keine vorhanden.
    bool Load();

    // Gibt die Liste aller konfigurierten Geräte zurück (thread-safe)
    std::vector<PreampCtrlDeviceConfig> GetDevices() const;

    // Gibt ein bestimmtes Gerät anhand der ID zurück.
    // Gibt false zurück wenn nicht gefunden.
    bool GetDevice(const std::string& deviceId, PreampCtrlDeviceConfig& outDevice) const;

    // Gibt die IDs aller Geräte zurück (für Dropdown im Plugin)
    std::vector<std::string> GetDeviceIds() const;

    // Gibt den Anzeigenamen aller Geräte zurück (für Dropdown im Plugin)
    std::vector<std::string> GetDeviceNames() const;

    // Gibt die maximale preampCount über alle Geräte zurück
    int GetMaxPreampCount() const;

    // Callback-Typ für Konfigurationsänderungen
    using ChangeCallback = std::function<void()>;

    // Callback registrieren der bei Konfigurationsänderung aufgerufen wird.
    // Wird aus dem File-Watcher-Thread aufgerufen → muss thread-safe sein!
    void RegisterChangeCallback(ChangeCallback callback);

    // Gibt den Pfad zur config.json zurück
    std::string GetConfigFilePath() const;

    // File-Watcher starten/stoppen
    void StartWatcher();
    void StopWatcher();

    // Nicht kopierbar
    PreampCtrl_Config(const PreampCtrl_Config&) = delete;
    PreampCtrl_Config& operator=(const PreampCtrl_Config&) = delete;

private:
    PreampCtrl_Config();
    ~PreampCtrl_Config();

    // Internes Laden aus Datei
    bool LoadFromFile(const std::string& path);

    // Beispiel-config.json erstellen
    bool CreateDefaultConfig(const std::string& path);

    // Plattformspezifischer Config-Verzeichnispfad
    static std::string GetConfigDirectory();

    // File-Watcher-Thread
    void WatcherThreadFunc();

    // Member
    mutable std::mutex              mMutex;
    std::vector<PreampCtrlDeviceConfig> mDevices;
    std::string                     mConfigFilePath;
    ChangeCallback                  mChangeCallback;

    std::thread                     mWatcherThread;
    std::atomic<bool>               mWatcherRunning;

#ifdef _WIN32
    void*                           mWatchHandle;   // HANDLE – void* für plattformunabhängigen Header
#else
    int                             mKqueueFd;      // kqueue fd (Mac)
    int                             mWatchFd;       // watched directory fd
#endif
};

#endif // PreampCtrl_CONFIG_H
