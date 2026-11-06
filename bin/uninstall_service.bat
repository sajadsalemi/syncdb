@echo off
cd /d "%~dp0"
if not exist SyncDB.exe (
  echo SyncDB.exe not found.
  pause
  exit /b 1
)
echo Removing SyncDB Windows service (a UAC prompt will appear)...
start "" "%~dp0SyncDB.exe" /uninstall
