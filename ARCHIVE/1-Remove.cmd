@echo off & title EdgeChromium : Onedrive : Remote Packages : Features : Capabilities : MetroApps ^& SystemApps Tweaker & color 17
cd /d %~dp0
echo ======================================================
echo -------------- Ensure Admin Privileges ---------------
echo ======================================================
REM  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\System32\cacls.exe" "%SYSTEMROOT%\System32\config\system"  
REM --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    goto UACPrompt) else ( goto gotAdmin )  
:UACPrompt  
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
"%temp%\getadmin.vbs"  
exit /B
:gotAdmin
echo Got Admin Access
%SystemRoot%\System32\attrib -r "%UserProfile%\Desktop\*.*"
echo ======================================================
echo.
echo ======================================================
echo --- Remove EdgeChromium
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v NoRemove /f 2>nul
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v NoRemove /f 2>nul
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v NoRemove /f 2>nul
reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1 /f 2>nul
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
echo.
echo --- Remove Packages
Privacy\tweaker /o /c Server-Help /r
Privacy\tweaker /o /c Microsoft-Windows-Help /r
Privacy\tweaker /o /c Microsoft-Windows-RDC /r
Privacy\tweaker /o /c RemoteDesktopServices /r
Privacy\tweaker /o /c Microsoft-Windows-RemoteFX /r
Privacy\tweaker /o /c Microsoft-Windows-Remotefx /r
Privacy\tweaker /o /c microsoft-windows-RemoteFX /r
Privacy\tweaker /o /c Microsoft-Windows-RemoteAssistance /r
Privacy\tweaker /o /c Microsoft-OneCore-RemoteDesktopServices /r
Privacy\tweaker /o /c Microsoft-OneCoreUap-RemoteDesktopServices /r
Privacy\tweaker /o /c Microsoft-Windows-RemoteDesktop /r
Privacy\tweaker /o /c Microsoft-Windows-RemoteDesktopServices /r
Privacy\tweaker /o /c Microsoft-Windows-Virtualization-RemoteFX /r
Privacy\tweaker /o /c Microsoft-Windows-SearchEngine /r
Privacy\tweaker /o /c Microsoft-Windows-OneDrive /r
echo.
echo --- Disable Windows Features
Powershell -Command "Get-WindowsOptionalFeature -Online | Where-Object {$_.State -eq 'Enabled' } | Out-GridView -PassThru -Title 'Select Windows Optional Features to Disable' | Disable-WindowsOptionalFeature -Online -NoRestart -Verbose"
echo.
echo --- Remove Windows Capabilities
Powershell -Command "Get-WindowsCapability -Online | Where-Object {$_.State -eq 'Installed' } | Out-GridView -PassThru -Title 'Select Windows Capabilities to Remove' | Remove-WindowsCapability -Online -Verbose"
echo.
echo --- Remove MetroApps
Dism /Online /Set-NonRemovableAppPolicy /PackageFamily:* /NonRemovable:0
Powershell -Command "Set-NonRemovableAppsPolicy -Online -PackageFamilyName * -NonRemovable 0 -Verbose"
PowerShell -Command "Get-AppXProvisionedPackage -Online | Out-GridView -PassThru -Title 'Remove Windows Apps' | Remove-AppXProvisionedPackage -Online -AllUsers -ErrorAction SilentlyContinue -Verbose"
echo.
echo --- Remove SystemApps
Privacy\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn ace -ace "n:Administrators;p:full"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 4 -Verbose"
Powershell -Command "Stop-Service -Name StateRepository -Force -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
Privacy\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn ace -ace "n:Administrators;p:full"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn ace -ace "n:Administrators;p:full"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn ace -ace "n:Administrators;p:full"
IF EXIST "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb" del /f /s /q /a "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 2 -Verbose"
Powershell -Command "Start-Service -Name StateRepository -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
TASKLIST /svc /fi "services eq StateRepository"
TASKKILL /F /FI "services eq StateRepository" /T
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "DROP TRIGGER IF EXISTS TRG_AFTER_UPDATE_Package_SRJournal;"
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "DROP TRIGGER IF EXISTS TRG_AFTERUPDATE_Package_SRJournal;"
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "UPDATE Package SET IsInBox=0 WHERE IsInBox=1;"
Powershell -Command "Get-AppxPackage -AllUsers | Out-GridView -PassThru -Title 'Remove System Apps' | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue -Verbose"
echo ======================================================
echo --- Recheck SystemApps Removal [IF Some Apps Are Left Before This Time They Will be Removed]
Privacy\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn ace -ace "n:Administrators;p:full"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 4 -Verbose"
Powershell -Command "Stop-Service -Name StateRepository -Force -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
Privacy\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn ace -ace "n:Administrators;p:full"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn ace -ace "n:Administrators;p:full"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn ace -ace "n:Administrators;p:full"
IF EXIST "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb" del /f /s /q /a "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 2 -Verbose"
Powershell -Command "Start-Service -Name StateRepository -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
TASKLIST /svc /fi "services eq StateRepository"
TASKKILL /F /FI "services eq StateRepository" /T
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "DROP TRIGGER IF EXISTS TRG_AFTER_UPDATE_Package_SRJournal;"
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "DROP TRIGGER IF EXISTS TRG_AFTERUPDATE_Package_SRJournal;"
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "UPDATE Package SET IsInBox=0 WHERE IsInBox=1;"
Powershell -Command "Get-AppxPackage -AllUsers | Out-GridView -PassThru -Title 'Remove System Apps' | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue -Verbose"
echo ======================================================
echo ********************** The End ***********************
shutdown /r /f /t 60
del %~f0