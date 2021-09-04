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

rem VC Redist
start /wait %WINDIR%\Setup\Scripts\Redist\2005\vcredist_x86.exe /Q

start /wait %WINDIR%\Setup\Scripts\Redist\2005\vcredist_x64.exe /Q

start /wait %WINDIR%\Setup\Scripts\Redist\2008\vcredist_x86.exe /Q

start /wait %WINDIR%\Setup\Scripts\Redist\2008\vcredist_x64.exe /Q

start /wait %WINDIR%\Setup\Scripts\Redist\2010\vcredist_x86.exe /q /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2010\vcredist_x64.exe /q /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2012\vcredist_x86.exe /install /quiet /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2012\vcredist_x64.exe /install /quiet /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2013\vcredist_x86.exe /install /quiet /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2013\vcredist_x64.exe /install /quiet /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2015\vc_redist.x86.exe /q /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2015\vc_redist.x64.exe /q /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2017\vc_redist.x86.exe /q /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2017\vc_redist.x64.exe /q /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2019\VC_redist.x86.exe /q /norestart

start /wait %WINDIR%\Setup\Scripts\Redist\2019\VC_redist.x64.exe /q /norestart

rem Direct X 10
start /wait %WINDIR%\Setup\Scripts\DirectX\DXSETUP.exe /silent

rem install apps
%windir%\System32\msiexec.exe /package "%windir%\Setup\Scripts\SOFTWARE\PowerShell-7.2.0-preview.9-win-x64.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1

%windir%\System32\msiexec.exe /package "%windir%\Setup\Scripts\SOFTWARE\MicrosoftEdgeEnterpriseX64.msi" /quiet /norestart

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\dControl.exe /D

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\LAVFilters.exe /VERYSILENT

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\java.exe /s

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\vulkanruntime.exe /S

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VSCodeSetup-x64-1.61.0-insider.exe /SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /mergetasks=!runcode

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\AMD_Chipset_Software.exe /S

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\7z2103-x64.exe /S

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\MicrosoftEdgeWebView2RuntimeInstallerX64.exe /silent /install

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\TranslucentTB.exe /VERYSILENT /SP- /SUPPRESSMSGBOXES

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassoactivator.exe -makekeyfile -product:2 -output:"%WINDIR%\Setup\Scripts\SOFTWARE"

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassosetup64.exe /S /keyfile=%WINDIR%\Setup\Scripts\SOFTWARE\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=all /language=SimpChinese

start /wait C:\PROGRA~1\UpdateTime\UpdateTime_x64.exe /SI

"%windir%\Setup\Scripts\Office365\setup.exe" /configure "%windir%\Setup\Scripts\Office365\Configuration.xml"

call %windir%\Setup\Scripts\KMS.cmd

%windir%\System32\UsoClient.exe RefreshSettings
