@echo off

rem "C:\TEMP\setup.exe" /configure "C:\TEMP\O365Preview.xml"
call "C:\TEMP\YAOCTRI_Installer.cmd" /s

rem https://forums.mydigitallife.net/threads/kms_vl_all-smart-activation-script.79535/
rem call "C:\TEMP\KMS_VL_ALL_AIO.cmd" /s /a

rem https://github.com/massgravel/Microsoft-Activation-Scripts/releases
call "C:\TEMP\MAS_AIO.cmd" /HWID /KMS-WindowsOffice /KMS-ActAndRenewalTask

rem root certificate
rem CertUtil -generateSSTFromWU "D:\自定义安装\$OEM$\$1\TEMP\roots.sst"
CertUtil -addstore -f root "C:\TEMP\roots.sst"

rem https://github.com/PowerShell/PowerShell/releases
%windir%\System32\msiexec.exe /package "C:\TEMP\PowerShell-7.3.3-win-x64.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=0 ENABLE_PSREMOTING=0 REGISTER_MANIFEST=1

rem DirectX
start /wait "C:\TEMP\DirectX\DXSETUP.exe" /silent

rem https://www.amd.com/en/support/chipsets/amd-socket-am4/b550
start /wait "C:\TEMP\AMD.exe" /S

rem https://vulkan.lunarg.com/sdk/home
start /wait "C:\TEMP\VulkanRT-1.3.243.0-Installer.exe" /S

rem https://www.7-zip.org/
"C:\TEMP\7z2201-x64.exe" /S /D="C:\Program Files\7-Zip"

rem Power Plan
powercfg -import "C:\TEMP\PowerPlan.pow"

rem process lasso
rem start /wait C:\TEMP\processlassoActivator.exe -makekeyfile -product:2 -output:"C:\TEMP"
rem start /wait C:\TEMP\processlassosetup64.exe /S /keyfile=C:\TEMP\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=service /language=SimpChinese
rem start /wait C:\TEMP\processlassosetup64.exe /S /keyfile=C:\TEMP\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=service /language=SimpChinese /importconfigfrom=C:\TEMP\prolasso.ini
