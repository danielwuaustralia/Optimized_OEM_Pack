@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion
rem Setupcomplete.cmd is ran after oobe and just before the desktop appears when using windows setup.
rem Oobe.cmd is run after the the screen about copying of files/expanding files part is shown via setup and the bit when it says it will reboot in x seconds...

rem Office 365
"%windir%\Setup\Scripts\Office365\setup.exe" /configure "%windir%\Setup\Scripts\Office365\O365Preview.xml"

rem KMS
call %windir%\Setup\Scripts\KMS.cmd
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\0ff1ce15-a989-479d-af46-f275c6370663" /f /v KeyManagementServiceName /t REG_SZ /d "10.0.0.1"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\0ff1ce15-a989-479d-af46-f275c6370663" /f /v KeyManagementServiceName /t REG_SZ /d "10.0.0.1" /reg:32

rem register video filters
regsvr32.exe "%windir%\SysWOW64\XySubFilter.dll" /s
regsvr32.exe "%windir%\SysWOW64\VSFilter.dll" /s
regsvr32.exe "C:\Program Files\madVR\madVR64.ax" /s

rem Visual Runtime
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VisualCppRedist_AIO_x86_x64.exe /ai /gm2

rem .Net 6.0
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\windowsdesktop-runtime-6.0.5-win-x64.exe /install /quiet /norestart

rem Powershell 7
%windir%\System32\msiexec.exe /package "%windir%\Setup\Scripts\SOFTWARE\PowerShell-7.3.0-preview.3-win-x64.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1

rem lav
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\LAVFilters-0.76.1-3.exe /VERYSILENT

rem vulkan runtime
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VulkanRT-1.3.211.0-Installer.exe /S

rem Direct X
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\DirectXRedist.exe /ai

rem process lasso
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassoActivator.exe -makekeyfile -product:2 -output:"%WINDIR%\Setup\Scripts\SOFTWARE"
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassosetup64.exe /S /keyfile=%WINDIR%\Setup\Scripts\SOFTWARE\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=all /language=SimpChinese

rem chipset driver
rem start /wait %WINDIR%\Setup\Scripts\SOFTWARE\AMD_Chipset_Software.exe /S

rem time sync
start /wait C:\PROGRA~1\UpdateTime\UpdateTime_x64.exe /SI

rem remove Edge
"C:\Program Files (x86)\Microsoft\Edge\Application\100.0.1185.36\Installer\setup.exe" --uninstall --system-level --verbose-logging --force-uninstall --delete-profile
"C:\Program Files (x86)\Microsoft\EdgeUpdate\MicrosoftEdgeUpdate.exe" /uninstall

del /f /q C:\Windows\Panther\unattend.xml
%windir%\System32\UsoClient.exe RefreshSettings
