@setlocal DisableDelayedExpansion
@echo off

rem Office LTSC
"%windir%\Setup\Scripts\Office365\setup.exe" /configure "%windir%\Setup\Scripts\Office365\Configuration.xml"

rem KMS
call %windir%\Setup\Scripts\KMS.cmd

rem account policy
FOR /F "TOKENS=2 DELIMS==" %%A IN ('"WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount GET Name /VALUE"') DO (
CALL WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount WHERE Name='%%A' SET PasswordExpires=FALSE
)
rem safety policy
auditpol /set /subcategory:"Special Logon" /success:disable
auditpol /set /subcategory:"Audit Policy Change" /success:disable
auditpol /set /subcategory:"User Account Management" /success:disable

rem register video filters
regsvr32.exe "%windir%\SysWOW64\XySubFilter.dll" /s
regsvr32.exe "%windir%\SysWOW64\VSFilter.dll" /s
regsvr32.exe "C:\Program Files\madVR\madVR64.ax" /s

rem Powershell 7
%windir%\System32\msiexec.exe /package "%windir%\Setup\Scripts\SOFTWARE\PowerShell-7.2.0-win-x64.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1

rem 7ZIP
%windir%\System32\msiexec.exe /package "%windir%\Setup\Scripts\SOFTWARE\7z2104-x64.msi" /quiet /norestart

rem lav
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\LAVFilters-0.75.1-10.exe /VERYSILENT

rem vulkan runtime
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VulkanRT-1.2.198.0-Installer.exe /S

rem Visual Runtime
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VisualCppRedist_AIO_x86_x64.exe /ai /gm2

rem DirectX Runtime
start /wait %WINDIR%\Setup\Scripts\DirectX\DXSETUP.exe /silent

rem Net Framework
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\windowsdesktop-runtime-6.0.0-win-x64.exe /quiet /norestart

rem VSCode
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VSCodeSetup-x64-1.63.0-insider.exe /SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /mergetasks=!runcode

rem chipset driver
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\AMD_Chipset_Drivers_3.10.22.706.exe /S

rem process lasso
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassoActivator.exe -makekeyfile -product:2 -output:"%WINDIR%\Setup\Scripts\SOFTWARE"
start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassosetup64.exe /S /keyfile=%WINDIR%\Setup\Scripts\SOFTWARE\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=all /language=SimpChinese

rem time sync
start /wait C:\PROGRA~1\UpdateTime\UpdateTime_x64.exe /SI

rem remove Edge
"C:\Program Files (x86)\Microsoft\Edge\Application\92.0.902.67\Installer\setup.exe" --uninstall --system-level --verbose-logging --force-uninstall --delete-profile

%windir%\System32\UsoClient.exe RefreshSettings
