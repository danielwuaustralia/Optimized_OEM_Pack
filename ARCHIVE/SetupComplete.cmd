@echo off

rem "C:\TEMP\setup.exe" /configure "C:\TEMP\O365Preview.xml"
"C:\TEMP\YAOCTRI_Installer.cmd" /s

rem https://forums.mydigitallife.net/threads/kms_vl_all-smart-activation-script.79535/
"C:\TEMP\KMS_VL_ALL_AIO.cmd" /s /a

rem https://forums.mydigitallife.net/threads/repack-visual-c-redistributable-runtimes-2023-03-16.76588/
"C:\TEMP\VisualCppRedist_AIO_x86_x64.exe" /ai

rem https://github.com/PowerShell/PowerShell/releases
%windir%\System32\msiexec.exe /package "C:\TEMP\PowerShell-7.3.4-win-x64.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=0 ENABLE_PSREMOTING=0 REGISTER_MANIFEST=1

rem DirectX
"C:\TEMP\DirectX\DXSETUP.exe" /silent

rem https://www.amd.com/en/support/chipsets/amd-socket-am4/b550
"C:\TEMP\AMD.exe" /S

rem https://vulkan.lunarg.com/sdk/home
"C:\TEMP\VulkanRT-1.3.243.0-Installer.exe" /S

rem https://github.com/mcmilk/7-Zip-zstd/releases
"C:\TEMP\7z22.01-zstd-x64.exe" /S /D="C:\Program Files\7-Zip"

rem Power Plan
powercfg -import "C:\TEMP\PowerPlan.pow"

rem root certificate
rem CertUtil -generateSSTFromWU "D:\自定义安装\$OEM$\$1\TEMP\roots.sst"
for /f "tokens=3 delims= " %%a in ('certutil -store authroot 2^>nul ^| findstr /l /c:"============"') do (
 CertUtil -delstore authroot 0
)
CertUtil -addstore -f root "C:\TEMP\roots.sst"

rem process lasso
rem start /wait C:\TEMP\ProcessLassoActivator.exe -makekeyfile -product:2 -output:"C:\TEMP"
rem start /wait C:\TEMP\processlassosetup64.exe /S /keyfile=C:\TEMP\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=service /language=SimpChinese
rem start /wait C:\TEMP\processlassosetup64.exe /S /keyfile=C:\TEMP\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=service /language=SimpChinese /importconfigfrom=C:\TEMP\prolasso.ini

rem https://learn.microsoft.com/en-us/troubleshoot/windows-server/performance/manually-rebuild-performance-counters
lodctr /r
lodctr /r
winmgmt /resyncperf