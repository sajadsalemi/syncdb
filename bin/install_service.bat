@echo off
cd /d "%~dp0"
if not exist SyncDB.exe (
  echo SyncDB.exe not found. Run build.bat first.
  pause
  exit /b 1
)
echo Installing SyncDB Windows service (a UAC prompt will appear)...
echo Jobs/connections are read from: %APPDATA%\SyncDB\config.json
start "" "%~dp0SyncDB.exe" /install
