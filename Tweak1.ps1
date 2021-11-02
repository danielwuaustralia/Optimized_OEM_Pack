# Enable script logging.
# To stop logging just close the console or type "Stop-Transcript"
Start-Transcript -Path c:\Tweak1Log.txt -Force

# Assign the default preferences to their own variables so we can restore then once the function completes.
$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'

$Host.UI.RawUI.WindowTitle = "Tweak Script that need to be run with NSudo or Powerrun"

# Set the PowerShell Execution Policy to Unrestricted.
Set-ItemProperty -path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell" EnableScripts 1 -Force -Verbose
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\PowerShell") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\Windows\PowerShell" -force -Verbose }
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force -Verbose
if ((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\PowerShell") -ne $true) { New-Item "HKLM:\Software\Policies\Microsoft\Windows\PowerShell" -force -Verbose }
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force -Verbose

# Disable Scheduled Tasks.
Get-ScheduledTask -TaskPath '*' | Disable-ScheduledTask -Verbose
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTask' -Verbose
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTaskLogon' -Verbose
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTaskNetwork' -Verbose
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\UPnP' -TaskName 'UPnPHostConfig' -Verbose
Enable-ScheduledTask -TaskName 'Process Lasso Core Engine Only' -Verbose
Enable-ScheduledTask -TaskName 'Process Lasso Management Console (GUI)' -Verbose
Enable-ScheduledTask -TaskName 'Session agent for Process Lasso' -Verbose

# Disable additional per-user Services through the registry.
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *AarSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *BcastDVRUserService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *CaptureService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *cbdhsvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *CDPUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *ConsentUxUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *CredentialEnrollmentManagerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *DeviceAssociationBrokerSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *DevicePickerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *MessagingService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *OneSyncSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *PimIndexMaintenanceSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *PrintWorkflowUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *UdkUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *UnistoreSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *NPSMSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *PenService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *P9RdrService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *webthreatdefusersvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force -Verbose

# Enable uPNP.
Get-Service | Where-Object { $_.Name -eq "FDResPub" } | Set-Service -StartupType Automatic -Verbose
Get-Service | Where-Object { $_.Name -eq "fdPHost" } | Set-Service -StartupType Automatic -Verbose
Get-Service | Where-Object { $_.Name -eq "SSDPSRV" } | Set-Service -StartupType Automatic -Verbose
Get-Service | Where-Object { $_.Name -eq "upnphost" } | Set-Service -StartupType Automatic -Verbose
    
# Tablet Input
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TextInputManagementService' -Name 'Start' -Value 2 -PropertyType DWord -Force -Verbose

# Disable main Services
Get-Service | Where-Object { $_.Name -eq "AJRouter" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ALG" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "AppVClient" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "autotimesvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "BTAGService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "BthAvctpSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "bthserv" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "CaptureService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "CertPropSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "CscService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "diagnosticshub.standardcollector.service" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "diagsvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "DiagTrack" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "dmwappushservice" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "DoSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "DusmSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "edgeupdate" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "edgeupdatem" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "FrameServer" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "CDPSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "DiagTrack" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "DsSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "DusmSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "Fax" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "FrameServer" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "FrameServerMonitor" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "HvHost" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "icssvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "iphlpsvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "iaStorAfsService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "IrisService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "lfsvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "MapsBroker" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "MicrosoftEdgeElevationService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "MixedRealityOpenXRSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "MSiSCSI" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "NcbService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "PcaSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "PeerDistSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "PenService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "perceptionsimulation" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "PhoneSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "PimIndexMaintenanceSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "NcaSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "RasAuto" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "RasMan" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "RemoteAccess" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "RemoteRegistry" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "RetailDemo" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "RpcLocator" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SensorDataService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SensorService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SensrSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SessionEnv" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SharedAccess" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SharedRealitySvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SCardSvr" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ScDeviceEnum" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SCPolicySvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SDRSVC" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SecurityHealthService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ShellHWDetection" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SgrmBroker" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SEMgrSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "Sense" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "shpamsvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SmsRouter" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SNMPTRAP" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "spectrum" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "stisvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "TrkWks" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "TermService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "TroubleshootingSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "tzautoupdate" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "UevAgentService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "UmRdpService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vmicguestinterface" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vmicheartbeat" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vmickvpexchange" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vmicrdv" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vmicshutdown" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vmictimesync" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vmicvmsession" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vmicvss" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WalletService" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WbioSrvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "W32Time" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "wbengine" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WaaSMedicSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "webthreatdefsvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "webthreatdefusersvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "Wecsvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "wercplsupport" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WerSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WinRM" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "wisvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WFDSConMgrSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WiaRpc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WpcMonSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "wscsvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WMPNetworkSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WwanSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WSearch" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "XblGameSave" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "XboxGipSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "XboxNetApiSvc" } | Set-Service -StartupType Disabled -Verbose

# Disable Drivers
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\3ware' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ADP80XX' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppleSSD' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\arcsas' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\b06bdrv' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\bcmfn2' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\cht4iscsi' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\cht4vbd' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ebdrv' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ebdrv0' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\HpSAMD' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ibbus' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ItSas35i' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LSI_SAS' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LSI_SAS2i' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LSI_SAS3i' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\megasas2i' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\megasas35i' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\megasr' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mlx4_bus' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mpi3drvi' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mvumis' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ndfltr' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\percsas2i' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\percsas3i' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\pvscsi' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SiSRaid2' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SiSRaid4' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SmartSAMD' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\stexstor' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vsmraid' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\VSTXRAID' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinMad' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinVerbs' -Name 'Start' -Value 4 -PropertyType DWord -Force -Verbose

# Remove Defender
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend -Force -Verbose
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\Sense -Force -Verbose
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\WdNisDrv -Force -Verbose
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\WdFilter -Force -Verbose
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\WdBoot -Force -Verbose

# remove Edge services
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdate -Force -Verbose
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdatem -Force -Verbose
