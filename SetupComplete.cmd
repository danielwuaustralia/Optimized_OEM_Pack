@setlocal DisableDelayedExpansion
@echo off
powercfg -h off
rem account policy
FOR /F "TOKENS=2 DELIMS==" %%A IN ('"WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount GET Name /VALUE"') DO (
CALL WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount WHERE Name='%%A' SET PasswordExpires=FALSE
)
rem safety policy
auditpol /set /subcategory:"Special Logon" /success:disable
auditpol /set /subcategory:"Audit Policy Change" /success:disable
auditpol /set /subcategory:"User Account Management" /success:disable

rem Powershell 7
%windir%\System32\msiexec.exe /package "%windir%\Setup\Scripts\SOFTWARE\PowerShell-7.2.0-preview.10-win-x64.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1

rem lav
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\LAVFilters-0.75.1-9.exe /VERYSILENT

rem vulkan runtime
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VulkanRT-1.2.189.2-Installer.exe /S

rem Visual Runtime
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VisualCppRedist_AIO_x86_x64.exe /ai /gm2

rem VSCode
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VSCodeSetup-x64-1.62.0-insider.exe /SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /mergetasks=!runcode

rem xnview
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\XnViewMP-win-x64.exe /VERYSILENT /SUPPRESSMSGBOXES

rem Startisback
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\StartAllBack_v2.9.94_Repack_for_Win11.exe /ai /gm2

rem chipset driver
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\AMD_Chipset_Software.exe /S

rem process lasso
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassoActivator.exe -makekeyfile -product:2 -output:"%WINDIR%\Setup\Scripts\SOFTWARE"
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassosetup64.exe /S /keyfile=%WINDIR%\Setup\Scripts\SOFTWARE\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=all /language=SimpChinese

rem time sync
start /wait C:\PROGRA~1\UpdateTime\UpdateTime_x64.exe /SI

rem windows 7 games
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\Windows7Games.exe /S

rem Nvidia Driver
start /wait %WINDIR%\Setup\Scripts\Driver\setup.exe /s

rem Office LTSC
"%windir%\Setup\Scripts\Office365\setup.exe" /configure "%windir%\Setup\Scripts\Office365\Configuration.xml"

rem KMS
call %windir%\Setup\Scripts\KMS.cmd

rem disable all power saving feature
"C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -NonInteractive -ExecutionPolicy Bypass "%WINDIR%\Setup\Scripts\DisablePowerSaving.ps1"

rem remove Edge
"C:\Program Files (x86)\Microsoft\Edge\Application\92.0.902.67\Installer\setup.exe" --uninstall --system-level --verbose-logging --force-uninstall --delete-profile
rem call %WINDIR%\Setup\Scripts\RemoveEdge.cmd

%windir%\System32\UsoClient.exe RefreshSettings
