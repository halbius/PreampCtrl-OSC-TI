// ============================================================================
// PreampCtrl_Config.cpp
// ============================================================================

#include "PreampCtrl_Config.h"

#include <fstream>
#include <sstream>
#include <algorithm>
#include <stdexcept>

#ifdef _WIN32
#  include <windows.h>
#  include <shlobj.h>    // SHGetFolderPathA
#else
#  include <sys/types.h>
#  include <sys/stat.h>   // ← das hinzufügen
#  include <sys/event.h> // kqueue (Mac)
#  include <sys/time.h>
#  include <fcntl.h>
#  include <unistd.h>
#  include <pwd.h>
#endif

#ifdef _DEBUG
#  ifdef _WIN32
#    include <windows.h>
#    define DBG(msg) OutputDebugStringA("[PreampCtrl/Config] " msg "\n")
#    define DBGF(buf, fmt, ...) do { snprintf(buf, sizeof(buf), "[PreampCtrl/Config] " fmt "\n", __VA_ARGS__); OutputDebugStringA(buf); } while(0)
#  else
#    include <stdio.h>
#    define DBG(msg) fprintf(stderr, "[PreampCtrl/Config] " msg "\n")
#    define DBGF(buf, fmt, ...) fprintf(stderr, "[PreampCtrl/Config] " fmt "\n", __VA_ARGS__)
#  endif
#else
#  define DBG(msg)
#  define DBGF(buf, fmt, ...)
#endif


// ============================================================================
// Minimaler JSON-Parser (nur für unser Config-Format)
// Keine externe Bibliothek nötig.
// ============================================================================
namespace {

// Whitespace überspringen
static void SkipWhitespace(const std::string& s, size_t& pos)
{
    while (pos < s.size() && (s[pos] == ' ' || s[pos] == '\t' ||
                               s[pos] == '\r' || s[pos] == '\n'))
        ++pos;
}

// String lesen (mit Anführungszeichen)
static std::string ParseString(const std::string& s, size_t& pos)
{
    if (pos >= s.size() || s[pos] != '"')
        throw std::runtime_error("Expected '\"'");
    ++pos;
    std::string result;
    while (pos < s.size() && s[pos] != '"')
    {
        if (s[pos] == '\\') { ++pos; }  // Escape überspringen
        if (pos < s.size()) result += s[pos++];
    }
    if (pos < s.size()) ++pos; // schließendes "
    return result;
}

// Integer lesen
static int ParseInt(const std::string& s, size_t& pos)
{
    size_t start = pos;
    if (pos < s.size() && s[pos] == '-') ++pos;
    while (pos < s.size() && s[pos] >= '0' && s[pos] <= '9') ++pos;
    return std::stoi(s.substr(start, pos - start));
}

// Ein Gerät aus einem JSON-Objekt parsen
static PreampCtrlDeviceConfig ParseDevice(const std::string& s, size_t& pos)
{
    PreampCtrlDeviceConfig dev;

    SkipWhitespace(s, pos);
    if (pos >= s.size() || s[pos] != '{')
        throw std::runtime_error("Expected '{'");
    ++pos;

    while (pos < s.size())
    {
        SkipWhitespace(s, pos);
        if (pos >= s.size()) break;
        if (s[pos] == '}') { ++pos; break; }
        if (s[pos] == ',') { ++pos; continue; }

        // Key lesen
        std::string key = ParseString(s, pos);
        SkipWhitespace(s, pos);
        if (pos < s.size() && s[pos] == ':') ++pos;
        SkipWhitespace(s, pos);

        // Value lesen
        if (s[pos] == '"')
        {
            std::string val = ParseString(s, pos);
            if      (key == "id")   dev.id   = val;
            else if (key == "name") dev.name = val;
            else if (key == "ip")   dev.ip   = val;
        }
        else if (s[pos] == '{')
        {
            // oscPaths-Objekt parsen: { "gain": "/path/{ch}/gain", ... }
            if (key == "oscPaths")
            {
                ++pos; // '{'
                while (pos < s.size())
                {
                    SkipWhitespace(s, pos);
                    if (pos >= s.size() || s[pos] == '}') { ++pos; break; }
                    if (s[pos] == ',') { ++pos; continue; }
                    std::string pkey = ParseString(s, pos);
                    SkipWhitespace(s, pos);
                    if (pos < s.size() && s[pos] == ':') ++pos;
                    SkipWhitespace(s, pos);
                    std::string pval = ParseString(s, pos);
                    dev.oscPaths[pkey] = pval;
                }
            }
            else
            {
                // Unbekanntes Objekt überspringen
                int depth = 1; ++pos;
                while (pos < s.size() && depth > 0)
                {
                    if (s[pos] == '{') ++depth;
                    else if (s[pos] == '}') --depth;
                    ++pos;
                }
            }
        }
        else
        {
            int val = ParseInt(s, pos);
            if      (key == "sendPort")    dev.sendPort    = val;
            else if (key == "receivePort") dev.receivePort = val;
            else if (key == "preampCount") dev.preampCount = val;
        }
    }
    return dev;
}

// Komplette config.json parsen
static std::vector<PreampCtrlDeviceConfig> ParseConfig(const std::string& json)
{
    std::vector<PreampCtrlDeviceConfig> devices;
    size_t pos = 0;

    // Suche "devices" Array
    size_t devPos = json.find("\"devices\"");
    if (devPos == std::string::npos)
        throw std::runtime_error("Key 'devices' not found");

    pos = devPos + 9; // hinter "devices"
    SkipWhitespace(json, pos);
    if (pos < json.size() && json[pos] == ':') ++pos;
    SkipWhitespace(json, pos);
    if (pos >= json.size() || json[pos] != '[')
        throw std::runtime_error("Expected '[' after 'devices'");
    ++pos;

    while (pos < json.size())
    {
        SkipWhitespace(json, pos);
        if (pos >= json.size()) break;
        if (json[pos] == ']') break;
        if (json[pos] == ',') { ++pos; continue; }
        if (json[pos] == '{')
            devices.push_back(ParseDevice(json, pos));
    }
    return devices;
}

} // namespace


// ============================================================================
// Singleton
// ============================================================================
PreampCtrl_Config& PreampCtrl_Config::Instance()
{
    static PreampCtrl_Config instance;
    return instance;
}

PreampCtrl_Config::PreampCtrl_Config()
    : mWatcherRunning(false)
#ifdef _WIN32
    , mWatchHandle(nullptr)
#else
    , mKqueueFd(-1)
    , mWatchFd(-1)
#endif
{
}

PreampCtrl_Config::~PreampCtrl_Config()
{
    StopWatcher();
}


// ============================================================================
// Plattformspezifischer Config-Verzeichnispfad
// ============================================================================
std::string PreampCtrl_Config::GetConfigDirectory()
{
#ifdef _WIN32
    char path[MAX_PATH] = {};
    if (SUCCEEDED(SHGetFolderPathA(nullptr, CSIDL_APPDATA, nullptr, 0, path)))
        return std::string(path) + "\\PreampCtrl-OSC";
    return "C:\\PreampCtrl-OSC";
#else
    // Mac: ~/Library/Application Support/PreampCtrl-OSC
    const char* home = getenv("HOME");
    if (!home)
    {
        struct passwd* pw = getpwuid(getuid());
        if (pw) home = pw->pw_dir;
    }
    if (home)
        return std::string(home) + "/Library/Application Support/PreampCtrl-OSC";
    return "/tmp/PreampCtrl-OSC";
#endif
}

std::string PreampCtrl_Config::GetConfigFilePath() const
{
    return mConfigFilePath;
}


// ============================================================================
// Laden
// ============================================================================
bool PreampCtrl_Config::Load()
{
    std::string dir  = GetConfigDirectory();
#ifdef _WIN32
    mConfigFilePath  = dir + "\\config.json";
    // Verzeichnis erstellen falls nötig
    CreateDirectoryA(dir.c_str(), nullptr);
#else
    mConfigFilePath  = dir + "/config.json";
    mkdir(dir.c_str(), 0755);
#endif

    // Datei vorhanden?
    std::ifstream test(mConfigFilePath);
    if (!test.good())
    {
        DBG("config.json nicht gefunden – erstelle Beispieldatei");
        CreateDefaultConfig(mConfigFilePath);
    }

    bool ok = LoadFromFile(mConfigFilePath);
    if (ok)
    {
        StartWatcher();
    }
    return ok;
}

bool PreampCtrl_Config::LoadFromFile(const std::string& path)
{
    std::ifstream f(path);
    if (!f.is_open())
    {
        DBG("Konnte config.json nicht öffnen");
        return false;
    }

    std::ostringstream ss;
    ss << f.rdbuf();
    std::string json = ss.str();

    try
    {
        auto devices = ParseConfig(json);
        {
            std::lock_guard<std::mutex> lock(mMutex);
            mDevices = devices;
        }

#ifdef _DEBUG
        char buf[128];
        DBGF(buf, "config.json geladen: %zu Gerät(e)", devices.size());
        for (auto& d : devices)
            DBGF(buf, "  Gerät: %s (%s) %s:%d/%d preamps=%d",
                d.id.c_str(), d.name.c_str(), d.ip.c_str(),
                d.sendPort, d.receivePort, d.preampCount);
#endif
        return true;
    }
    catch (const std::exception& e)
    {
#ifdef _DEBUG
        char buf[256];
        DBGF(buf, "Fehler beim Parsen: %s", e.what());
#endif
        // Fallback: leere Geräteliste, Plugin lädt trotzdem
        std::lock_guard<std::mutex> lock(mMutex);
        mDevices.clear();
        return false;
    }
}

bool PreampCtrl_Config::CreateDefaultConfig(const std::string& path)
{
    std::ofstream f(path);
    if (!f.is_open()) return false;

    f << "{\n"
      << "  \"devices\": [\n"
      << "    {\n"
      << "      \"id\":          \"device_1\",\n"
      << "      \"name\":        \"Preamp Device 1\",\n"
      << "      \"ip\":          \"192.168.1.30\",\n"
      << "      \"sendPort\":    9999,\n"
      << "      \"receivePort\": 9998,\n"
      << "      \"preampCount\": 32,\n"
      << "      \"oscPaths\": {\n"
      << "        \"gain\":    \"/CON/TXCH{ch}/Gain\",\n"
      << "        \"phantom\": \"/CON/TXCH{ch}/Phantom\",\n"
      << "        \"generator\":     \"/CON/TXCH{ch}/Generator\",\n"
      << "        \"hpf\":  \"/CON/TXCH{ch}/HPF\",\n"
      << "        \"phase\":   \"/CON/TXCH{ch}/Polarity\",\n"
      << "        \"limiter\":   \"/CON/TXCH{ch}/Limiter\",\n"
      << "      }\n"
      << "    }\n"
      << "  ]\n"
      << "}\n";

    DBG("Beispiel config.json erstellt");
    return true;
}


// ============================================================================
// Geräte abfragen
// ============================================================================
std::vector<PreampCtrlDeviceConfig> PreampCtrl_Config::GetDevices() const
{
    std::lock_guard<std::mutex> lock(mMutex);
    return mDevices;
}

int PreampCtrl_Config::GetMaxPreampCount() const
{
    std::lock_guard<std::mutex> lock(mMutex);
    int maxCount = 32; // Fallback
    for (const auto& d : mDevices)
        if (d.preampCount > maxCount)
            maxCount = d.preampCount;
    return maxCount;
}

bool PreampCtrl_Config::GetDevice(const std::string& deviceId, PreampCtrlDeviceConfig& outDevice) const
{
    std::lock_guard<std::mutex> lock(mMutex);
    for (const auto& d : mDevices)
    {
        if (d.id == deviceId)
        {
            outDevice = d;
            return true;
        }
    }
    return false;
}

std::vector<std::string> PreampCtrl_Config::GetDeviceIds() const
{
    std::lock_guard<std::mutex> lock(mMutex);
    std::vector<std::string> ids;
    for (const auto& d : mDevices)
        ids.push_back(d.id);
    return ids;
}

std::vector<std::string> PreampCtrl_Config::GetDeviceNames() const
{
    std::lock_guard<std::mutex> lock(mMutex);
    std::vector<std::string> names;
    for (const auto& d : mDevices)
        names.push_back(d.name);
    return names;
}


// ============================================================================
// Change Callback
// ============================================================================
void PreampCtrl_Config::RegisterChangeCallback(ChangeCallback callback)
{
    std::lock_guard<std::mutex> lock(mMutex);
    mChangeCallback = callback;
}


// ============================================================================
// File-Watcher
// ============================================================================
void PreampCtrl_Config::StartWatcher()
{
    if (mWatcherRunning) return;

    std::string dir = GetConfigDirectory();

#ifdef _WIN32
    mWatchHandle = FindFirstChangeNotificationA(
        dir.c_str(), FALSE, FILE_NOTIFY_CHANGE_LAST_WRITE);
    if (mWatchHandle == INVALID_HANDLE_VALUE)
    {
        mWatchHandle = nullptr;
        DBG("File-Watcher: konnte Verzeichnis nicht überwachen");
        return;
    }
#else
    mKqueueFd = kqueue();
    mWatchFd  = open(dir.c_str(), O_RDONLY);
    if (mKqueueFd < 0 || mWatchFd < 0)
    {
        DBG("File-Watcher: kqueue/open fehlgeschlagen");
        return;
    }
    struct kevent ev;
    EV_SET(&ev, mWatchFd, EVFILT_VNODE,
           EV_ADD | EV_ENABLE | EV_ONESHOT,
           NOTE_WRITE | NOTE_EXTEND, 0, nullptr);
    kevent(mKqueueFd, &ev, 1, nullptr, 0, nullptr);
#endif

    mWatcherRunning = true;
    mWatcherThread  = std::thread(&PreampCtrl_Config::WatcherThreadFunc, this);
    DBG("File-Watcher gestartet");
}

void PreampCtrl_Config::StopWatcher()
{
    mWatcherRunning = false;

#ifdef _WIN32
    if (mWatchHandle)
    {
        FindCloseChangeNotification(mWatchHandle);
        mWatchHandle = nullptr;
    }
#else
    if (mKqueueFd >= 0) { close(mKqueueFd); mKqueueFd = -1; }
    if (mWatchFd  >= 0) { close(mWatchFd);  mWatchFd  = -1; }
#endif

    if (mWatcherThread.joinable())
        mWatcherThread.join();

    DBG("File-Watcher gestoppt");
}

void PreampCtrl_Config::WatcherThreadFunc()
{
    while (mWatcherRunning)
    {
#ifdef _WIN32
        DWORD result = WaitForSingleObject(mWatchHandle, 500); // 500ms Timeout
        if (result == WAIT_OBJECT_0 && mWatcherRunning)
        {
            // Kurz warten damit die Datei fertig geschrieben ist
            Sleep(200);
            DBG("File-Watcher: Änderung erkannt, lade config.json neu");
            LoadFromFile(mConfigFilePath);

            ChangeCallback cb;
            { std::lock_guard<std::mutex> lock(mMutex); cb = mChangeCallback; }
            if (cb) cb();

            FindNextChangeNotification(mWatchHandle);
        }
#else
        struct timespec timeout = { 0, 500 * 1000 * 1000 }; // 500ms
        struct kevent ev;
        int n = kevent(mKqueueFd, nullptr, 0, &ev, 1, &timeout);
        if (n > 0 && mWatcherRunning)
        {
            usleep(200000); // 200ms warten
            DBG("File-Watcher: Änderung erkannt, lade config.json neu");
            LoadFromFile(mConfigFilePath);

            ChangeCallback cb;
            { std::lock_guard<std::mutex> lock(mMutex); cb = mChangeCallback; }
            if (cb) cb();

            // kqueue neu aufsetzen für nächste Änderung
            close(mWatchFd);
            std::string dir = GetConfigDirectory();
            mWatchFd = open(dir.c_str(), O_RDONLY);
            struct kevent newEv;
            EV_SET(&newEv, mWatchFd, EVFILT_VNODE,
                   EV_ADD | EV_ENABLE | EV_ONESHOT,
                   NOTE_WRITE | NOTE_EXTEND, 0, nullptr);
            kevent(mKqueueFd, &newEv, 1, nullptr, 0, nullptr);
        }
#endif
    }
}
