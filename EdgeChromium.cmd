@setlocal DisableDelayedExpansion
@echo off
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v NoRemove /f 2>nul
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v NoRemove /f 2>nul
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v NoRemove /f 2>nul
reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1 /f 1>nul
echo.
for /D %%i in ("%LocalAppData%\Microsoft\Edge SxS\Application\*") do if exist "%%i\installer\setup.exe" (
echo Canary...
start "" /w "%%i\installer\setup.exe" --uninstall --msedge-sxs --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%LocalAppData%\Microsoft\Edge Internal\Application\*") do if exist "%%i\installer\setup.exe" (
echo Internal...
start "" /w "%%i\installer\setup.exe" --uninstall --msedge-internal --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%LocalAppData%\Microsoft\Edge Dev\Application\*") do if exist "%%i\installer\setup.exe" (
echo Dev...
start "" /w "%%i\installer\setup.exe" --uninstall --msedge-dev --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%LocalAppData%\Microsoft\Edge Beta\Application\*") do if exist "%%i\installer\setup.exe" (
echo Beta...
start "" /w "%%i\installer\setup.exe" --uninstall --msedge-beta --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%LocalAppData%\Microsoft\Edge\Application\*") do if exist "%%i\installer\setup.exe" (
echo Stable...
start "" /w "%%i\installer\setup.exe" --uninstall --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%LocalAppData%\Microsoft\EdgeWebView\Application\*") do if exist "%%i\installer\setup.exe" (
echo WebView2 Runtime...
start "" /w "%%i\installer\setup.exe" --uninstall --msedgewebview --verbose-logging --force-uninstall --delete-profile
)

for /D %%i in ("%ProgramFiles(x86)%\Microsoft\EdgeWebView\Application\*") do if exist "%%i\installer\setup.exe" (
echo WebView2 Runtime...
start "" /w "%%i\installer\setup.exe" --uninstall --msedgewebview --system-level --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%ProgramFiles(x86)%\Microsoft\Edge\Application\*") do if exist "%%i\installer\setup.exe" (
echo Stable...
start "" /w "%%i\installer\setup.exe" --uninstall --system-level --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%ProgramFiles(x86)%\Microsoft\Edge Beta\Application\*") do if exist "%%i\installer\setup.exe" (
echo Beta...
start "" /w "%%i\installer\setup.exe" --uninstall --msedge-beta --system-level --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%ProgramFiles(x86)%\Microsoft\Edge Dev\Application\*") do if exist "%%i\installer\setup.exe" (
echo Dev...
start "" /w "%%i\installer\setup.exe" --uninstall --msedge-dev --system-level --verbose-logging --force-uninstall --delete-profile
)
for /D %%i in ("%ProgramFiles(x86)%\Microsoft\Edge Internal\Application\*") do if exist "%%i\installer\setup.exe" (
echo Internal...
start "" /w "%%i\installer\setup.exe" --uninstall --msedge-internal --system-level --verbose-logging --force-uninstall --delete-profile
)

del /f /q "%AppData%\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge*.lnk" 2>nul
del /f /q "%SystemRoot%\System32\config\systemprofile\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge*.lnk" 2>nul
