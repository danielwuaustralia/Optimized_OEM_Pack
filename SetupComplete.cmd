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

rem DirectX
start /wait C:\TEMP\DirectX\DXSETUP.exe /silent

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

rem https://www.python.org/downloads/windows/
start /wait C:\TEMP\python-3.11.2-amd64.exe /quiet InstallAllUsers=1 AssociateFiles=1 Shortcuts=0 PrependPath=1 Include_test=0

rem https://vulkan.lunarg.com/sdk/home
start /wait C:\TEMP\VulkanRT-1.3.239.0-Installer.exe /S

rem Power Plan
powercfg -import "C:\TEMP\PowerPlan.pow"

rem process lasso
rem start /wait C:\TEMP\processlassoActivator.exe -makekeyfile -product:2 -output:"C:\TEMP"
rem start /wait C:\TEMP\processlassosetup64.exe /S /keyfile=C:\TEMP\prolasso.key /launch_gui=false /gui_start_type=all /governor_start_type=all /language=SimpChinese

rem https://learn.microsoft.com/en-us/troubleshoot/windows-server/performance/manually-rebuild-performance-counters
lodctr /r
lodctr /r
winmgmt /resyncperf

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
