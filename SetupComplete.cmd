@echo off
powercfg -h off
rem net accounts /maxpwage:unlimited
FOR /F "TOKENS=2 DELIMS==" %%A IN ('"WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount GET Name /VALUE"') DO (
CALL WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount WHERE Name='%%A' SET PasswordExpires=FALSE
)
auditpol /set /subcategory:"Special Logon" /success:disable
auditpol /set /subcategory:"Audit Policy Change" /success:disable
auditpol /set /subcategory:"User Account Management" /success:disable

rem Powershell 7
start /wait %windir%\System32\msiexec.exe /package "%windir%\Setup\Scripts\SOFTWARE\PowerShell.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1

start /wait %windir%\System32\msiexec.exe /package "%windir%\Setup\Scripts\SOFTWARE\ImageGlass.msi" /quiet /qn

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2005_x86.exe /q

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2005_x64.exe /q

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2008_x86.exe /qb

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2008_x64.exe /qb

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2010_x86.exe /passive /norestart

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2010_x64.exe /passive /norestart

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2012_x86.exe /passive /norestart

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2012_x64.exe /passive /norestart

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2013_x86.exe /passive /norestart

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2013_x64.exe /passive /norestart

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2015_2017_2019_2022_x86.exe /passive /norestart

start /wait %windir%\Setup\Scripts\SOFTWARE\VisualCRuntimes\vcredist2015_2017_2019_2022_x64.exe /passive /norestart

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\LAVFilters.exe /VERYSILENT

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\java.exe /s

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\vulkanruntime.exe /S

start /wait %windir%\System32\msiexec.exe /package %WINDIR%\Setup\Scripts\SOFTWARE\ImageGlass.msi /quiet /norestart

start /wait %windir%\System32\msiexec.exe /package %WINDIR%\Setup\Scripts\SOFTWARE\nodejs.msi /quiet /norestart

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\VSCode.exe /SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /mergetasks=!runcode

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\netruntime32.exe /install /quiet /norestart

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\netruntime64.exe /install /quiet /norestart

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\python.exe /quiet

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\TranslucentTB.exe /VERYSILENT /SP- /SUPPRESSMSGBOXES

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\firefox.exe /S /TaskbarShortcut=false /DesktopShortcut=true /MaintenanceService=false

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassoactivator.exe -makekeyfile -product:2 -output:"%WINDIR%\Setup\Scripts\SOFTWARE"

start /wait %WINDIR%\Setup\Scripts\SOFTWARE\processlassosetup64.exe /S /keyfile=%WINDIR%\Setup\Scripts\SOFTWARE\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=all /language=SimpChinese

start /wait C:\PROGRA~1\UpdateTime\UpdateTime_x64.exe /SI

"%windir%\Setup\Scripts\Office365\setup.exe" /configure "%windir%\Setup\Scripts\Office365\Configuration.xml"

call %windir%\Setup\Scripts\KMS.cmd

%windir%\System32\UsoClient.exe RefreshSettings
