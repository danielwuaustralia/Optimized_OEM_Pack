@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion

rem Office 365
"C:\TEMP\Office365\setup.exe" /configure "C:\TEMP\Office365\O365Preview.xml"

rem https://forums.mydigitallife.net/threads/kms_vl_all-smart-activation-script.79535/
call C:\TEMP\KMS_VL_ALL_AIO.cmd /x /s /a

rem https://github.com/PowerShell/PowerShell/releases
%windir%\System32\msiexec.exe /package "C:\TEMP\PowerShell-7.3.3-win-x64.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1
setx POWERSHELL_TELEMETRY_OPTOUT 1
ftype Microsoft.PowerShellScript.1="C:\Program Files\PowerShell\7\pwsh.exe" -NoLogo -ExecutionPolicy Bypass -File "%1" %*

rem https://www.amd.com/en/support/chipsets/amd-socket-am4/b550
start /wait C:\TEMP\AMD.exe /S

rem 7zip
start /wait C:\TEMP\7z2201-x64.exe /S /D="C:\Program Files\7-Zip"

rem https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170
start /wait C:\TEMP\vcredist\2005\vcredist_x86.exe /Q
start /wait C:\TEMP\vcredist\2005\vcredist_x64.exe /Q
start /wait C:\TEMP\vcredist\2008\vcredist_x86.exe /q
start /wait C:\TEMP\vcredist\2008\vcredist_x64.exe /q
start /wait C:\TEMP\vcredist\2010\vcredist_x86.exe /q /norestart
start /wait C:\TEMP\vcredist\2010\vcredist_x64.exe /q /norestart
start /wait C:\TEMP\vcredist\2012\vcredist_x86.exe /install /quiet /norestart
start /wait C:\TEMP\vcredist\2012\vcredist_x64.exe /install /quiet /norestart
start /wait C:\TEMP\vcredist\2013\vcredist_x86.exe /install /quiet /norestart
start /wait C:\TEMP\vcredist\2013\vcredist_x64.exe /install /quiet /norestart
start /wait C:\TEMP\vcredist\2022\VC_redist.x86.exe /install /quiet /norestart
start /wait C:\TEMP\vcredist\2022\VC_redist.x64.exe /install /quiet /norestart
rem https://forums.mydigitallife.net/threads/abbodi1406s-batch-scripts-repo.74197/page-113#post-1768876
CertUtil -addstore -f Root "C:\TEMP\vcredist\MicAssDesRoo_2011_03_23.crt"
CertUtil -addstore -f CA "C:\TEMP\vcredist\MicAssDesPCA2011_2011-06-28.crt"

rem https://dotnet.microsoft.com/en-us/download/dotnet/7.0
start /wait C:\TEMP\windowsdesktop-runtime-7.0.3-win-x64.exe /install /quiet /norestart

rem DirectX
start /wait C:\TEMP\DirectX\DXSETUP.exe /silent

rem https://vulkan.lunarg.com/sdk/home
start /wait C:\TEMP\VulkanRT-1.3.239.0-Installer.exe /S

rem https://github.com/Alex313031/Thorium-AVX2
start /wait C:\TEMP\thorium_AVX2_mini_installer.exe --install --silent --system-level

rem process lasso
rem start /wait C:\TEMP\processlassoActivator.exe -makekeyfile -product:2 -output:"C:\TEMP"
rem start /wait C:\TEMP\processlassosetup64.exe /S /keyfile=C:\TEMP\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=all /language=SimpChinese

rem https://learn.microsoft.com/en-us/troubleshoot/windows-server/performance/manually-rebuild-performance-counters
lodctr /r
lodctr /r
winmgmt /resyncperf

rem Power scheme optimized for optimal latency and performance
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 11111111-1111-1111-1111-111111111111
powercfg -changename 11111111-1111-1111-1111-111111111111 "PRO GAMER" "Power scheme optimized for optimal latency and performance"
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 0012ee47-9041-4b5d-9b77-535fba8b1442 d3d55efd-c1ff-424e-9dc3-441be7833010 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 0012ee47-9041-4b5d-9b77-535fba8b1442 d639518a-e56d-4345-8af2-b9f32fb26109 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 0012ee47-9041-4b5d-9b77-535fba8b1442 fc7372b6-ab2d-43ee-8797-15e9841f2cca 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 0d7dbae2-4294-402a-ba8e-26777e8488cd 309dce9b-bef4-4119-9921-a851fb12f0f4 1
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 238c9fa8-0aad-41ed-83f4-97be242c8f20 7bc4a2f9-d8fc-4469-b07b-33eb785aaca0 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 2a737441-1930-4402-8d77-b2bebba308a3 0853a681-27c8-4100-a2fd-82013e970683 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 2a737441-1930-4402-8d77-b2bebba308a3 d4e98f31-5ffe-4ce1-be31-1b38b384c009 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 2e601130-5351-4d9d-8e04-252966bad054 d502f7ee-1dc7-4efd-a55d-f04b6f5c0545 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 e73a048d-bf27-4f12-9731-8b2076e8891f 5dbb7c9f-38e9-40d2-9749-4f8a0e9f640f 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 e73a048d-bf27-4f12-9731-8b2076e8891f 8183ba9a-e910-48da-8769-14ae6dc1170a 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 e73a048d-bf27-4f12-9731-8b2076e8891f 9a66d8d7-4ff7-4ef9-b5a2-5a326ca2a469 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 e73a048d-bf27-4f12-9731-8b2076e8891f bcded951-187b-4d05-bccc-f7e51960c258 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 e73a048d-bf27-4f12-9731-8b2076e8891f f3c5027d-cd16-4930-aa6b-90db844a8f00 0
powercfg -setacvalueindex 11111111-1111-1111-1111-111111111111 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0

rem taskscheduler
for %%a in (
    "\Microsoft\Windows\ApplicationData\appuriverifierdaily"
    "\Microsoft\Windows\ApplicationData\appuriverifierinstall"
    "\Microsoft\Windows\ApplicationData\DsSvcCleanup"
    "\Microsoft\Windows\Application Experience\PcaPatchDbTask"
    "\Microsoft\Windows\Application Experience\StartupAppTask"
    "\Microsoft\Windows\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask"
    "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
    "\Microsoft\Windows\Defrag\ScheduledDefrag"
    "\Microsoft\Windows\Device Information\Device"
    "\Microsoft\Windows\Device Setup\Metadata Refresh"
    "\Microsoft\Windows\Diagnosis\Scheduled"
    "\Microsoft\Windows\DiskCleanup\SilentCleanup"
    "\Microsoft\Windows\DiskFootprint\Diagnostics"
    "\Microsoft\Windows\InstallService\ScanForUpdates"
    "\Microsoft\Windows\InstallService\ScanForUpdatesAsUser"
    "\Microsoft\Windows\InstallService\SmartRetry"
    "\Microsoft\Windows\Management\Provisioning\Cellular"
    "\Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents"
    "\Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic"
    "\Microsoft\Windows\MUI\LPRemove"
    "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
    "\Microsoft\Windows\Printing\EduPrintProv"
    "\Microsoft\Windows\PushToInstall\LoginCheck"
    "\Microsoft\Windows\Ras\MobilityManager"
    "\Microsoft\Windows\Registry\RegIdleBackup"
    "\Microsoft\Windows\RetailDemo\CleanupOfflineContent"
    "\Microsoft\Windows\Shell\IndexerAutomaticMaintenance"
    "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork"
    "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon"
    "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork"
    "\Microsoft\Windows\StateRepository\MaintenanceTasks"
    "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
    "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
    "\Microsoft\Windows\Time Zone\SynchronizeTimeZone"
    "\Microsoft\Windows\UpdateOrchestrator\Report policies"
    "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task"
    "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
    "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask"
    "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker"
    "\Microsoft\Windows\UPnP\UPnPHostConfig"
    "\Microsoft\Windows\WaaSMedic\PerformRemediation"
    "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
    "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange"
    "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
    "\Microsoft\Windows\Wininet\CacheTask"
    "\Microsoft\XblGameSave\XblGameSaveTask"
) do (
	schtasks /change /disable /TN %%a > nul 2>nul
)

%windir%\System32\UsoClient.exe RefreshSettings
