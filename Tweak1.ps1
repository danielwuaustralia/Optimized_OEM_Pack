# Enable script logging.
# To stop logging just close the console or type "Stop-Transcript"
Start-Transcript -Path c:\Tweak1Log.txt -Force

# Assign the default preferences to their own variables so we can restore then once the function completes.
$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'

$Host.UI.RawUI.WindowTitle = "Tweak Script that need to be run with NSudo or Powerrun"

# Set the PowerShell Execution Policy to Unrestricted.
Set-ItemProperty -path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell" EnableScripts 1 -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\PowerShell") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\Windows\PowerShell" -force }
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\PowerShell") -ne $true) { New-Item "HKLM:\Software\Policies\Microsoft\Windows\PowerShell" -force }
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force

# Disable Scheduled Tasks.
Get-ScheduledTask -TaskPath '*' | Disable-ScheduledTask
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTask'
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTaskLogon'
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTaskNetwork'
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\UPnP' -TaskName 'UPnPHostConfig'
Enable-ScheduledTask -TaskName 'Process Lasso Core Engine Only'
Enable-ScheduledTask -TaskName 'Process Lasso Management Console (GUI)'
Enable-ScheduledTask -TaskName 'Session agent for Process Lasso'

# Disable additional per-user Services through the registry.
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *AarSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *BcastDVRUserService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *CaptureService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *cbdhsvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *CDPUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *ConsentUxUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *CredentialEnrollmentManagerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *DeviceAssociationBrokerSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *DevicePickerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *MessagingService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *OneSyncSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *PimIndexMaintenanceSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *PrintWorkflowUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *UdkUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *UnistoreSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *NPSMSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *PenService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *P9RdrService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Services" | Where-Object -Property Name -Like *webthreatdefusersvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force

# Enable uPNP.
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\FDResPub' -Name 'Start' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\fdPHost' -Name 'Start' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SSDPSRV' -Name 'Start' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\upnphost' -Name 'Start' -Value 2 -PropertyType DWord -Force
    
# Tablet Input
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TextInputManagementService' -Name 'Start' -Value 2 -PropertyType DWord -Force

# Disable main Services
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ALG' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppVClient' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\autotimesvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BcastDVRUserService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BTAGService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BthAvctpSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\bthserv' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BluetoothUserService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CaptureService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CertPropSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CscService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\diagsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DiagTrack' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\dmwappushservice' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DoSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DusmSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdate' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdatem' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\FrameServer' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CDPSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DsSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Fax' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\FrameServerMonitor' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\HvHost' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\icssvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iphlpsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MapsBroker' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MessagingService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MixedRealityOpenXRSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MSiSCSI' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NcbService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PcaSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PeerDistSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PenService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\perceptionsimulation' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PhoneSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NcaSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RasAuto' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RasMan' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RetailDemo' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RpcLocator' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SensorDataService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SensorService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SensrSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SessionEnv' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedRealitySvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SgrmBroker' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SCardSvr' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ScDeviceEnum' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SCPolicySvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SDRSVC' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SecurityHealthService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SEMgrSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Sense' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\shpamsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SmsRouter' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SNMPTRAP' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\spectrum' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\stisvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SysMain' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TermService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\tzautoupdate' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\UevAgentService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\UmRdpService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicguestinterface' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicheartbeat' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmickvpexchange' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicrdv' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicshutdown' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmictimesync' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicvmsession' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicvss' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WbioSrvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\W32Time' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wbengine' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Wecsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wercplsupport' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WerSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinRM' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wisvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WFDSConMgrSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WiaRpc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WpcMonSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WwanSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WSearch' -Name 'Start' -Value 4 -PropertyType DWord -Force

# xbox related
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\XblGameSave' -Name 'Start' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\XboxGipSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force


# Disable Drivers
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\3ware' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ADP80XX' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppleSSD' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\arcsas' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\b06bdrv' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\bcmfn2' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\cht4iscsi' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\cht4vbd' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ebdrv' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ebdrv0' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\HpSAMD' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ibbus' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ItSas35i' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LSI_SAS' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LSI_SAS2i' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\LSI_SAS3i' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\megasas2i' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\megasas35i' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\megasr' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mlx4_bus' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mpi3drvi' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\mvumis' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ndfltr' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\percsas2i' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\percsas3i' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\pvscsi' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SiSRaid2' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SiSRaid4' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SmartSAMD' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\stexstor' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vsmraid' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\VSTXRAID' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinMad' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinVerbs' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WacomPen' -Name 'Start' -Value 4 -PropertyType DWord -Force

# Remove Defender
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend -Recurse -Force
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\Sense -Recurse -Force
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\WdNisDrv -Recurse -Force
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\WdFilter -Recurse -Force
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\WdBoot -Recurse -Force

# remove Edge services
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdate -Recurse -Force
Remove-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdatem -Recurse -Force
