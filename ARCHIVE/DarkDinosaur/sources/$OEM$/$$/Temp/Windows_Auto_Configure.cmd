<!-- : Begin batch script

@goto :begin

' when import registry files
' do not copy the comments with ';' key
' otherwise vb engine fail ...

' useful tweaks
' https://github.com/TairikuOokami/Windows/

:begin
@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion

set X=Y || Based ON 
set Y=X || [ G.P. Catalog ]	 admx.help
set X=Y || [ Answers ]		 stackoverflow, SuperUser
set Y=X || [ Guides ]		 windowscentral, adamtheautomator, tenforums, top-password, winaero
set X=Y || [ Script ]		 bau, hearywarlot, freddie-o, geepnozeex, abbodi1406, crypticus, milkom, (\_/)^(\_/), hydropepon, St1ckys, TairikuOokami

set Apps=^
Getstarted;549981C3F5F10;Recorder;Alarms;Phone;Films;Music;^
People;Automate;Sketch;XBox;Maps;Wallet;Weather;Reality;^
onenote;Bing;Zune;Notes;Todo;OfficeHub;Tips;clipchamp;Family;QuickAssist

set "Policies=HKLM\SOFTWARE\Policies"
set "script_file=%windir%\Temp\script.ps1"

cd /d "%~dp0"
title Windows Auto Configure

rem Run as administrator, AveYo: ps\VBS version
>nul fltmc || ( set "_=call "%~dpfx0" %*"
	powershell -nop -c start cmd -args '/d/x/r',$env:_ -verb runas || (
	mshta vbscript:execute^("createobject(""shell.application"").shellexecute(""cmd"",""/d/x/r "" &createobject(""WScript.Shell"").Environment(""PROCESS"")(""_""),,""runas"",1)(window.close)"^))|| (
	cls & echo:& echo Script elavation failed& pause)
	exit )

>nul 2>&1 where powershell || (
	echo.
	echo Missing Critical files [powershell.exe]
	echo.
	pause
	exit /b
)

whoami|>nul findstr /i /c:"nt authority\system" && (
	echo.
	title Windows Auto Configure ~ TrustedInstaller
	call :RunAtSystemLevel
	timeout 6
	exit
)
	
echo:
echo ** Important ^^!
echo ** If you having problem with WUMT later,
echo ** Start it once as TI user.
echo ** [left click -^> run as TI]
echo:

2>nul powershell -nop -c "Add-MpPreference -ExclusionPath '%~dpnx0'"

echo == Remove UWP Apps
call :export AppX_admin > %script_file%
>nul 2>&1 powershell -noprofile -executionpolicy bypass -file %script_file%

echo == Install Sandbox, Hyper-V Features
>nul 2>&1 DISM /Online /Enable-Feature /All /Quiet /NoRestart /FeatureName:Microsoft-Hyper-V
>nul 2>&1 DISM /Online /Enable-Feature /All /Quiet /NoRestart /FeatureName:Containers-DisposableClientVM

echo == Install WMIC, VBSCRIPT Capabilities
>nul 2>&1 powershell -noprofile -executionpolicy bypass -command "Get-WindowsCapability -Online | ? {$_.Name -Match 'Wmic|VBSCRIPT' -And $_.State -eq 'NotPresent'} | Add-WindowsCapability -online"

echo == Restore F8 Legacy Boot
>nul 2>&1 bcdedit /set {bootmgr} displaybootmenu yes
>nul 2>&1 bcdedit /set {current} bootmenupolicy Legacy
>nul 2>&1 bcdedit /timeout 5

echo == Restore Windows 10 taskbar
>nul 2>&1 REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v TaskbarAl /t REG_DWORD /d 0

echo == Remove Windows 11 Nag screen || by avayo AKA BAU
>nul 2>&1 reg add "HKCU\Control Panel\UnsupportedHardwareNotificationCache" /v "SV1" /d 0 /t reg_dword /f
>nul 2>&1 reg add "HKCU\Control Panel\UnsupportedHardwareNotificationCache" /v "SV2" /d 0 /t reg_dword /f
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetReleaseVersion" /d 1 /t reg_dword /f
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetReleaseVersionInfo" /d 25H1 /f

echo == Show Hidden Files ^& File Extensions
set Key="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
>nul 2>&1 REG ADD !key! /f /v Hidden /t REG_DWORD /d 1
>nul 2>&1 REG ADD !key! /f /v SuperHidden /t REG_DWORD /d 1
>nul 2>&1 REG ADD !key! /f /v ShowSuperHidden /t REG_DWORD /d 1

set Key="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
>nul 2>&1 REG ADD !key! /f /v HideFileExt /t REG_DWORD /d 0

echo == Disable MSDT URL protocol \
echo    Troubleshooting Wizards
>nul 2>&1 REG delete HKEY_CLASSES_ROOT\ms-msdt /f
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics" /f /v EnableDiagnostics /t REG_DWORD /d 0x0

echo == Show Search, Tray Icons
>nul 2>&1 REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v EnableAutoTray /t REG_DWORD /d 0
>nul 2>&1 REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v SearchboxTaskbarMode /t REG_DWORD /d 1

echo == Remove Shortcut Name Extension
>nul 2>&1 REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v link /T REG_Binary /D 00000000
>nul 2>&1 REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates" /f /V ShortcutNameTemplate

echo == Hide Chat, Task View, Cortina, Feeds
echo    Widgets, Recycle Bin Icons, News
>nul 2>&1 REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v ShowTaskViewButton /t REG_DWORD /d 0
>nul 2>&1 REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v TaskbarDa /t REG_DWORD /d 0
>nul 2>&1 REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v TaskbarMn /t REG_DWORD /d 0
>nul 2>&1 REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /f /v {645FF040-5081-101B-9F08-00AA002F954E} /t REG_DWORD /d 1
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /f /v AllowNewsAndInterests /t REG_DWORD /d 0
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Chat" /f /v ChatIcon /t REG_DWORD /d 3
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /f /v EnableFeeds /t REG_DWORD /d 0
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /f /v HeadlinesOnboardingComplete /t REG_DWORD /d 0
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowCortana /t REG_DWORD /d 0
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /f /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v HideSCAMeetNow /t REG_DWORD /d 1
>nul powershell -noprofile -executionpolicy bypass -command "Get-AppxPackage -Name *WebExperience* | Foreach {Remove-AppxPackage $_.PackageFullName}"
>nul powershell -noprofile -executionpolicy bypass -command "Get-ProvisionedAppxPackage -Online | Where-Object { $_.PackageName -match 'WebExperience' } | ForEach-Object { Remove-ProvisionedAppxPackage -Online -PackageName $_.PackageName }"

REM echo == Custom Scheme ## Terminal
REM set TerminalPackageFamilyName=
REM set "Terminal_cmd=powershell -noprofile -executionpolicy bypass -command "Get-AppxPackage -Name *Microsoft.WindowsTerminal*" ^| find /i "PackageFamilyName""
REM for /f "tokens=2 delims=:" %%g in ('%Terminal_cmd%') do set "TerminalPackageFamilyName=%%g"
REM if defined TerminalPackageFamilyName (
	REM tasklist | >nul find /i "WindowsTerminal.exe" || (
		REM >nul powershell start shell:AppsFolder\!TerminalPackageFamilyName:~1!^^!App -Verb RunAs -WindowStyle hidden
		REM >nul 2>&1 timeout 5
		REM >nul 2>&1 TASKKILL /im WindowsTerminal.exe
	REM )
REM )
REM >nul 2>&1 pushd "%LOCALAPPDATA%\packages" && (
	REM >nul 2>&1 dir /a/b Microsoft.WindowsTerminal* && (
		REM for /f "tokens=*" %%# in ('dir /a/b Microsoft.WindowsTerminal*') do (
			REM call :export json > "%WINDIR%\Temp\settings.json"
			REM >nul copy /y "%WINDIR%\Temp\settings.json" "%LOCALAPPDATA%\packages\%%#\LocalState\settings.json
		REM )
	REM )
	REM popd
REM )

echo == Custom Scheme ## PowerCfg
set JOB=B64DEC
set ID=scheme.zip
set Guid=1c80bbe2-1ff5-1dd5-1f10-1da1c150d66a

>nul 2>&1 CSCRIPT //nologo "%~f0?.wsf" //job:!JOB!
CSCRIPT //nologo "%~f0?.wsf" //job:!JOB! /ID:"!ID!" /InFile:"%~f0" /OutFile:"%WINDIR%\Temp\!ID!"
timeout 2 >nul
>nul 2>&1 powershell -nop -ep bypass -c $src=Join-Path $env:windir '\temp\scheme.zip';$tar=Join-Path $env:windir 'temp\'; Expand-Archive $src $tar -Force
>nul 2>&1 powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
>nul 2>&1 powercfg /delete !Guid!
>nul 2>&1 powercfg /import "%WINDIR%\Temp\scheme.pow" !Guid!
>nul 2>&1 del /q "%WINDIR%\Temp\scheme.pow"
>nul 2>&1 del /q "%WINDIR%\Temp\scheme.zip"

REM echo Power button and lid settings overview
REM echo https://docs.microsoft.com/en-us/windows-hardware/customize/power-settings/power-button-and-lid-settings

REM echo Display idle timeout
REM echo https://docs.microsoft.com/en-us/windows-hardware/customize/power-settings/display-settings-display-idle-timeout

REM echo Sleep idle timeout
REM echo https://docs.microsoft.com/en-us/windows-hardware/customize/power-settings/sleep-settings-sleep-idle-timeout

>nul 2>&1 powercfg /setdcvalueindex !Guid! SUB_VIDEO 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
>nul 2>&1 powercfg /setacvalueindex !Guid! SUB_VIDEO 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
>nul 2>&1 powercfg /setdcvalueindex !Guid! SUB_SLEEP 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
>nul 2>&1 powercfg /setacvalueindex !Guid! SUB_SLEEP 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
>nul 2>&1 powercfg /setdcvalueindex !Guid! SUB_BUTTONS 99ff10e7-23b1-4c07-a9d1-5c3206d741b4 0
>nul 2>&1 powercfg /setacvalueindex !Guid! SUB_BUTTONS 99ff10e7-23b1-4c07-a9d1-5c3206d741b4 0
>nul 2>&1 powercfg /setdcvalueindex !Guid! SUB_BUTTONS 5ca83367-6e45-459f-a27b-476b1d01c936 0
>nul 2>&1 powercfg /setacvalueindex !Guid! SUB_BUTTONS 5ca83367-6e45-459f-a27b-476b1d01c936 0
>nul 2>&1 powercfg /setdcvalueindex !Guid! SUB_BUTTONS 7648efa3-dd9c-4e3e-b566-50f929386280 3
>nul 2>&1 powercfg /setacvalueindex !Guid! SUB_BUTTONS 7648efa3-dd9c-4e3e-b566-50f929386280 3
>nul 2>&1 powercfg /setdcvalueindex !Guid! SUB_BUTTONS 833a6b62-dfa4-46d1-82f8-e09e34d029d6 0
>nul 2>&1 powercfg /setacvalueindex !Guid! SUB_BUTTONS 833a6b62-dfa4-46d1-82f8-e09e34d029d6 0
>nul 2>&1 powercfg /setdcvalueindex !Guid! SUB_BUTTONS 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
>nul 2>&1 powercfg /setacvalueindex !Guid! SUB_BUTTONS 96996bc0-ad50-47ec-923b-6f41874dd9eb 0

set Key="%Policies%\Microsoft\Power\PowerSettings\3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e"
>nul 2>&1 REG ADD !Key! /f /v ACSettingIndex /t REG_DWORD /d 0
>nul 2>&1 REG ADD !Key! /f /v DCSettingIndex /t REG_DWORD /d 0

set Key="%Policies%\Microsoft\Power\PowerSettings\29f6c1db-86da-48c5-9fdb-f2b67b1f44da"
>nul 2>&1 REG ADD !Key! /f /v ACSettingIndex /t REG_DWORD /d 0
>nul 2>&1 REG ADD !Key! /f /v DCSettingIndex /t REG_DWORD /d 0

set Key="%Policies%\Microsoft\Power\PowerSettings\99ff10e7-23b1-4c07-a9d1-5c3206d741b4"
>nul 2>&1 REG ADD !Key! /f /v ACSettingIndex /t REG_DWORD /d 0
>nul 2>&1 REG ADD !Key! /f /v DCSettingIndex /t REG_DWORD /d 0

set Key="%Policies%\Microsoft\Power\PowerSettings\5CA83367-6E45-459F-A27B-476B1D01C936"
>nul 2>&1 REG ADD !Key! /f /v ACSettingIndex /t REG_DWORD /d 0
>nul 2>&1 REG ADD !Key! /f /v DCSettingIndex /t REG_DWORD /d 0

set Key="%Policies%\Microsoft\Power\PowerSettings\7648EFA3-DD9C-4E3E-B566-50F929386280"
>nul 2>&1 REG ADD !Key! /f /v ACSettingIndex /t REG_DWORD /d 3
>nul 2>&1 REG ADD !Key! /f /v DCSettingIndex /t REG_DWORD /d 3

set Key="%Policies%\Microsoft\Power\PowerSettings\833a6b62-dfa4-46d1-82f8-e09e34d029d6"
>nul 2>&1 REG ADD !Key! /f /v ACSettingIndex /t REG_DWORD /d 0
>nul 2>&1 REG ADD !Key! /f /v DCSettingIndex /t REG_DWORD /d 0

set Key="%Policies%\Microsoft\Power\PowerSettings\96996bc0-ad50-47ec-923b-6f41874dd9eb"
>nul 2>&1 REG ADD !Key! /f /v ACSettingIndex /t REG_DWORD /d 0
>nul 2>&1 REG ADD !Key! /f /v DCSettingIndex /t REG_DWORD /d 0

>nul 2>&1 powercfg /setactive !Guid!

echo == Disable UAC, Sleep, hibernate,
echo    Fast Boot, Power Throttling
>nul 2>&1 powercfg.exe /hibernate off
>nul 2>&1 reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /f /v "PowerThrottling" /t REG_DWORD /d 0x1
>nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\Windows\System" /f /v HiberbootEnabled /d 0x0 /t reg_dword
>nul 2>&1 REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /f /v EnableLUA /t REG_DWORD /d 0
>nul 2>&1 reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /f /v HiberbootEnabled /d 0x0 /t reg_dword
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /f /v ShowSleepOption /t REG_DWORD /d 0

echo == Disable System Restore
>nul 2>&1 vssadmin delete shadows /all /Quiet
>nul powershell Disable-ComputerRestore %SystemDrive%

set Key="HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore"
>nul 2>&1 REG ADD !Key! /f /v DisableSR /t REG_DWORD /d 1
>nul 2>&1 REG ADD !Key! /f /v DisableConfig /t REG_DWORD /d 1

set Key="%Policies%\Microsoft\Windows NT\SystemRestore"
>nul 2>&1 REG ADD !Key! /f /v DisableSR /t REG_DWORD /d 1
>nul 2>&1 REG ADD !Key! /f /v DisableConfig /t REG_DWORD /d 1

:: new add-ins from :: [DISCUSSION] OS Tweaking by (\_/)^(\_/)
:: https://forums.mydigitallife.net/threads/discussion-os-tweaking.84618/

echo == Disable Administrative shares
>nul 2>&1 reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "AutoShareWks" /t reg_DWORD /d 0
>nul 2>&1 reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "AutoShareServer" /t reg_DWORD /d 0
>nul 2>&1 net share * /delete

echo == Disable Reserved Storage
>nul 2>&1 DISM /online /Set-ReservedStorageState /State:Disabled
>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "MiscPolicyInfo" /t reg_DWORD /d 2
>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t reg_DWORD /d 0
>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "PassedPolicy" /t reg_DWORD /d 0

echo == Set Privacy Settings
>nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\Messenger\Client" /f /v "CEIP" /t REG_DWORD /d "2"
>nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d "0"
>nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /f /v "AITEnable" /t REG_DWORD /d "0"
>nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /f /v "DisableInventory" /t REG_DWORD /d "1"
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /f /v "DisableLocation" /t REG_DWORD /d 00000001
>nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\Internet Explorer\SQM" /f /v "DisableCustomerImprovementProgram" /t REG_DWORD /d "0"

call :export LZkkk > %script_file%
>nul 2>&1 powershell -noprofile -executionpolicy bypass -file %script_file%

:: reg delete not work here ...
call :export HJGH > "%WINDIR%\Temp\settings.reg"
>nul 2>&1 reg import "%WINDIR%\Temp\settings.reg"
>nul 2>&1 rd/s/q "%windir%\System32\Tasks\Microsoft\Windows\Application Experience"
>nul 2>&1 rd/s/q "%windir%\System32\Tasks\Microsoft\Windows\Customer Experience Improvement Program"

set "AppPrivacy=HKLM\Software\Policies\Microsoft\Windows\AppPrivacy"
set "ConsentStore=Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore"

set APP_PREM=broadFileSystemAccess^
,microphone^
,webcam^
,phoneCall^
,userNotificationListener^
,phoneCallHistory^
,graphicsCaptureProgrammatic^
,graphicsCaptureWithoutBorder^
,userAccountInformation^
,location^
,userDataTasks^
,TASKS^
,radios^
,chat^
,email^
,contacts^
,bluetoothSync^
,appointments^
,appDiagnostics^
,documentsLibrary^
,picturesLibrary^
,videosLibrary

set APP_ACCESS=AccountInfo^
,GazeInput^
,Microphone^
,CallHistory^
,GetDiagnosticInfo^
,Location^
,Messaging^
,Motion^
,Notifications^
,Tasks^
,Radios^
,Phone^
,GraphicsCaptureProgrammatic^
,GraphicsCaptureWithoutBorder^
,email^
,contacts^
,SyncWithDevices^
,Calendar^
,GetDiagnosticInfo^
,documentsLibrary^
,picturesLibrary^
,videosLibrary

for %%$ in (%APP_PREM%) do (
  >nul 2>&1 reg add "HKCU\%ConsentStore%\%%$" /f /v "Value" /t "REG_SZ" /d "Deny"
  >nul 2>&1 reg add "HKLM\%ConsentStore%\%%$" /f /v "Value" /t "REG_SZ" /d "Deny"
)
for %%$ in (%APP_ACCESS%) do (
  >nul 2>&1 reg add "%AppPrivacy%" /f /v "LetAppsAccess%%$" /t "REG_DWORD" /d "0x0"
)
for %%$ in (ActivateWithVoice,ActivateWithVoiceAboveLock) do (
  >nul 2>&1 reg add "%AppPrivacy%" /f /v "LetApps%%$" /t "REG_DWORD" /d "0x0"
)

echo == Set Screen saver
set Key="HKCU\Control Panel\Desktop"
>nul 2>&1 REG ADD !Key! /f /v SCRNSAVE.EXE /t REG_SZ /d C:\Windows\system32\Ribbons.scr
>nul 2>&1 REG ADD !Key! /f /v ScreenSaveActive /t REG_SZ /d 1
>nul 2>&1 REG ADD !Key! /f /v ScreenSaveTimeOut /t REG_SZ /d 300
>nul 2>&1 REG ADD !Key! /f /v ScreenSaverIsSecure /t REG_SZ /d 1

echo == Set Scaling to 120%%
>nul 2>&1 REG ADD "HKCU\Control Panel\Desktop" /f /v LogPixels /t REG_DWORD /d 00000115
>nul 2>&1 REG ADD "HKCU\Control Panel\Desktop" /f /v Win8DpiScaling /t REG_DWORD /d 00000001

echo == Set Page file to 2048MB
call :export mson > %script_file%
>nul 2>&1 powershell -noprofile -executionpolicy bypass -file %script_file%

echo == Set Windows Updates to Notification Mode
set WA="HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate"
set AU="HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
>nul 2>&1 reg delete %WA% /f
>nul 2>&1 REG ADD %WA% /f /v SetRestartWarningSchd /t REG_DWORD /d 0
>nul 2>&1 REG ADD %WA% /f /v SetActiveHours /t REG_DWORD /d 1
>nul 2>&1 REG ADD %WA% /f /v ActiveHoursStart /t REG_DWORD /d 5
>nul 2>&1 REG ADD %WA% /f /v ActiveHoursEnd /t REG_DWORD /d 23
>nul 2>&1 REG ADD %WA% /f /v SetAutoRestartNotificationConfig /t REG_DWORD /d 0
>nul 2>&1 REG ADD %WA% /f /v SetAutoRestartNotificationDisable /t REG_DWORD /d 1
>nul 2>&1 REG ADD %WA% /f /v SetAutoRestartRequiredNotificationDismissal /t REG_DWORD /d 0
>nul 2>&1 REG ADD %WA% /f /v SetUpdateNotificationLevel /t REG_DWORD /d 1
>nul 2>&1 REG ADD %WA% /f /v UpdateNotificationLevel /t REG_DWORD /d 1
>nul 2>&1 REG ADD %AU% /f /v NoAutoUpdate /t REG_DWORD /d 1 || '0' to Allow Notification - '1' to no Check at all
>nul 2>&1 REG ADD %AU% /f /v AUOptions /t REG_DWORD /d 2
>nul 2>&1 REG ADD %AU% /f /v NoAUShutdownOption /t REG_DWORD /d 1
>nul 2>&1 REG ADD %AU% /f /v NoAUAsDefaultShutdownOption /t REG_DWORD /d 1
>nul 2>&1 REG ADD %AU% /f /v AlwaysAutoRebootAtScheduledTime /t REG_DWORD /d 0

echo == Set Print button Open Screen Snipping
>nul 2>&1 REG ADD "HKCU\Control Panel\Keyboard" /f /v PrintScreenKeyForSnippingEnabled /t REG_DWORD /d 1

echo == Stop Un-necessary / Telemetry services
for %%$ in (wsearch,cisvc,SysMain,DiagTrack) do (
  >nul 2>&1 sc stop "%%$"
  >nul 2>&1 sc config "%%$" start=disabled
)
call :export kson > %script_file%
>nul 2>&1 powershell -noprofile -executionpolicy bypass -file %script_file%
>nul 2>&1 reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization /f /v DODownloadMode /t REG_DWORD /d 99

rem fix bluetooth error
for %%$ in (dmwappushservice,DevicesFlowUserSvc) do (
  >nul 2>&1 sc start "%%$"
  >nul 2>&1 sc config "%%$" start=auto
)

echo == Stop Windows Defender

>nul 2>&1 where wmic && (

  rem glitch ... seems to work with wmic too
  >%windir%\temp\D_S_T.cmd (
    <nul set /p"=wmic service where(Name Like '%%%%WinDefend%%%%' OR Name Like '%%%%Sense%%%%' OR Name Like '%%%%WdBoot%%%%' OR Name Like '%%%%WdFilter%%%%' OR Name Like '%%%%WdNisSvc%%%%' OR Name Like '%%%%WdNisDrv%%%%' OR Name Like '%%%%wscsvc%%%%' OR Name Like '%%%%SgrmBroker%%%%') call stopService"
  )
  call :RunAsTI "cmd" /c %windir%\temp\D_S_T.cmd
  rem glitch ... seems to work with wmic too
  
) || (
  
  rem glitch ... using PS ... it work even with tampre on ... idea from geepnozeex
  >%windir%\temp\D_S_T.ps1 (
    <nul set /p"=gwmi Win32_BaseService|where Name -Match 'WinDefend|Sense|WdBoot|WdFilter|WdNisSvc|WdNisDrv|wscsvc|SgrmBroker'|foreach {$_.StopService()}"
  )
  call :RunAsTI "Powershell" -NoLogo -NonInteractive -WindowStyle Hidden -ep bypass -nop -file %windir%\temp\D_S_T.ps1
  rem glitch ... using PS ... it work even with tampre on ... idea from geepnozeex
  
)

timeout 6 >nul

:: intersting command
2>nul pushd "%ProgramFiles%\Windows Defender" && (
	start "" /MIN "mpcmdrun.exe" -DisableService
	start "" /MIN "mpcmdrun.exe" -wddisable
	popd
	timeout 4 >nul
)

>nul 2>&1 REG ADD "%Policies%\Microsoft\MRT" /f /v DontReportInfectionInformation /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\MRT" /f /v DontOfferThroughWUAU /t REG_DWORD /d "1"

>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender Security Center\Notifications" /f /v DisableNotifications /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender Security Center\Notifications" /f /v DisableEnhancedNotifications /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender Security Center\Systray" /f /v HideSystray /t REG_DWORD /d "1"

>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender" /f /v DisableRealtimeMonitoring /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender" /f /v DisableAntiVirus /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender" /f /v DisableSpecialRunningModes /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender" /f /v DisableRoutinelyTakingAction /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender" /f /v ServiceKeepAlive /t REG_DWORD /d "0"

>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender\Real-Time Protection" /f /v DisableBehaviorMonitoring /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender\Real-Time Protection" /f /v DisableOnAccessProtection /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender\Real-Time Protection" /f /v DisableScanOnRealtimeEnable /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender\Real-Time Protection" /f /v DisableRealtimeMonitoring /t REG_DWORD /d "1"

>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows\System" /f /v EnableSmartScreen /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControlEnabled /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender\SmartScreen" /f /v ConfigureAppInstallControl /t REG_SZ /d "Anywhere"

>nul 2>&1 REG ADD "%Policies%\Microsoft\Internet Explorer\PhishingFilter" /f /v Enabled /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Internet Explorer\PhishingFilter" /f /v EnabledV8 /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Internet Explorer\PhishingFilter" /f /v EnabledV9 /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3" /f /v 2301 /t REG_DWORD /d "3"

>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender\Spynet" /f /v DisableBlockAtFirstSeen /t REG_DWORD /d "1"
>nul 2>&1 REG ADD "%Policies%\Microsoft\Windows Defender\Signature Updates" /f /v ForceUpdateFromMU /t REG_DWORD /d "0"

>nul 2>&1 REG ADD "HKLM\Software\Policies\Microsoft\Windows\System" /f /v "AllowSmartScreen" /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v SmartScreenEnabled /t REG_SZ /d "Off"
>nul 2>&1 REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v EnableWebContentEvaluation /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v PreventOverride /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "HKCU\SOFTWARE\Microsoft\Windows Security Health\State" /f /v AppAndBrowser_StoreAppsSmartScreenOff /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "HKCU\SOFTWARE\Microsoft\Edge" /f /v SmartScreenEnabled /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "HKCU\SOFTWARE\Microsoft\Edge" /f /v SmartScreenPuaEnabled /t REG_DWORD /d "0"
>nul 2>&1 REG ADD "HKCU\SOFTWARE\Microsoft\Windows Security Health\State" /f /v AppAndBrowser_EdgeSmartScreenOff /t REG_DWORD /d "0"

call :RunAsTI "%~dpfx0"
timeout 4
exit

:RunAtSystemLevel
:RunAtSystemLevel
:RunAtSystemLevel

echo == Remove Edge
>nul 2>&1 pushd "%ProgramFiles%\Microsoft\EdgeCore" && (
    set EdgeSetup=
    for /f "tokens=*" %%g in ('dir /a/s/b setup.exe') do (if not defined EdgeSetup set EdgeSetup=%%g)
    popd
    if defined EdgeSetup >nul 2>&1 "!EdgeSetup!" --uninstall --force-uninstall --system-level
)
>nul 2>&1 pushd "%ProgramFiles(x86)%\Microsoft\EdgeCore" && (
    set EdgeSetup=
    for /f "tokens=*" %%g in ('dir /a/s/b setup.exe') do (if not defined EdgeSetup set EdgeSetup=%%g)
    popd
    if defined EdgeSetup >nul 2>&1 "!EdgeSetup!" --uninstall --force-uninstall --system-level
)
>nul 2>&1 pushd "%ProgramFiles%\Microsoft\Edge\Application" && (
    set EdgeSetup=
    for /f "tokens=*" %%g in ('dir /a/s/b setup.exe') do (if not defined EdgeSetup set EdgeSetup=%%g)
    popd
    if defined EdgeSetup >nul 2>&1 "!EdgeSetup!" --uninstall --force-uninstall --system-level
)
>nul 2>&1 pushd "%ProgramFiles(x86)%\Microsoft\Edge\Application" && (
    set EdgeSetup=
    for /f "tokens=*" %%g in ('dir /a/s/b setup.exe') do (if not defined EdgeSetup set EdgeSetup=%%g)
    popd
	
    if defined EdgeSetup >nul 2>&1 "!EdgeSetup!" --uninstall --force-uninstall --system-level
)
>nul 2>&1 pushd "%LocalAppData%\Microsoft\Edge\Application" && (
    set EdgeSetup=
    for /f "tokens=*" %%g in ('dir /a/s/b setup.exe') do (if not defined EdgeSetup set EdgeSetup=%%g)
    popd
    if defined EdgeSetup >nul 2>&1 "!EdgeSetup!" --uninstall --force-uninstall --system-level
)

REM >nul 2>&1 call :DestryFolder "%ProgramFiles%\Microsoft\EdgeCore"
REM >nul 2>&1 call :DestryFolder "%ProgramFiles(x86)%\Microsoft\EdgeCore"
REM >nul 2>&1 call :DestryFolder "%ProgramFiles%\Microsoft\Edge\Application"
REM >nul 2>&1 call :DestryFolder "%ProgramFiles(x86)%\Microsoft\Edge\Application"
REM >nul 2>&1 call :DestryFolder "%LocalAppData%\Microsoft\Edge\Application"

:: prevent Ms edge Reinstall
:: using icacls Command And Registry Tweaks
:: Thanks to abbodi1406, crypticus

REM >nul 2>&1 md "%ProgramFiles%\Microsoft\EdgeCore"
REM >nul 2>&1 md "%ProgramFiles(x86)%\Microsoft\EdgeCore"
REM >nul 2>&1 md "%ProgramFiles%\Microsoft\Edge\Application"
REM >nul 2>&1 md "%ProgramFiles(x86)%\Microsoft\Edge\Application"
REM >nul 2>&1 md "%LocalAppData%\Microsoft\Edge\Application"

REM >nul 2>&1 icacls "%ProgramFiles%\Microsoft\EdgeCore" /inheritance:r
REM >nul 2>&1 icacls "%ProgramFiles(x86)%\Microsoft\EdgeCore" /inheritance:r
REM >nul 2>&1 icacls "%ProgramFiles%\Microsoft\Edge\Application" /inheritance:r
REM >nul 2>&1 icacls "%ProgramFiles(x86)%\Microsoft\Edge\Application" /inheritance:r
REM >nul 2>&1 icacls "%LocalAppData%\Microsoft\Edge\Application" /inheritance:r

>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /f /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1

echo == Remove Skype

>nul powershell -noprofile -executionpolicy bypass -command "Get-WmiObject -Query 'select * from Win32_Product where Name like \"%%%%skype%%%%\"' | ForEach-Object { ($_).Uninstall()}"
>nul powershell -noprofile -executionpolicy bypass -command "Get-AppxPackage -Name *Skype* -AllUsers | Foreach {Remove-AppxPackage $_.PackageFullName -AllUsers}"
>nul powershell -noprofile -executionpolicy bypass -command "Get-ProvisionedAppxPackage -Online | Where-Object { $_.PackageName -match 'Skype' } | ForEach-Object { Remove-ProvisionedAppxPackage -Online -AllUsers -PackageName $_.PackageName }"

echo == Remove Teams

>nul 2>&1 taskkill /F /IM "Teams.exe"
>nul 2>&1 taskkill /F /IM "MSTeams.exe"
>nul 2>&1 taskkill /F /IM "Update.exe"
>nul 2>&1 taskkill /F /IM "Squirrel.exe"
>nul 2>&1 taskkill /F /IM "MSTeamsUpdate.exe"

>nul 2>&1 reg add "HKCU\Software\Microsoft\Office\Teams" /f /v PreventInstallationFromMsi /t REG_DWORD /d 1
>nul 2>&1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Office\16.0\Common\OfficeUpdate" /f /v PreventTeamsInstall /t REG_DWORD /d 1
>nul 2>&1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications" /f /v ConfigureChatAutoInstall /t REG_DWORD /d 0
>nul 2>&1 reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\MicrosoftTeams_8wekyb3d8bbwe\TeamsStartupTask" /f /v "State" /t REG_DWORD /d "1"

>nul 2>&1 pushd "%LOCALAPPDATA%\Microsoft\Teams" && (
    set TeamSetup=
    for /f "tokens=*" %%g in ('dir /a/s/b update.exe') do (if not defined TeamSetup set "TeamSetup=%%g")
    popd
    >nul 2>&1 "!TeamSetup!" --uninstall --force-uninstall --system-level
)
>nul 2>&1 pushd "%ProgramData%\%USERNAME%\Microsoft\Teams" && (
    set TeamSetup=
    for /f "tokens=*" %%g in ('dir /a/s/b update.exe') do (if not defined TeamSetup set "TeamSetup=%%g")
    popd
    >nul 2>&1 "!TeamSetup!" --uninstall --force-uninstall --system-level
)

set "Teams_Path="
set "Teams_Cmd=powershell -noprofile -executionpolicy bypass -command "Get-AppxPackage -Name *MicrosoftTeams* -AllUsers" ^| find /i "PackageFullName""
set "PackageFullName="
for /f "tokens=2 delims=:" %%g in ('%teams_CMD%') do set "PackageFullName=%%g"
if defined PackageFullName set Teams_Path="%ProgramFiles%\WindowsApps\!PackageFullName:~1!"

>nul powershell -noprofile -executionpolicy bypass -command "Get-WmiObject -Query 'select * from Win32_Product where Name like \"%%%%team%%%%\"' | ForEach-Object { ($_).Uninstall()}"
>nul powershell -noprofile -executionpolicy bypass -command "Get-AppxPackage -Name *Team* -AllUsers | Foreach {Remove-AppxPackage $_.PackageFullName -AllUsers}"
>nul powershell -noprofile -executionpolicy bypass -command "Get-ProvisionedAppxPackage -Online | Where-Object { $_.PackageName -match 'Team' } | ForEach-Object { Remove-ProvisionedAppxPackage -Online -AllUsers -PackageName $_.PackageName }"

if defined Teams_Path (

	>nul 2>&1 pushd !Teams_Path! && (
		popd
		>nul 2>&1 call :DestryFolder !Teams_Path!
	)
	if not exist !Teams_Path! echo. >!Teams_Path!
	>nul 2>&1 icacls !Teams_Path! /inheritance:r
	
) else (

	set Teams_Path="%ProgramFiles%\WindowsApps\MicrosoftTeams_21253.510.996.1465_x64__8wekyb3d8bbwe"
	if not exist !Teams_Path! (
			if exist "%ProgramFiles%\WindowsApps" (
				echo. >!Teams_Path!
				>nul 2>&1 icacls !Teams_Path! /inheritance:r
			)
	)
)

>nul 2>&1 call :DestryFolder "%appdata%\Teams"
>nul 2>&1 call :DestryFolder "%appdata%\Microsoft\Teams"
>nul 2>&1 call :DestryFolder "%LOCALAPPDATA%\Microsoft\Teams"
>nul 2>&1 call :DestryFolder "%ProgramData%\%USERNAME%\Microsoft\Teams"

echo == Remove OneDrive
>nul 2>&1 REG Delete "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
>nul 2>&1 REG Delete "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f

>nul 2>&1 tskill /a OneDrive
>nul 2>&1 tskill /a OneDriveSetup

>nul 2>&1 taskkill /im OneDrive.exe
>nul 2>&1 taskkill /im OneDriveSetup.exe

set oneDrive="%windir%\System32\OneDriveSetup.exe"
if exist !oneDrive! (
	>nul 2>&1 !oneDrive! /uninstall /allusers
	>nul 2>&1 tskill /a OneDriveSetup
	>nul 2>&1 taskkill /im OneDriveSetup.exe
	>nul 2>&1 del /q !oneDrive!
)

set oneDrive="%windir%\SysWOW64\OneDriveSetup.exe"
if exist !oneDrive! (
	>nul 2>&1 !oneDrive! /uninstall /allusers
	>nul 2>&1 taskkill /im OneDriveSetup.exe
	>nul 2>&1 tskill /a OneDriveSetup
	>nul 2>&1 del /q !oneDrive!
)

>nul powershell -noprofile -executionpolicy bypass -command "Get-WmiObject -Query 'select * from Win32_Product where Name like \"%%%%OneDrive%%%%\"' | ForEach-Object { ($_).Uninstall()}"
>nul powershell -noprofile -executionpolicy bypass -command "Get-AppxPackage -Name *OneDrive* -AllUsers | Foreach {Remove-AppxPackage $_.PackageFullName -AllUsers}"
>nul powershell -noprofile -executionpolicy bypass -command "Get-ProvisionedAppxPackage -Online | Where-Object { $_.PackageName -match 'OneDrive' } | ForEach-Object { Remove-ProvisionedAppxPackage -Online -AllUsers -PackageName $_.PackageName }"

>nul 2>&1 call :DestryFolder "C:\OneDriveTemp"
>nul 2>&1 call :DestryFolder "%USERPROFILE%\OneDrive"
>nul 2>&1 call :DestryFolder "%LOCALAPPDATA%\Microsoft\OneDrive"
>nul 2>&1 call :DestryFolder "%PROGRAMDATA%\Microsoft OneDrive"
>nul 2>&1 call :DestryFolder "%ProgramFiles%\Microsoft OneDrive"
>nul 2>&1 call :DestryFolder "%ProgramFiles(x86)%\Microsoft OneDrive"

echo == Remove Defender

>nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MRT.exe" /f
>nul 2>nul REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender" /f /v DisableAntiSpyware /t REG_DWORD /d 1
>nul 2>nul REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v DisableAntiSpyware /t REG_DWORD /d 1
>nul 2>nul REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /f /v DisableAntiSpyware /t REG_DWORD /d 1
>nul 2>nul REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /f /v TamperProtection /t REG_DWORD /d 0

for %%A IN (WinDefend,WdBoot,WdFilter,Sense,WdNisDrv,WdNisSvc,wscsvc,SgrmBroker) do (
	>nul 2>&1 (sc config %%A start=disabled)
	>nul 2>&1 (<nul sc stop %%A)
	>nul 2>&1 (<nul net stop %%A)
	REM >nul 2>&1 reg delete "HKLM\SYSTEM\ControlSet001\Services\%%A" /f
	
	>nul 2>nul SC query %%A
	REM if !errorlevel! EQU 0 (
	if !errorlevel! NEQ 1060 (
		(2>nul SC query %%A | find /i "STATE" | >nul find /i "STOPPED") || echo ERROR ### Fail Stopping %%A Services
	)
)

for %%A IN (SecurityHealthService, SecurityHealthSystray, smartscreen, mpcmdrun, MsMpEng) do (
	>nul 2>&1 tskill /a %%A
	>nul 2>&1 taskkill /im %%A.exe /f /t
)
>nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Defender" /f

REM echo == Remove Defender Components
REM call :export cson > %script_file%
REM >nul 2>&1 powershell -noprofile -executionpolicy bypass -file %script_file%

REM echo == Remove Windows Defender Folder
REM >nul 2>&1 call :DestryFolder "%ProgramFiles%\Windows Defender"
REM >nul 2>&1 call :DestryFolder "%ProgramFiles(x86)%\Windows Defender"
REM >nul 2>&1 call :DestryFolder "%ALLUSERSPROFILE%\Windows Defender"
REM >nul 2>&1 call :DestryFolder "%ProgramFiles%\Windows Defender Advanced Threat Protection"
REM >nul 2>&1 call :DestryFolder "%ProgramFiles(x86)%\Windows Defender Advanced Threat Protection"
REM >nul 2>&1 call :DestryFolder "%ALLUSERSPROFILE%\Microsoft\Windows Defender Advanced Threat Protection"

echo == Remove UWP Apps
call :export AppX_TI > %script_file%
>nul 2>&1 powershell -noprofile -executionpolicy bypass -file %script_file%

rem Add New File Types to Windows 10 Context Menu
rem https://pitcrewit.com/blog/add-new-file-types-to-windows-10-context-menu/

echo.

echo == Add Copy/Move To Menu
>nul 2>&1 reg add HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\CopyToFolder /f /t REG_SZ /d {C2FBB630-2971-11D1-A18C-00C04FD75D13}
>nul 2>&1 reg add HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\MoveToFolder /f /t REG_SZ /d {C2FBB631-2971-11D1-A18C-00C04FD75D13}

echo == Add Image Service Menu
set JOB=B64DEC

>nul 2>&1 CSCRIPT //nologo "%~f0?.wsf" //job:!JOB!
CSCRIPT //nologo "%~f0?.wsf" //job:!JOB! /ID:"IMAGE_SERVICE" /InFile:"%~f0" /OutFile:"%WINDIR%\Temp\IMAGE_SERVICE.zip"
timeout 2 >nul
>nul 2>&1 powershell -nop -ep bypass -c $src=Join-Path $env:windir '\temp\IMAGE_SERVICE.zip';$tar=Join-Path $env:windir 'temp\'; Expand-Archive $src $tar -Force
>nul 2>&1 reg import "%WINDIR%\Temp\Image Service Menu.reg"
>nul 2>&1 del /q %WINDIR%\Temp\IMAGE_SERVICE.zip
>nul 2>&1 del /q "%WINDIR%\Temp\Image Service Menu.reg"

echo == Add Take Ownership Menu
call :export bson > "%WINDIR%\Temp\settings.reg"
>nul 2>&1 reg import "%WINDIR%\Temp\settings.reg"

echo == Add Install Package Menu
call :export xoon > "%WINDIR%\Temp\settings.reg"
>nul 2>&1 reg import "%WINDIR%\Temp\settings.reg"

echo == Add Run As TrustedInstaller Menu
set JOB=B64DEC
>nul 2>&1 CSCRIPT //nologo "%~f0?.wsf" //job:!JOB!
CSCRIPT //nologo "%~f0?.wsf" //job:!JOB! /ID:"Nsudu_PAck" /InFile:"%~f0" /OutFile:"%WINDIR%\Temp\Nsudu_PAck.zip"
timeout 2 >nul
>nul 2>&1 powershell -nop -ep bypass -c $src=Join-Path $env:windir '\temp\Nsudu_PAck.zip';$tar=$env:windir; Expand-Archive $src $tar -Force
>nul 2>&1 del /q "%WINDIR%\Temp\Nsudu_PAck.zip"

call :export lson > "%WINDIR%\Temp\settings.reg"
>nul 2>&1 reg import "%WINDIR%\Temp\settings.reg"

echo == Add New ext [bat cmd reg txt PS1]
set "ext=bat cmd reg txt PS1"
for %%$ in (%ext%) do reg add "HKCR\.%%$\Shellnew" /f /v "Nullfile" /t REG_SZ /d "1" >nul 2>&1
for %%$ in (%ext%) do reg add "HKCR\SystemFileAssociations\.%%$\Shellnew" /f /v "Nullfile" /t REG_SZ /d "1" >nul 2>&1

echo == Add Elevate Command Prompt ^\ PowerShell Menu
echo == Add TrustedInstaller Command Prompt ^\ PowerShell Menu
call :export xson > "%WINDIR%\Temp\settings.reg"
>nul 2>&1 reg import "%WINDIR%\Temp\settings.reg"

goto :eof

:DestryFolder
set targetFolder=%*
if exist %targetFolder% (
    rd /s /q %targetFolder%
    if exist %targetFolder% (
        for /f "tokens=*" %%g in ('dir /b/s /a-d %targetFolder%') do move /y "%%g" "%WINDIR%\Temp"
        rd /s /q %targetFolder%
    )
)
goto :eof

:: AveYo's Helpers
:: AveYo's Helpers
:: AveYo's Helpers

:export
rem AveYo's :export text attachments snippet
rem  Prints all text between lines starting with :NAME:[ and :NAME:] - A pure batch snippet by AveYo
set [=&for /f "delims=:" %%s in ('findstr/nbrc:":%~1:\[" /c:":%~1:\]" "%~f0"') do if defined [ (set/a ]=%%s-3) else set/a [=%%s-1
<"%~fs0" ((for /l %%i in (0 1 %[%) do set /p =)&for /l %%i in (%[% 1 %]%) do (set txt=&set /p txt=&echo(!txt!))&exit/b

#:RunAsTI: #1 snippet to run as TI/System, with /high priority, /priv ownership, explorer and HKCU load
set ^ #=& set "0=%~f0"& set 1=%*& powershell -nop -c iex(([io.file]::ReadAllText($env:0)-split':RunAsTI\:.*')[1])& exit/b
$_CAN_PASTE_DIRECTLY_IN_POWERSHELL='^,^'; function RunAsTI ($cmd) { $id='RunAsTI'; $sid=((whoami /user)-split' ')[-1]; $code=@'
$ti=(whoami /groups)-like"*1-16-16384*"; $DM=[AppDomain]::CurrentDomain."DefineDynamicAss`embly"(1,1)."DefineDynamicMod`ule"(1)
$D=@(); 0..5|% {$D+=$DM."DefineT`ype"("M$_",1179913,[ValueType])}; $I=[int32];$P=$I.module.gettype("System.Int`Ptr"); $U=[uintptr]
$D+=$U; 4..6|% {$D+=$D[$_]."MakeB`yRefType"()};$M=$I.module.gettype("System.Runtime.Interop`Services.Mar`shal");$Z=[uintptr]::size
$S=[string]; $F="kernel","advapi","advapi",($S,$S,$I,$I,$I,$I,$I,$S,$D[7],$D[8]),($U,$S,$I,$I,$D[9]),($U,$S,$I,$I,[byte[]],$I)
0..2|% {$9=$D[0]."DefinePInvokeMeth`od"(("CreateProcess","RegOpenKeyEx","RegSetValueEx")[$_],$F[$_]+'32',8214,1,$S,$F[$_+3],1,4)}
$DF=0,($P,$I,$P),($I,$I,$I,$I,$P,$D[1]),($I,$S,$S,$S,$I,$I,$I,$I,$I,$I,$I,$I,[int16],[int16],$P,$P,$P,$P),($D[3],$P),($P,$P,$I,$I)
1..5|% {$k=$_;$n=1;$AveYo=1; $DF[$_]|% {$9=$D[$k]."DefineFie`ld"('f'+$n++,$_,6)}}; $T=@(); 0..5|% {$T+=$D[$_]."CreateT`ype"()}
0..5|% {nv "A$_" ([Activator]::CreateInstance($T[$_])) -force}; function F ($1,$2) {$T[0]."GetMeth`od"($1).invoke(0,$2)};
if (!$ti) { $g=0; "TrustedInstaller","lsass"|% {if (!$g) {net1 start $_ 2>&1 >$null; $g=@(get-process -name $_ -ea 0|% {$_})[0]}}
 function M($1,$2,$3){$M."GetMeth`od"($1,[type[]]$2).invoke(0,$3)}; $H=@(); $Z,(4*$Z+16)|% {$H+=M "AllocHG`lobal" $I $_};
 M "WriteInt`Ptr" ($P,$P) ($H[0],$g.Handle); $A1.f1=131072;$A1.f2=$Z;$A1.f3=$H[0];$A2.f1=1;$A2.f2=1;$A2.f3=1;$A2.f4=1;$A2.f6=$A1
 $A3.f1=10*$Z+32;$A4.f1=$A3;$A4.f2=$H[1]; M "StructureTo`Ptr" ($D[2],$P,[boolean]) (($A2 -as $D[2]),$A4.f2,$false); $w=0x0E080600
 $out=@($null,"powershell -win 1 -nop -c iex `$env:A",0,0,0,$w,0,$null,($A4 -as $T[4]),($A5 -as $T[5])); F "CreateProcess" $out
} else { $env:A=''; $PRIV=[uri].module.gettype("System.Diagnostics.Process")."GetMeth`ods"(42) |? {$_.Name -eq "SetPrivilege"}
 "SeSecurityPrivilege","SeTakeOwnershipPrivilege","SeBackupPrivilege","SeRestorePrivilege" |% {$PRIV.Invoke(0, @("$_",2))}
 $HKU=[uintptr][uint32]2147483651; $LNK=$HKU; $reg=@($HKU,"S-1-5-18",8,2,($LNK -as $D[9])); F "RegOpenKeyEx" $reg; $LNK=$reg[4]
 function SYM($1,$2){$b=[Text.Encoding]::Unicode.GetBytes("\Registry\User\$1");@($2,"SymbolicLinkValue",0,6,[byte[]]$b,$b.Length)}
 F "RegSetValueEx" (SYM $(($key-split'\\')[1]) $LNK); $EXP="HKLM:\Software\Classes\AppID\{CDCBCFCA-3CDC-436f-A4E2-0E02075250C2}"
 $r="explorer"; if (!$cmd) {$cmd='C:\'}; $dir=test-path -lit ((($cmd -split '^("[^"]+")|^([^\s]+)') -ne'')[0].trim('"')) -type 1
 if (!$dir) {$r="start `"$id`" /high /w"}; sp $EXP RunAs '' -force; start cmd -args ("/q/x/d/r title $id && $r",$cmd) -wait -win 1
 do {sleep 7} while ((gwmi win32_process -filter 'name="explorer.exe"'|? {$_.getownersid().sid -eq "S-1-5-18"}))
 F "RegSetValueEx" (SYM ".Default" $LNK); sp $EXP RunAs "Interactive User" -force } # lean and mean snippet by AveYo, 2018-2021
'@; $key="Registry::HKEY_USERS\$sid\Volatile Environment"; $a1="`$id='$id';`$key='$key';";$a2="`$cmd='$($cmd-replace"'","''")';`n"
sp $key $id $($a1,$a2,$code) -type 7 -force; $arg="$a1 `$env:A=(gi `$key).getvalue(`$id)-join'';rp `$key `$id -force; iex `$env:A"
$_PRESS_ENTER='^,^'; start powershell -args "-win 1 -nop -c $arg" -verb runas }; <#,#>  RunAsTI $env:1;  #:RunAsTI:

:reg_own #key [optional] all user owner access permission  :        call :reg_own "HKCU\My" "" S-1-5-32-544 "" Allow FullControl
powershell -nop -c $A='%~1','%~2','%~3','%~4','%~5','%~6';iex(([io.file]::ReadAllText('%~f0')-split':Own1\:.*')[1])&exit/b:Own1:
$D1=[uri].module.gettype('System.Diagnostics.Process')."GetM`ethods"(42) |where {$_.Name -eq 'SetPrivilege'} #`:no-ev-warn
'SeSecurityPrivilege','SeTakeOwnershipPrivilege','SeBackupPrivilege','SeRestorePrivilege'|foreach {$D1.Invoke($null, @("$_",2))}
$path=$A[0]; $rk=$path-split'\\',2; $HK=gi -lit Registry::$($rk[0]) -fo; $s=$A[1]; $sps=[Security.Principal.SecurityIdentifier]
$u=($A[2],'S-1-5-32-544')[!$A[2]];$o=($A[3],$u)[!$A[3]];$w=$u,$o |% {new-object $sps($_)}; $old=!$A[3];$own=!$old; $y=$s-eq'all'
$rar=new-object Security.AccessControl.RegistryAccessRule( $w[0], ($A[5],'FullControl')[!$A[5]], 1, 0, ($A[4],'Allow')[!$A[4]] )
$x=$s-eq'none';function Own1($k){$t=$HK.OpenSubKey($k,2,'TakeOwnership');if($t){0,4|%{try{$o=$t.GetAccessControl($_)}catch{$old=0}
};if($old){$own=1;$w[1]=$o.GetOwner($sps)};$o.SetOwner($w[0]);$t.SetAccessControl($o); $c=$HK.OpenSubKey($k,2,'ChangePermissions')
$p=$c.GetAccessControl(2);if($y){$p.SetAccessRuleProtection(1,1)};$p.ResetAccessRule($rar);if($x){$p.RemoveAccessRuleAll($rar)}
$c.SetAccessControl($p);if($own){$o.SetOwner($w[1]);$t.SetAccessControl($o)};if($s){$subkeys=$HK.OpenSubKey($k).GetSubKeyNames()
foreach($n in $subkeys){Own1 "$k\$n"}}}};Own1 $rk[1];if($env:VO){get-acl Registry::$path|fl} #:Own1: lean & mean snippet by AveYo
::-_-::

:cson:[

#---------------------------------------------------------------
# Windows.10.Defender_Uninstall.ps1
# IMPORTANT: Run as Administrator or for the better as TrustedInstaller
# https://github.com/St1ckys/Stuff/blob/main/Windows.10.Defender_Uninstall.ps1
#---------------------------------------------------------------


Set-ItemProperty -Path "REGISTRY::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*" -Name Visibility -Value "1"
Remove-Item -Path "REGISTRY::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*" -Include *Owner* -Recurse -Force | Out-Null
Get-ChildItem -Path "REGISTRY::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*" -Name | foreach {remove-windowspackage -Online -PackageName "$_" -NoRestart}

:cson:]

:AppX_admin:[
$AppList        = $env:Apps
$misc_appX_List = Get-AppxPackage
$prov_appX_List = Get-ProvisionedAppxPackage -Online

foreach ($App in $AppList.Split(";")) {
  $misc_appX_List | where Name -Match $App | Remove-AppxPackage
  $prov_appX_List | where PackageName -Match $App | Remove-ProvisionedAppxPackage -Online
}
:AppX_admin:]

:AppX_TI:[
$AppList        = $env:Apps
$misc_appX_List = Get-AppxPackage -AllUsers
$prov_appX_List = Get-ProvisionedAppxPackage -Online

foreach ($App in $AppList.Split(";")) {
  $misc_appX_List | where Name -Match $App | Remove-AppxPackage -AllUsers
  $prov_appX_List | where PackageName -Match $App | Remove-ProvisionedAppxPackage -Online -AllUsers
}
:AppX_TI:]

:lson:[
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\lnkfile\shell\RunAsTI]
@="Run As TrustedInstaller"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorBefore"=""

[HKEY_CLASSES_ROOT\lnkfile\shell\RunAsTI\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E cmd /c start \"%1\""

[HKEY_CLASSES_ROOT\lnkfile\shell\RunAsTI_x64]
@="Run As TrustedInstaller x64"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\lnkfile\shell\RunAsTI_x64\command]
@="\"c:\\windows\\NSudoLC x64.exe\" -U:T -P:E cmd /c start \"%1\""

[HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\shell\RunAsTI]
@="Run As TrustedInstaller"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorBefore"=""

[HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\shell\RunAsTI\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E powershell -noprofile -executionpolicy bypass -File \"%1\""

[HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\shell\RunAsTI_x64]
@="Run As TrustedInstaller x64"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\shell\RunAsTI_x64\command]
@="\"c:\\windows\\NSudoLC x64.exe\" -U:T -P:E powershell -noprofile -executionpolicy bypass -File \"%1\""

[HKEY_CLASSES_ROOT\SystemFileAssociations\.ps1\shell\RunAsTI]
@="Run As TrustedInstaller"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorBefore"=""

[HKEY_CLASSES_ROOT\SystemFileAssociations\.ps1\shell\RunAsTI\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E powershell -noprofile -executionpolicy bypass -File \"%1\""

[HKEY_CLASSES_ROOT\SystemFileAssociations\.ps1\shell\RunAsTI_x64]
@="Run As TrustedInstaller x64"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\SystemFileAssociations\.ps1\shell\RunAsTI_x64\command]
@="\"c:\\windows\\NSudoLC x64.exe\" -U:T -P:E powershell -noprofile -executionpolicy bypass -File \"%1\""

[HKEY_CLASSES_ROOT\regfile\shell\RunAsTI]
@="Run As TrustedInstaller"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorBefore"=""

[HKEY_CLASSES_ROOT\regfile\shell\RunAsTI\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E regedit.exe \"%1\""

[HKEY_CLASSES_ROOT\regfile\shell\RunAsTI_x64]
@="Run As TrustedInstaller x64"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\regfile\shell\RunAsTI_x64\command]
@="\"c:\\windows\\NSudoLC x64.exe\" -U:T -P:E regedit.exe \"%1\""

[HKEY_CLASSES_ROOT\exefile\shell\RunAsTI]
@="Run As TrustedInstaller"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorBefore"=""

[HKEY_CLASSES_ROOT\exefile\shell\RunAsTI\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E \"%1\""

[HKEY_CLASSES_ROOT\exefile\shell\RunAsTI_x64]
@="Run As TrustedInstaller x64"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\exefile\shell\RunAsTI_x64\command]
@="\"c:\\windows\\NSudoLC x64.exe\" -U:T -P:E \"%1\""

[HKEY_CLASSES_ROOT\cmdfile\shell\RunAsTI]
@="Run As TrustedInstaller"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorBefore"=""

[HKEY_CLASSES_ROOT\cmdfile\shell\RunAsTI\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E \"%1\""

[HKEY_CLASSES_ROOT\cmdfile\shell\RunAsTI_x64]
@="Run As TrustedInstaller x64"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\cmdfile\shell\RunAsTI_x64\command]
@="\"c:\\windows\\NSudoLC x64.exe\" -U:T -P:E \"%1\""

[HKEY_CLASSES_ROOT\batfile\shell\RunAsTI]
@="Run As TrustedInstaller"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorBefore"=""

[HKEY_CLASSES_ROOT\batfile\shell\RunAsTI\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E \"%1\""

[HKEY_CLASSES_ROOT\batfile\shell\RunAsTI_x64]
@="Run As TrustedInstaller x64"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\batfile\shell\RunAsTI_x64\command]
@="\"c:\\windows\\NSudoLC x64.exe\" -U:T -P:E \"%1\""
:lson:]

:LZkkk:[
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed"    -Type DWord -Value 0 -ErrorAction SilentlyContinue | out-null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0 -ErrorAction SilentlyContinue | out-null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities"  -Type DWord -Value 0 -ErrorAction SilentlyContinue | out-null

$CDPGlobalSettings = Join-Path -Path $env:LOCALAPPDATA -ChildPath 'ConnectedDevicesPlatform\CDPGlobalSettings.cdp';
if (test-path $CDPGlobalSettings) {
	$cont = get-Content $CDPGlobalSettings;
	$cont = $cont.Replace('"ActivityFeed" : 0', '"ActivityFeed" : 1');
	$cont = $cont.Replace('"CloudSync" : 0', '"CloudSync" : 1');
	$cont = $cont.Replace('"PublishUserActivity" : 0', '"PublishUserActivity" : 1');
	$cont = $cont.Replace('"UploadUserActivity" : 0', '"UploadUserActivity" : 1');
	$cont | set-Content $CDPGlobalSettings;
}
:LZkkk:]

:kson:[
$volume = Get-WmiObject -Query "select * from Win32_Volume where DriveLetter like '%%%%c:%%%%'"
$volume.IndexingEnabled = $false
$volume.Put()
:kson:]

:mson:[
<# How to automatically set the minimum and maximum paging file size? #>
<# https://stackoverflow.com/a/62214584 #>

# Step1. Disalbe AutomaticManagedPagefile
$ComputerSystem = Get-WmiObject -ClassName Win32_ComputerSystem
$ComputerSystem.AutomaticManagedPagefile = $false
$ComputerSystem.Put()

# Step2. Set Pagefile Size
$PageFileSetting = Get-WmiObject -ClassName Win32_PageFileSetting
$PageFileSetting.InitialSize = 2048
$PageFileSetting.MaximumSize = 2048
$PageFileSetting.Put()
:mson:]

:xoon:[
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\*\Shell\InstallPackage]
@="Install Package"
"HasLUAShield"=""
"Icon"="powershell.exe"

[HKEY_CLASSES_ROOT\*\Shell\InstallPackage\Command]
@="powershell -nop -c Add-AppxPackage -Path '%1'"
:xoon:]

:xson:[
Windows Registry Editor Version 5.00

;; Modified version of °ツ
;; https://forums.mydigitallife.net/threads/how-to-use-command-prompt-instead-of-powershell-when-i-press-shift-right-click.73800/page-2#post-1334284

;; Changes 08/01/2023
;; Menu Added to Folder & Drive
;; PowerShell Command Change little bit
;; Fix Raster fonts problems (chcp 437)
;; add windows terminal support

[-HKEY_CLASSES_ROOT\Directory\shell\ElevatedCommandPrompt]
[-HKEY_CLASSES_ROOT\Directory\shell\ElevatedPowerShell]
[-HKEY_CLASSES_ROOT\Directory\shell\ElevatedWT]
[-HKEY_CLASSES_ROOT\Directory\shell\NSUDUCommandPrompt]
[-HKEY_CLASSES_ROOT\Directory\shell\NSUDUPowerShell]
[-HKEY_CLASSES_ROOT\Directory\shell\NSUDUwt]

[-HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedCommandPrompt]
[-HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedPowerShell]
[-HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedWT]
[-HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUCommandPrompt]
[-HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUPowerShell]
[-HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUwt]

[-HKEY_CLASSES_ROOT\Drive\shell\ElevatedCommandPrompt]
[-HKEY_CLASSES_ROOT\Drive\shell\ElevatedPowerShell]
[-HKEY_CLASSES_ROOT\Drive\shell\ElevatedWT]
[-HKEY_CLASSES_ROOT\Drive\shell\NSUDUCommandPrompt]
[-HKEY_CLASSES_ROOT\Drive\shell\NSUDUPowerShell]
[-HKEY_CLASSES_ROOT\Drive\shell\NSUDUwt]

[-HKEY_CLASSES_ROOT\Drive\background\shell\ElevatedCommandPrompt]
[-HKEY_CLASSES_ROOT\Drive\background\shell\ElevatedPowerShell]
[-HKEY_CLASSES_ROOT\Drive\background\shell\ElevatedWT]
[-HKEY_CLASSES_ROOT\Drive\background\shell\NSUDUCommandPrompt]
[-HKEY_CLASSES_ROOT\Drive\background\shell\NSUDUPowerShell]
[-HKEY_CLASSES_ROOT\Drive\background\shell\NSUDUwt]

[HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System]
"EnableLUA"=dword:00000000

[HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedCommandPrompt]
@="Open Elevated Command Prompt"
"HasLUAShield"=""
"Position"="Bottom"
"Icon"="cmd.exe"
"SeparatorBefore"=""

[HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedCommandPrompt\Command]
@="cmd.exe /S /K pushd \"%V\""

[HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedPowerShell]
@="Open Elevated PowerShell"
"Icon"="powershell.exe"
"HasLUAShield"=""
"Position"="Bottom"

[HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedPowerShell\command]
@="cmd /c chcp 437>nul & powershell.exe -noexit -command Set-Location -lit '%V'"

[HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedWT]
@="Open Elevated Windows Terminal"
"Icon"="wt.exe"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\Directory\background\shell\ElevatedWT\command]
@="cmd /c wt.exe -d \"%v"

[HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUCommandPrompt]
@="Open TrustedInstaller Command Prompt"
"HasLUAShield"=""
"Position"="Bottom"
"Icon"="cmd.exe"

[HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUCommandPrompt\Command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E CMD.exe /S /K pushd \"%V\""

[HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUPowerShell]
@="Open TrustedInstaller PowerShell"
"Icon"="powershell.exe"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUPowerShell\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E CMD.exe /c chcp 437>nul & powershell.exe -noexit -command Set-Location -lit '%V'"

;; [HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUwt]
;; @="Open TrustedInstaller Windows Terminal"
;; "HasLUAShield"=""
;; "Icon"="wt.exe"
;; "Position"="Bottom"
;; "SeparatorAfter"=""

;; [HKEY_CLASSES_ROOT\Directory\background\shell\NSUDUwt\command]
;; @="c:\\windows\\NSudoLC.exe -U:T -P:E CMD.exe /c \"%LocalAppData%\\Microsoft\\WindowsApps\\wt.exe\" -d \"%V"

[HKEY_CLASSES_ROOT\Directory\shell\ElevatedCommandPrompt]
@="Open Elevated Command Prompt"
"HasLUAShield"=""
"SeparatorBefore"=""
"Position"="Bottom"
"Icon"="cmd.exe"

[HKEY_CLASSES_ROOT\Directory\shell\ElevatedCommandPrompt\Command]
@="cmd.exe /S /K pushd \"%1\""

[HKEY_CLASSES_ROOT\Directory\shell\ElevatedPowerShell]
@="Open Elevated PowerShell"
"Icon"="powershell.exe"
"HasLUAShield"=""
"Position"="Bottom"

[HKEY_CLASSES_ROOT\Directory\shell\ElevatedPowerShell\command]
@="cmd /c chcp 437>nul & powershell.exe -noexit -command Set-Location -lit '%1'"

[HKEY_CLASSES_ROOT\Directory\shell\ElevatedWT]
@="Open Elevated Windows Terminal"
"HasLUAShield"=""
"Position"="Bottom"
"Icon"="wt.exe"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\Directory\shell\ElevatedWT\Command]
@="cmd /c wt.exe -d \"%1"

[HKEY_CLASSES_ROOT\Directory\shell\NSUDUCommandPrompt]
@="Open TrustedInstaller Command Prompt"
"HasLUAShield"=""
"Position"="Bottom"
"Icon"="cmd.exe"

[HKEY_CLASSES_ROOT\Directory\shell\NSUDUCommandPrompt\Command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E CMD.exe /S /K pushd \"%1\""

[HKEY_CLASSES_ROOT\Directory\shell\NSUDUPowerShell]
@="Open TrustedInstaller PowerShell"
"Icon"="powershell.exe"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\Directory\shell\NSUDUPowerShell\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E CMD.exe /c chcp 437>nul & powershell.exe -noexit -command Set-Location -lit '%1'"

;; [HKEY_CLASSES_ROOT\Directory\shell\NSUDUwt]
;; @="Open TrustedInstaller Windows Terminal"
;; "HasLUAShield"=""
;; "Icon"="wt.exe"
;; "Position"="Bottom"
;; "SeparatorAfter"=""

;; [HKEY_CLASSES_ROOT\Directory\shell\NSUDUwt\command]
;; @="c:\\windows\\NSudoLC.exe -U:T -P:E CMD.exe /c \"%LocalAppData%\\Microsoft\\WindowsApps\\wt.exe\" -d \"%1"

[HKEY_CLASSES_ROOT\Drive\shell\ElevatedCommandPrompt]
@="Open Elevated Command Prompt"
"HasLUAShield"=""
"Position"="Bottom"
"Icon"="cmd.exe"

[HKEY_CLASSES_ROOT\Drive\shell\ElevatedCommandPrompt\Command]
@="cmd.exe /S /K pushd \"%1\""

[HKEY_CLASSES_ROOT\Drive\shell\ElevatedPowerShell]
@="Open Elevated PowerShell"
"Icon"="powershell.exe"
"HasLUAShield"=""
"Position"="Bottom"

[HKEY_CLASSES_ROOT\Drive\shell\ElevatedPowerShell\command]
@="cmd /c chcp 437>nul & powershell.exe -noexit -command Set-Location -lit '%1'"

[HKEY_CLASSES_ROOT\Drive\shell\ElevatedWT]
@="Open Elevated Windows Terminal"
"HasLUAShield"=""
"Position"="Bottom"
"Icon"="wt.exe"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\Drive\shell\ElevatedWT\Command]
@="cmd /c wt.exe -d \"%1"

[HKEY_CLASSES_ROOT\Drive\shell\NSUDUCommandPrompt]
@="Open TrustedInstaller Command Prompt"
"HasLUAShield"=""
"Position"="Bottom"
"Icon"="cmd.exe"

[HKEY_CLASSES_ROOT\Drive\shell\NSUDUCommandPrompt\Command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E CMD.exe /S /K pushd \"%1\""

[HKEY_CLASSES_ROOT\Drive\shell\NSUDUPowerShell]
@="Open TrustedInstaller PowerShell"
"Icon"="powershell.exe"
"HasLUAShield"=""
"Position"="Bottom"
"SeparatorAfter"=""

[HKEY_CLASSES_ROOT\Drive\shell\NSUDUPowerShell\command]
@="c:\\windows\\NSudoLC.exe -U:T -P:E CMD.exe /c chcp 437>nul & powershell.exe -noexit -command Set-Location -lit '%1'"

:xson:]

:bson:[
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\*\shell\runas]
@="Take Ownership"
"NoWorkingDirectory"=""

[HKEY_CLASSES_ROOT\*\shell\runas\command]
@="cmd.exe /c takeown /f \"%1\" && icacls \"%1\" /grant administrators:F"
"IsolatedCommand"="cmd.exe /c takeown /f \"%1\" && icacls \"%1\" /grant administrators:F"

[HKEY_CLASSES_ROOT\Directory\shell\runas]
@="Take Ownership"
"NoWorkingDirectory"=""

[HKEY_CLASSES_ROOT\Directory\shell\runas\command]
@="cmd.exe /c takeown /f \"%V\" /r /d y && icacls \"%V\" /grant administrators:F /t"
"IsolatedCommand"="cmd.exe /c takeown /f \"%V\" /r /d y && icacls \"%V\" /grant administrators:F /t"

[HKEY_CLASSES_ROOT\Directory\Background\shell\runas]
@="Take Ownership"

[HKEY_CLASSES_ROOT\Directory\Background\shell\runas\Command]
@="cmd.exe /c takeown /f \"%V\" /r /d y && icacls \"%V\" /grant administrators:F /t"
"IsolatedCommand"="cmd.exe /c takeown /f \"%V\" /r /d y && icacls \"%V\" /grant administrators:F /t"
:bson:]

:HJGH:[
Windows Registry Editor Version 5.00

[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Application Experience]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Customer Experience Improvement Program]
:HJGH:]

<scheme.zip>
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
<scheme.zip>

<IMAGE_SERVICE>
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
<IMAGE_SERVICE>

<Nsudu_PAck>
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
<Nsudu_PAck>

----- Begin wsf script --->
<package>
   <job id="B64DEC">
       <script language="VBScript">
           Set strArg=WScript.Arguments.Named
           colNamedArg= WScript.Arguments.Count

           if colNamedArg < 1 then
              Wscript.Echo "Switches:",vbCrLf,"/ID:<'<Identifier>'>",vbCrLf,"/InFile:<Source File>",vbCrLf,"/OutFile:[Output File]"
               WScript.Quit 1
           ElseIf Not strArg.Exists("ID") Then
               Wscript.Echo "ERROR: Switch /ID:<'<Identifier>'> is missing."
               WScript.Quit 1
           ElseIf Not strArg.Exists("InFile") Then
               Wscript.Echo "ERROR: Switch /InFile:<Source File> is missing."
               WScript.Quit 1
           ElseIf colNamedArg > 3 And Not strArg.Exists("OutFile") Then
               WScript.Echo "Invalid parameters"
               WScript.Quit 1
           End If

           Set outStream=CreateObject("ADODB.Stream") : outStream.Type = 1 : outStream.Open

           Set oFS=CreateObject("Scripting.FileSystemObject")
           Set inStream=oFS.OpenTextFile(strArg("InFile"),1,0,0)

           Set oXML=CreateObject("MSXml2.DOMDocument")
           Set oItem=oXML.createElement("tmp") : oItem.DataType="bin.base64"

           Do Until inStream.AtEndOfStream
               tmpStr = inStream.readline
               If InStr(tmpStr, "<" & strArg("ID") & ">") > 0 Then
                   i=i+1
                   If i = 2 Then
                       Exit do
                   End If
               Elseif i = 1 Then
                   oItem.text=tmpStr
                   decodedBytes=oItem.NodeTypedValue
                   outStream.Write decodedBytes
               End If
           Loop
           If IsEmpty(decodedBytes) Then
               If IsEmpty(i) Then
                   Wscript.Echo "ERROR: Identifier:'<" & strArg("ID") & ">' could not be found."
               Else
                   Wscript.Echo "ERROR: Identifier:'<" & strArg("ID") & ">' seems to be empty."
               End If
               WScript.Quit 1
           End if

           If strArg.Exists("OutFile") Then
               outStream.SaveToFile strArg("OutFile"),2
           Else
               outStream.Position = 0 : outStream.Type = 2 : outStream.CharSet = "us-ascii"
               WScript.Echo outStream.ReadText
           End If

           inStream.close
           outStream.close
       </script>
   </job>
</package>