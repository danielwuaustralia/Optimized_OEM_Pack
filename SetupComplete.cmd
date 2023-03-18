@echo off
setlocal EnableDelayedExpansion

rem Office 365
"C:\TEMP\Office365\setup.exe" /configure "C:\TEMP\Office365\O365Preview.xml"

rem https://forums.mydigitallife.net/threads/kms_vl_all-smart-activation-script.79535/
call C:\TEMP\KMS_VL_ALL_AIO.cmd /x /s /a

rem https://forums.mydigitallife.net/threads/abbodi1406s-batch-scripts-repo.74197/page-113#post-1768876
CertUtil -addstore -f Root "C:\TEMP\vcredist\MicAssDesRoo_2011_03_23.crt"
CertUtil -addstore -f CA "C:\TEMP\vcredist\MicAssDesPCA2011_2011-06-28.crt"
start /wait "C:\TEMP\vcredist\2005\vcredist_x86.exe" /Q
start /wait "C:\TEMP\vcredist\2005\vcredist_x64.exe" /Q
start /wait "C:\TEMP\vcredist\2008\vcredist_x86.exe" /q
start /wait "C:\TEMP\vcredist\2008\vcredist_x64.exe" /q
start /wait "C:\TEMP\vcredist\2010\vcredist_x86.exe" /q /norestart
start /wait "C:\TEMP\vcredist\2010\vcredist_x64.exe" /q /norestart
start /wait "C:\TEMP\vcredist\2012\vcredist_x86.exe" /install /quiet /norestart
start /wait "C:\TEMP\vcredist\2012\vcredist_x64.exe" /install /quiet /norestart
start /wait "C:\TEMP\vcredist\2013\vcredist_x86.exe" /install /quiet /norestart
start /wait "C:\TEMP\vcredist\2013\vcredist_x64.exe" /install /quiet /norestart
rem https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170
start /wait "C:\TEMP\vcredist\VC_redist.x86.exe" /install /quiet /norestart
start /wait "C:\TEMP\vcredist\VC_redist.x64.exe" /install /quiet /norestart

rem https://github.com/PowerShell/PowerShell/releases
%windir%\System32\msiexec.exe /package "C:\TEMP\PowerShell-7.3.3-win-x64.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=0 ENABLE_PSREMOTING=0 REGISTER_MANIFEST=1

rem https://forums.mydigitallife.net/threads/repack-directx-end-user-runtime-june-2010.84785/
start /wait "C:\TEMP\DirectX.exe" /ai

rem https://www.amd.com/en/support/chipsets/amd-socket-am4/b550
start /wait "C:\TEMP\AMD.exe" /S

rem https://vulkan.lunarg.com/sdk/home
start /wait "C:\TEMP\VulkanRT-1.3.239.0-Installer.exe" /S

rem https://github.com/M2Team/NanaZip/releases
Dism /Online /Add-ProvisionedAppxPackage /PackagePath:"C:\TEMP\40174MouriNaruto.NanaZip_2.0.450.0_gnj4mf6z9tkrc.msixbundle" /SkipLicense

rem https://www.chiark.greenend.org.uk/~sgtatham/putty/snapshot.html
%windir%\System32\msiexec.exe /package "C:\TEMP\putty-64bit-2023-03-08-installer.msi" /quiet /qn /norestart

rem Power Plan
powercfg -import "C:\TEMP\PowerPlan.pow"

rem process lasso
rem start /wait C:\TEMP\processlassoActivator.exe -makekeyfile -product:2 -output:"C:\TEMP"
rem start /wait C:\TEMP\processlassosetup64.exe /S /keyfile=C:\TEMP\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=service /language=SimpChinese
rem start /wait C:\TEMP\processlassosetup64.exe /S /keyfile=C:\TEMP\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=service /language=SimpChinese /importconfigfrom=C:\TEMP\prolasso.ini

rem https://learn.microsoft.com/en-us/troubleshoot/windows-server/performance/manually-rebuild-performance-counters
lodctr /r
lodctr /r
winmgmt /resyncperf

%windir%\System32\UsoClient.exe RefreshSettings
