@cls
@echo off
>nul chcp 437
title Specialize Stage Installer
setLocal EnableExtensions EnableDelayedExpansion

cd /d "%~dp0"

rem Run Once commands

:: [1] Drivers install
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f /v "1" /t Reg_SZ /d "cmd /c call %windir%\Drivers\installer.cmd"

:: [2] Auto configurator
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f /v "2" /t Reg_SZ /d "cmd /c call %windir%\temp\Windows_Auto_Configure.cmd"

:: [3] After ... after ... stage
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f /v "3" /t Reg_SZ /d "cmd /c call %windir%\temp\after_logon.cmd"

:: [4] Set Screen to Max Frequency
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f /v "4" /t Reg_SZ /d "cmd /c call %windir%\temp\Set_Max_Frequency.cmd"

rem Disable any manual network connection
powershell -noprofile -executionpolicy bypass -command "Get-NetAdapter | Disable-NetAdapter -Confirm:$false"

rem disable logging
REM Auditpol /set /category:* /Success:disable /failure:disable
REM for /f "usebackq tokens=1*" %%a in (`2^> nul reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Enabled" ^| findstr "HKEY"`) do reg add "%%a %%b" /f /v "Enabled" /t REG_DWORD /d 0
REM for /f "usebackq tokens=1*" %%a in (`2^> nul reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Start"   ^| findstr "HKEY"`) do reg add "%%a %%b" /f /v "Start"   /t REG_DWORD /d 0
REM reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Start" /t REG_DWORD /d "1" /f

rem prevent chat auto install
rem https://learn.microsoft.com/en-us/troubleshoot/windows-client/application-management/managing-teams-chat-icon-windows-11
rem https://learn.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-configurechatautoinstall
reg add "hklm\Software\Microsoft\Windows\CurrentVersion\Communications" /f /v ConfigureChatAutoInstall /t reg_dword /d 0x0

rem set WU to disabled mode
reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v NoAutoUpdate /d 0x1 /t REG_DWORD
reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v AUOptions /d 0x2 /t REG_DWORD

rem Disable Bitlocker and Encrypting File System (EFS)
rem https://learn.microsoft.com/en-us/windows-hardware/design/device-experiences/oem-bitlocker
rem https://learn.microsoft.com/en-us/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10

sc config EFS start=disabled
sc config BDESVC start=disabled
fsutil behavior set disableencryption 1
reg add "HKLM\SYSTEM\CurrentControlSet\Policies" /f /v NtfsDisableEncryption /d 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\BitLocker" /f /v PreventDeviceEncryption /t REG_DWORD /d 1
reg add "HKLM\Software\Policies\Microsoft\Windows\EnhancedStorageDevices" /f /v PreventDeviceEncryption /t REG_DWORD /d 1
reg add "HKLM\Software\Policies\Microsoft\Windows\EnhancedStorageDevices" /f /v TCGSecurityActivationDisabled /t REG_DWORD /d 1

rem disable Defender [services]
powershell -nop -c "gwmi Win32_BaseService|where Name -Match 'WinDefend|Sense|WdBoot|WdFilter|WdNisSvc|WdNisDrv|wscsvc'|foreach {$_.StopService()}"
wmic path Win32_Service where(Name Like '%%%%WinDefend%%%%' OR Name Like '%%%%Sense%%%%' OR Name Like '%%%%WdBoot%%%%' OR Name Like '%%%%WdFilter%%%%' OR Name Like '%%%%WdNisSvc%%%%' OR Name Like '%%%%WdNisDrv%%%%' OR Name Like '%%%%wscsvc%%%%') call stopService

for %%$ IN (WinDefend, WdBoot, WdFilter, Sense, WdNisDrv, WdNisSvc) do (
  net stop %%$  
  sc stop %%$
  sc config %%$ start=disabled
)

rem disable Defender [registry]
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender" /f /v DisableAntiSpyware /t REG_DWORD /d 1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /f /v TamperProtection /t REG_DWORD /d 0
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v DisableAntiSpyware /t REG_DWORD /d 1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /f /v DisableAntiSpyware /t REG_DWORD /d 1

rem auto expend vhdx (thanks acer 500)
rem https://forums.mydigitallife.net/threads/86132/page-2 --> POST 27
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FsDepends\Parameters" /f /v VirtualDiskExpandOnMount /t reg_dword /d 4
reg add "HKLM\SYSTEM\ControlSet001\Services\FsDepends\Parameters"     /f /v VirtualDiskExpandOnMount /t reg_dword /d 4

rem Disable inbox apps from deploy
rem Credit belong to abbodi1406
rem https://forums.mydigitallife.net/threads/msmg-toolkit.50572/page-52#post-1307366

set key=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications
FOR %%i IN (
MicrosoftEdge
MicrosoftEdgeDevToolsClient
AppRep.ChxApp
BioEnrollment
Cortana
ContentDeliveryManager
HolographicFirstRun
Microsoft.ECApp
narratorquickstart
OOBENetworkCaptivePortal
OOBENetworkConnectionFlow
ParentalControls
PeopleExperienceHost
PPIProjection
PrintDialog
SecondaryTileExperience
SecureAssessmentBrowser
XboxGameCallableUI
Windows.CBS
holocamera
holoitemplayerapp
HoloShell
Holograms
teams
) DO (
  FOR /F %%a IN ('reg query "%key%" /f %%i /k 2^>nul ^| find /i "InboxApplications"') DO IF NOT ERRORLEVEL 1 (reg delete %%a /f 2>nul)
)

rem aveyo upgraded privacy settings ... 
call must_have_privacy_policies_for_windows.cmd

timeout 4 /nobreak
exit