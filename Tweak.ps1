# Enable script logging.
# To stop logging just close the console or type "Stop-Transcript"
Start-Transcript -Path c:\TweakLog.txt -Force

# Assign the default preferences to their own variables so we can restore then once the function completes.
$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'

# Set the PowerShell Execution Policy for the CurrentUser and LocalMachine to Unrestricted.
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Confirm:$false -Verbose
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine -Confirm:$false -Verbose

# Disable Scheduled Tasks.
Get-ScheduledTask -TaskPath '*' | Disable-ScheduledTask -Verbose
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTask' -Verbose
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTaskLogon' -Verbose
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTaskNetwork' -Verbose
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcTrigger' -Verbose
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
Get-Service | Where-Object { $_.Name -eq "TextInputManagementService" } | Set-Service -StartupType Automatic -Verbose

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
Get-Service | Where-Object { $_.Name -eq "SgrmBroker" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SCardSvr" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ScDeviceEnum" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SCPolicySvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SDRSVC" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SecurityHealthService" } | Set-Service -StartupType Disabled -Verbose
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
Get-Service | Where-Object { $_.Name -eq "WMPNetworkSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WwanSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WSearch" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "XblGameSave" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "XboxGipSvc" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "XboxNetApiSvc" } | Set-Service -StartupType Disabled -Verbose

# Disable Drivers
Get-Service | Where-Object { $_.Name -eq "3ware" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ADP80XX" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "AppleSSD" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "arcsas" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "b06bdrv" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "bcmfn2" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "cht4iscsi" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "cht4vbd" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ebdrv" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ebdrv0" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "HpSAMD" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ibbus" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ItSas35i" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "LSI_SAS" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "LSI_SAS2i" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "LSI_SAS3i" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "megasas2i" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "megasas35i" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "megasr" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "mlx4_bus" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "mpi3drvi" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "mvumis" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "ndfltr" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "percsas2i" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "percsas3i" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "pvscsi" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SiSRaid2" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SiSRaid4" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "SmartSAMD" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "stexstor" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "vsmraid" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "VSTXRAID" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WinMad" } | Set-Service -StartupType Disabled -Verbose
Get-Service | Where-Object { $_.Name -eq "WinVerbs" } | Set-Service -StartupType Disabled -Verbose

# Remove Defender
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WinDefend" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WdNisDrv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WdFilter" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WdBoot" /f

# remove Edge services
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem" /f

# Set Page File size
$pagefile = Get-WmiObject Win32_ComputerSystem -EnableAllPrivileges
$pagefile.AutomaticManagedPagefile = $false
$pagefile.put() | Out-Null
$pagefileset = Get-WmiObject Win32_pagefilesetting
$pagefileset.InitialSize = 40960
$pagefileset.MaximumSize = 40960
$pagefileset.Put() | Out-Null

# root certificate
# http://woshub.com/updating-trusted-root-certificates-in-windows-10/
# "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" -Command "certutil.exe -generateSSTFromWU %WINDIR%\Setup\Scripts\roots.sst"
Get-ChildItem -Path %WINDIR%\Setup\Scripts\roots.sst | Import-Certificate -CertStoreLocation Cert:\LocalMachine\Root -Verbose
reg add "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config" /v "ChainRevAccumulativeUrlRetrievalTimeoutMilliseconds" /t REG_DWORD /d "20000" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config" /v "ChainUrlRetrievalTimeoutMilliseconds" /t REG_DWORD /d "15000" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config" /v "CrossCertDownloadIntervalHours" /t REG_DWORD /d "168" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SystemCertificates\ChainEngine\Config" /v "Options" /t REG_DWORD /d "0" /f

# BCDEDIT Boot Tweaks
bcdedit /timeout 0
bcdedit /set advancedoptions no
bcdedit /set bootems no
bcdedit /set testsigning no
bcdedit /set disableelamdrivers yes
bcdedit /set bootmenupolicy Legacy
bcdedit /set hypervisorlaunchtype off
bcdedit /set vsmlaunchtype Off
bcdedit /set vm No
bcdedit /set isolatedcontext no
bcdedit /set allowedinmemorysettings 0x0

# Apply Best File System Tweaks
fsutil behavior set disable8dot3 1
fsutil behavior set disableencryption 1
fsutil behavior set disablelastaccess 1
fsutil behavior set EncryptPagingFile 0
fsutil behavior set symlinkEvaluation L2R:0 R2R:0 R2L:0

# Disable Uncessary System Devices
Get-PnpDevice | Where-Object { $_.FriendlyName -match 'Microsoft Kernel Debug Network Adapter' } | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice | Where-Object { $_.FriendlyName -match 'Microsoft Wi-Fi Direct Virtual Adapter' } | Disable-PnpDevice -Confirm:$false -Verbose

# Netsh
netsh int tcp set supplemental template=internet

# Enabling URO
netsh int udp set global uro=enabled
netsh int tcp set global rss=enable
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set global ecncapability=disable
netsh int tcp set global timestamps=enable
netsh int tcp set global initialrto=300
netsh int tcp set global rsc=disable
netsh int tcp set global fastopen=enable
netsh int tcp set global hystart=disable
netsh int tcp set global pacingprofile=off
netsh int ip set global minmtu=576
netsh int ip set global flowlabel=disable
netsh int tcp set supplemental internet congestionprovider=bbr2
netsh int tcp set supplemental internet enablecwndrestart=disable
netsh int ip set global icmpredirects=disabled
netsh int ip set global multicastforwarding=disabled
netsh int ip set global groupforwardedfragments=disable
netsh int tcp set security mpp=disabled profiles=disabled
netsh int tcp set heur forcews=disable

# Enable Winsock Send Autotuning (dynamic send-buffer)
netsh winsock set autotuning on

# Disabling Net Adapter QoS
Disable-NetAdapterQos -Name '*' -Verbose
# Disabling Net Adapter Power Management...
Disable-NetAdapterPowerManagement -Name '*' -Verbose
# Enabling Net Adapter Checksum Offload...
Enable-NetAdapterChecksumOffload -Name '*' -Verbose
# Disabling Net Adapter Encapsulated Packet Task Offload...
Disable-NetAdapterEncapsulatedPacketTaskOffload -Name '*' -Verbose
# Enabling Net Adapter IPsec Offload...
Enable-NetAdapterIPsecOffload -Name '*' -Verbose
# Disabling Net Adapter Large Send Offload...
Disable-NetAdapterLso -Name '*' -Verbose
# Enabling Net Adapter Packet Direct...
Enable-NetAdapterPacketDirect -Name '*' -Verbose
# Disabling Net Adapter Receive Side Coalescing...
Disable-NetAdapterRsc -Name '*' -Verbose
# Enabling Net Adapter Receive Side Scaling...
Enable-NetAdapterRss -Name '*' -Verbose
# Enable Teredo and 6to4 (Xbox LIVE fix)
Set-NetTeredoConfiguration -Type natawareclient -Verbose
netsh int teredo set state natawareclient
netsh int 6to4 set state state=enabled
netsh int teredo set state servername=win1910.ipv6.microsoft.com

# disable network protocal
Disable-NetAdapterBinding -Name '*' -ComponentID ms_lldp -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_server -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_msclient -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_rspndr -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_lltdio -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_pacer -Verbose
Enable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6 -Verbose

# Setting up 6to4 tunneling...
Set-Net6to4Configuration -State Enabled -AutoSharing Enabled -RelayState Enabled -RelayName '6to4.ipv6.microsoft.com' -Verbose
netsh int 6to4 set state state=enabled undoonstop=disabled
netsh int 6to4 set routing routing=enabled sitelocals=enabled

# Disable Memory Compression
Disable-MMAgent -Verbose
Get-Service 'SysMain' | Set-Service -StartupType Disabled -PassThru -Verbose

# Disable Windows File Compression
compact /CompactOs:never

# Removing Default Fax Printer
Remove-Printer -Name 'Fax' -ErrorAction SilentlyContinue -Verbose

# Allows (1) or disallows (0) characters from the extended character set (including diacritic characters) to be used in 8.3 character-length short file names on NTFS volumes
fsutil behavior set allowextchar 1

# Allows (1) or disallows (0) generation of a bug check when there is corruption on an NTFS volume. This feature can be used to prevent NTFS from silently deleting data when used with the Self-Healing NTFS feature
fsutil behavior set Bugcheckoncorrupt 0

# Disables (1) or enables (0) NTFS compression
fsutil behavior set disablecompression 1
cipher /d /s:C:\

# Disables (1) or enables (0) updates to the Last Access Time stamp on each directory when directories are listed on an NTFS volume
fsutil behavior set DisableLastAccess 1

# Encrypts (1) or doesn't encrypt (0) the memory paging file in the Windows operating system
fsutil behavior set encryptpagingfile 0

# Configures the internal cache levels of NTFS paged-pool memory and NTFS nonpaged-pool memory. Set to 1 or 2. When set to 1 (the default), NTFS uses the default amount of paged-pool memory. When set to 2, NTFS increases the size of its lookaside lists and memory thresholds. (A lookaside list is a pool of fixed-size memory buffers that the kernel and device drivers create as private memory caches for file system operations, such as reading a file.)
fsutil behavior set memoryusage 2

# Sets the size of the MFT Zone, and is expressed as a multiple of 200MB units. Set value to a number from 1 (default is 200 MB) to 4 (maximum is 800 MB)
fsutil behavior set mftzone 2

# Transactional Resource Manager
fsutil resource setavailable c:
fsutil resource setlog shrink 10 C:\
fsutil resource setavailable d:
fsutil resource setlog shrink 10 D:\
fsutil resource setautoreset true c:\
fsutil usn deletejournal /d /n c:

# Enable TRIM support for NTFS and ReFS file systems for SSD drives
fsutil behavior set disabledeletenotify 0
Invoke-Expression -Command ('FSUTIL BEHAVIOR SET DISABLEDELETENOTIFY NTFS 0')
$QueryReFS = Invoke-Expression -Command ('FSUTIL BEHAVIOR QUERY DISABLEDELETENOTIFY') | Select-String -Pattern ReFS
If ($QueryReFS) { Invoke-Expression -Command ('FSUTIL BEHAVIOR SET DISABLEDELETENOTIFY REFS 0') }

# no power saving for USB devices
$devicesUSB = Get-PnpDevice | Where-Object { $_.InstanceId -like "*USB\ROOT*" }  | 
ForEach-Object -Process {
    Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root\wmi 
}
foreach ( $device in $devicesUSB ) {
    Set-CimInstance -Namespace root\wmi -Query "SELECT * FROM MSPower_DeviceEnable WHERE InstanceName LIKE '%$($device.PNPDeviceID)%'" -Property @{Enable = $False } -PassThru
}

# Configure Power Plan Settings
powercfg -h off
powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 02f815b5-a5cf-4c84-bf20-649d1f75d3d8 4c793e7d-a264-42e1-87d3-7a0d2f523ccd 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 02f815b5-a5cf-4c84-bf20-649d1f75d3d8 4c793e7d-a264-42e1-87d3-7a0d2f523ccd 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0d7dbae2-4294-402a-ba8e-26777e8488cd 309dce9b-bef4-4119-9921-a851fb12f0f4 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0d7dbae2-4294-402a-ba8e-26777e8488cd 309dce9b-bef4-4119-9921-a851fb12f0f4 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 2
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 2
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 94d3a615-a899-4ac5-ae2b-e4d8f634367f 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 94d3a615-a899-4ac5-ae2b-e4d8f634367f 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 fbd9aa66-9553-4097-ba44-ed6e9d65eab8 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 fbd9aa66-9553-4097-ba44-ed6e9d65eab8 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 03680956-93bc-4294-bba6-4e0f09bb717f 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 03680956-93bc-4294-bba6-4e0f09bb717f 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 34c7b99f-9a6d-4b3c-8dc7-b6693b78cef4 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 34c7b99f-9a6d-4b3c-8dc7-b6693b78cef4 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 3
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 3
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 9a66d8d7-4ff7-4ef9-b5a2-5a326ca2a469 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 9a66d8d7-4ff7-4ef9-b5a2-5a326ca2a469 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 8183ba9a-e910-48da-8769-14ae6dc1170a 5
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 8183ba9a-e910-48da-8769-14ae6dc1170a 5
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f bcded951-187b-4d05-bccc-f7e51960c258 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f bcded951-187b-4d05-bccc-f7e51960c258 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f f3c5027d-cd16-4930-aa6b-90db844a8f00 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f f3c5027d-cd16-4930-aa6b-90db844a8f00 0

# Disable System Restore
disable-computerrestore -drive 'C:\' -Verbose
disable-computerrestore -drive 'D:\' -Verbose

# Stop DiagLog Event Trace sessions.
Get-EtwTraceSession -Name DiagLog | Stop-EtwTraceSession -Verbose

# Turn off Autologger and SQMLogger sessions after the next restart.
Get-AutologgerConfig -Name AutoLogger-Diagtrack-Listener, SQMLogger | Set-AutologgerConfig -Start 0 -Verbose

# Disable automatic Event Tracker Logs from Services that can use them as telemetry.
@('AITEventLog', 'AutoLogger-Diagtrack-Listener', 'DiagLog', 'EventLog-Microsoft-RMS-MSIPC-Debug', 'EventLog-Microsoft-Windows-WorkFolders-WHC', 'FamilySafetyAOT', 'LwtNetLog', 'Microsoft-Windows-Setup', 'NBSMBLOGGER', 'PEAuthLog', 'RdrLog', 'ReadyBoot', 'SetupPlatform', 'SQMLogger', 'TCPIPLOGGER', 'Tpm', 'WdiContextLog') | ForEach-Object -Process { Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\WMI\AutoLogger\$($PSItem)" -Name Start -Value 4 -Force }

# Remove any Event Tracker Logs and Security Health (Windows Defender) scan files.
@("$Env:SystemRoot\System32\LogFiles\WMI\AutoLogger-Diagtrack-Listener.etl", "$Env:ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\*.etl", "$Env:ProgramData\Microsoft\Diagnosis\ETLLogs\ShutdownLogger\*.etl", "$Env:ProgramData\Microsoft\Diagnosis\*.rbs", "$Env:ProgramData\Microsoft\Windows Defender\Scans\*") | Remove-Item -Recurse -Force -Verbose

# Delete the CompatTelRunner executable.
If (Test-Path -Path "$Env:SystemRoot\System32\CompatTelRunner.exe") {
    Invoke-Expression -Command ('TAKEOWN.EXE /F "{ 0 }" /A' -f "$Env:SystemRoot\System32\CompatTelRunner.exe")
    Invoke-Expression -Command ('ICACLS.EXE "{ 0 }" /GRANT *S-1-5-32-544:F' -f "$Env:SystemRoot\System32\CompatTelRunner.exe")
    Stop-Process -Name CompatTelRunner -Force
    Remove-Item -Path "$Env:SystemRoot\System32\CompatTelRunner.exe" -Force
    If (!(Test-Path -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe")) { New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" -ItemType Directory -Force }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" -Name Debugger -Value "%SystemRoot%\System32\taskkill.exe" -Type ExpandString -Force
}

# Enable TRIM support for NTFS and ReFS file systems for SSD drives.
Invoke-Expression -Command ('FSUTIL BEHAVIOR SET DISABLEDELETENOTIFY NTFS 0')
$QueryReFS = Invoke-Expression -Command ('FSUTIL BEHAVIOR QUERY DISABLEDELETENOTIFY') | Select-String -Pattern ReFS
If ($QueryReFS) { Invoke-Expression -Command ('FSUTIL BEHAVIOR SET DISABLEDELETENOTIFY REFS 0') }

# Disable Swapfile.sys which can improve SSD performance.
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name SwapfileControl -Value 0 -Force

# Disable Prefetch and Superfetch (optimal for SSD drives).
If (!(Test-Path -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters")) { New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" -ItemType Directory -Force }
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" -Name EnablePrefetcher -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" -Name EnableSuperfetch -Value 0 -Force

# Disable hibernation.
Invoke-Expression -Command ('POWERCFG -H OFF')

# Disable the automatic disabling of network cards to save power.
Get-NetAdapter -Physical | Get-NetAdapterPowerManagement | Where-Object -Property AllowComputerToTurnOffDevice -NE Unsupported | ForEach-Object -Process {
    $PSItem.AllowComputerToTurnOffDevice = 'Disabled'
    $PSItem | Set-NetAdapterPowerManagement
}

# Use the total amount of memory installed on the device to modify the svchost.exe split threshold to reduce the amount of svchost.exe processes that run simultaneously.
$Memory = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1KB
If ($Memory -is [Double]) { Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name SvcHostSplitThresholdInKB -Value $Memory -Force }

# disable the Reserved Storage feature
Set-WindowsReservedStorageState -State Disabled
    
# Remove unuseful Right Click Menu
reg delete "HKCR\SystemFileAssociations\.3mf\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.bmp\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.fbx\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.gif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jfif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpe\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpg\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.png\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.tif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.tiff\Shell\3D Edit" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\EPP" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\EPP" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\EPP" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Open With EncryptionMenu" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Open With" /f
reg delete "HKCR\.lnk\ShellNew" /f
reg delete "HKCR\Folder\shell\pintohome" /f
reg delete "HKCR\Windows.IsoFile\shell\mount" /f
reg delete "HKCR\*\shell\UpdateEncryptionSettingsWork" /f
reg delete "HKCR\Directory\shell\UpdateEncryptionSettings" /f
reg delete "HKCR\Folder\shell\opennewtab" /f
reg delete "HKCR\Folder\shell\opennewwindow" /f
reg delete "HKCR\.library-ms\ShellNew" /f
reg delete "HKCR\.bmp\ShellNew" /f
reg delete "HKCR\.contact\ShellNew" /f
reg delete "HKCR\.rtf\ShellNew" /f
reg delete "HKCR\.zip\CompressedFolder\ShellNew" /f
reg delete "HKCR\Windows.IsoFile\shell\burn" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\CopyHookHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\PropertySheetHandlers\Sharing" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\Sharing" /f
reg delete "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\{ 90AA3A4E-1CBA-4233-B8BB-535773D48449 }" /f
reg delete "HKCR\Folder\ShellEx\ContextMenuHandlers\Library Location" /f
reg delete "HKCR\SystemFileAssociations\.bmp\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.dib\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.gif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jfif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpe\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpg\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.png\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.tif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.tiff\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.wdp\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.avci\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.bmp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.dds\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.dib\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.gif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.heic\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.heif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.ico\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jfif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpe\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpg\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jxr\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.png\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.rle\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.tif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.tiff\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.wdp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.webp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\{ D6791A63-E7E2-4fee-BF52-5DED8E86E9B8 }" /f
reg delete "HKCR\cmdfile\shell\runasuser" /f
reg delete "HKCR\batfile\shell\runasuser" /f
reg delete "HKCR\exefile\shell\runasuser" /f
reg delete "HKCR\mscfile\shell\runasuser" /f
reg delete "HKCR\Msi.Package\shell\runasuser" /f
reg delete "HKCR\SystemFileAssociations\.glb\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.obj\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.ply\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.stl\Shell\3D Edit\command" /f
reg delete "HKCR\Folder\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\exefile\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\Microsoft.Website\ShellEx\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\mscfile\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{ 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\CLSID\ { 450D8FBA-AD25-11D0-98A8-0800361B1103 }\shellex\PropertySheetHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\Directory\shellex\PropertySheetHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\CLSID\ { 450D8FBA-AD25-11D0-98A8-0800361B1103 }\shellex\ContextMenuHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\CompressedFolder\ShellEx\ContextMenuHandlers\ { b8cdcb65-b1bf-4b42-9428-1dfdb7ee92af }" /f
reg delete "HKCR\CLSID\ { 09A47860-11B0-4DA5-AFA5-26D86198A780 }" /f

# extra
reg add "HKCR\CLSID\ { 018D5C66-4533-4307-9B53-224DE2ED1FE6 }" /v "System.IsPinnedToNameSpaceTree" /d "0" /t REG_DWORD /f
reg add "HKCR\Wow6432Node\{ 018D5C66-4533-4307-9B53-224DE2ED1FE6 }" /v "System.IsPinnedToNameSpaceTree" /d "0" /t REG_DWORD /f
reg add "HKCR\*" /v "DefaultDropEffect" /t REG_DWORD /d "2" /f
reg add "HKCR\AllFilesystemObjects" /v "DefaultDropEffect" /t REG_DWORD /d "2" /f
reg add "HKCR\Drive\shell\encrypt-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKCR\Drive\shell\encrypt-bde-elev" /v "LegacyDisable" /t REG_SZ /d "" /f

# Font
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "MS Sans Serif 8,10,12,14,18,24" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "MS Sans Serif 8,10,12,14,18,24 (120)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "MS Serif 8,10,12,14,18,24" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "MS Serif 8,10,12,14,18,24 (120)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Black (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Black Italic (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Bold (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Bold Italic (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Historic (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Italic (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Light (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Light Italic (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Semibold (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Semibold Italic (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Semilight (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Semilight Italic (TrueType)" /f
# reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Segoe UI Variable (TrueType)" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Helv" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Helvetica" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "MS Shell Dlg 2" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Tahoma Armenian" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Times" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Tms Rmn" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "MS Shell Dlg" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "FangSong_GB2312" /t REG_SZ /d "Microsoft YaHei UI" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "KaiTi_GB2312" /t REG_SZ /d "Microsoft YaHei UI" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "SimSun" /t REG_SZ /d "Microsoft YaHei UI" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Segoe UI" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "MS Serif" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "MS Sans Serif" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Segoe UI Bold" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "System" /t REG_SZ /d "Arial" /f
# reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Tahoma" /t REG_SZ /d "Arial" /f
    
# Set User TEMP to Windows TEMP
reg add "HKCU\Environment" /v "TEMP" /t reg_SZ /d "C:\TEMP" /f
reg add "HKCU\Environment" /v "TMP" /t reg_SZ /d "C:\TEMP" /f

# Potplayer Setting
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscAntenaList" /v "0" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscAntenaList" /v "1" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscAntenaList" /v "2" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscAntenaList" /v "3" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscAntenaList" /v "4" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscAntenaList" /v "5" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscAntenaList" /v "6" /t REG_SZ /d "" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscCableList" /v "0" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscCableList" /v "1" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscCableList" /v "2" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscCableList" /v "3" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscCableList" /v "4" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscCableList" /v "5" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\AtscCableList" /v "6" /t REG_SZ /d "" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\BMItem_0" /ve /t REG_SZ /d "/f" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Dialog324" /v "WindowPosition" /t REG_SZ /d "856,371,1714,973" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbcList" /v "0" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbcList" /v "1" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbcList" /v "2" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbcList" /v "3" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbcList" /v "4" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbcList" /v "5" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbcList" /v "6" /t REG_SZ /d "" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbsList" /v "0" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbsList" /v "1" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbsList" /v "2" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbsList" /v "3" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbsList" /v "4" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbsList" /v "5" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbsList" /v "6" /t REG_SZ /d "" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbtList" /v "0" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbtList" /v "1" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbtList" /v "2" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbtList" /v "3" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbtList" /v "4" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbtList" /v "5" /t REG_SZ /d "1|0|0|0|0|0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\DvbtList" /v "6" /t REG_SZ /d "" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0000" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0000" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0000" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0000" /v "Name" /t REG_SZ /d "LAV Audio Decoder" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0000" /v "CLSID" /t REG_SZ /d "{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0000" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0000" /v "Merit" /t REG_DWORD /d "3154116863" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0000" /v "MeritHi" /t REG_DWORD /d "454720" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0001" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0001" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0001" /v "DisplayName" /t REG_SZ /d "@device:dmo:{BBEEA841-0A63-4F52-A7AB-A9B3A84ED38A}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0001" /v "Name" /t REG_SZ /d "MP3 Decoder DMO" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0001" /v "CLSID" /t REG_SZ /d "{94297043-BD82-4DFD-B0DE-8177739C6D20}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0001" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0001" /v "Merit" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0001" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0002" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0002" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0002" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{4A2286E0-7BEF-11CE-9BD9-0000E202599C}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0002" /v "Name" /t REG_SZ /d "MPEG Audio Decoder" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0002" /v "CLSID" /t REG_SZ /d "{4A2286E0-7BEF-11CE-9BD9-0000E202599C}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0002" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0002" /v "Merit" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0002" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0003" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0003" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0003" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{FEB50740-7BEF-11CE-9BD9-0000E202599C}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0003" /v "Name" /t REG_SZ /d "MPEG Video Decoder" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0003" /v "CLSID" /t REG_SZ /d "{FEB50740-7BEF-11CE-9BD9-0000E202599C}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0003" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0003" /v "Merit" /t REG_DWORD /d "256" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0003" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0004" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0004" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0004" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{EE30215D-164F-4A92-A4EB-9D4C13390F9F}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0004" /v "Name" /t REG_SZ /d "LAV Video Decoder" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0004" /v "CLSID" /t REG_SZ /d "{EE30215D-164F-4A92-A4EB-9D4C13390F9F}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0004" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0004" /v "Merit" /t REG_DWORD /d "261888" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0004" /v "MeritHi" /t REG_DWORD /d "201330176" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0005" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0005" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0005" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{212690FB-83E5-4526-8FD7-74478B7939CD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0005" /v "Name" /t REG_SZ /d "Microsoft DTV-DVD Video Decoder" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0005" /v "CLSID" /t REG_SZ /d "{212690FB-83E5-4526-8FD7-74478B7939CD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0005" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0005" /v "Merit" /t REG_DWORD /d "13056" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0005" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0006" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0006" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0006" /v "DisplayName" /t REG_SZ /d "@device:dmo:{2A11BAE2-FE6E-4249-864B-9E9ED6E8DBC2}{4A69B442-28BE-4991-969C-B500ADF5D8A8}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0006" /v "Name" /t REG_SZ /d "Mpeg4s Decoder DMO" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0006" /v "CLSID" /t REG_SZ /d "{94297043-BD82-4DFD-B0DE-8177739C6D20}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0006" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0006" /v "Merit" /t REG_DWORD /d "3072" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0006" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0007" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0007" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0007" /v "DisplayName" /t REG_SZ /d "@device:dmo:{82D353DF-90BD-4382-8BC2-3F6192B76E34}{4A69B442-28BE-4991-969C-B500ADF5D8A8}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0007" /v "Name" /t REG_SZ /d "WMVideo Decoder DMO" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0007" /v "CLSID" /t REG_SZ /d "{94297043-BD82-4DFD-B0DE-8177739C6D20}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0007" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0007" /v "Merit" /t REG_DWORD /d "245760" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0007" /v "MeritHi" /t REG_DWORD /d "3072" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0008" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0008" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0008" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{1B544C20-FD0B-11CE-8C63-00AA0044B51E}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0008" /v "Name" /t REG_SZ /d "AVI Splitter" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0008" /v "CLSID" /t REG_SZ /d "{1B544C20-FD0B-11CE-8C63-00AA0044B51E}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0008" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0008" /v "Merit" /t REG_DWORD /d "262144" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0008" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0009" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0009" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0009" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{336475D0-942A-11CE-A870-00AA002FEAB5}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0009" /v "Name" /t REG_SZ /d "MPEG-I Stream Splitter" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0009" /v "CLSID" /t REG_SZ /d "{336475D0-942A-11CE-A870-00AA002FEAB5}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0009" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0009" /v "Merit" /t REG_DWORD /d "34603008" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0009" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0010" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0010" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0010" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{AFB6C280-2C41-11D3-8A60-0000F81E0E4A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0010" /v "Name" /t REG_SZ /d "MPEG-2 Demultiplexer" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0010" /v "CLSID" /t REG_SZ /d "{AFB6C280-2C41-11D3-8A60-0000F81E0E4A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0010" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0010" /v "Merit" /t REG_DWORD /d "6291456" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0010" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0011" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0011" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0011" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{3AE86B20-7BE8-11D1-ABE6-00A0C905F375}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0011" /v "Name" /t REG_SZ /d "MPEG-2 Splitter" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0011" /v "CLSID" /t REG_SZ /d "{3AE86B20-7BE8-11D1-ABE6-00A0C905F375}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0011" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0011" /v "Merit" /t REG_DWORD /d "2097152" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0011" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0012" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0012" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0012" /v "DisplayName" /t REG_SZ /d "@device:dmo:{2EEB4ADF-4578-4D10-BCA7-BB955F56320A}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0012" /v "Name" /t REG_SZ /d "WMAudio Decoder DMO" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0012" /v "CLSID" /t REG_SZ /d "{94297043-BD82-4DFD-B0DE-8177739C6D20}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0012" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0012" /v "Merit" /t REG_DWORD /d "1006632960" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0012" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0013" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0013" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0013" /v "DisplayName" /t REG_SZ /d "@device:dmo:{5210F8E4-B0BB-47C3-A8D9-7B2282CC79ED}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0013" /v "Name" /t REG_SZ /d "WMAPro over S/PDIF DMO" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0013" /v "CLSID" /t REG_SZ /d "{94297043-BD82-4DFD-B0DE-8177739C6D20}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0013" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0013" /v "Merit" /t REG_DWORD /d "268435456" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0013" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0014" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0014" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0014" /v "DisplayName" /t REG_SZ /d "@device:dmo:{7BAFB3B1-D8F4-4279-9253-27DA423108DE}{4A69B442-28BE-4991-969C-B500ADF5D8A8}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0014" /v "Name" /t REG_SZ /d "WMV Screen decoder DMO" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0014" /v "CLSID" /t REG_SZ /d "{94297043-BD82-4DFD-B0DE-8177739C6D20}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0014" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0014" /v "Merit" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0014" /v "MeritHi" /t REG_DWORD /d "12" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0015" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0015" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0015" /v "DisplayName" /t REG_SZ /d "@device:dmo:{874131CB-4ECC-443B-8948-746B89595D20}{57F2DB8B-E6BB-4513-9D43-DCD2A6593125}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0015" /v "Name" /t REG_SZ /d "WMSpeech Decoder DMO" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0015" /v "CLSID" /t REG_SZ /d "{94297043-BD82-4DFD-B0DE-8177739C6D20}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0015" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0015" /v "Merit" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0015" /v "MeritHi" /t REG_DWORD /d "65536" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0016" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0016" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0016" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{D51BD5A1-7548-11CF-A520-0080C77EF58A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0016" /v "Name" /t REG_SZ /d "Wave Parser" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0016" /v "CLSID" /t REG_SZ /d "{D51BD5A1-7548-11CF-A520-0080C77EF58A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0016" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0016" /v "Merit" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0016" /v "MeritHi" /t REG_DWORD /d "1048576" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0017" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0017" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0017" /v "DisplayName" /t REG_SZ /d "/f" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0017" /v "Name" /t REG_SZ /d "LAV Splitter Source" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0017" /v "CLSID" /t REG_SZ /d "{B98D13E7-55DB-4385-A33D-09FD1BA26338}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0017" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0017" /v "Merit" /t REG_DWORD /d "1140588544" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0017" /v "MeritHi" /t REG_DWORD /d "1048707" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\ExtCodec\0018" /v "Type" /t REG_DWORD /d "4294967294" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "Name" /t REG_SZ /d "LAV Audio Decoder" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "CLSID" /t REG_SZ /d "{E8E73B6B-4CB3-44A4-BE99-4F7BCB96E491}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0000" /t REG_SZ /d "{ED0B916A-044D-11D1-AA78-00C04FC31D60}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0001" /t REG_SZ /d "{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0002" /t REG_SZ /d "{36523B13-8EE5-11D1-8CA3-0060B057664A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0003" /t REG_SZ /d "{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0004" /t REG_SZ /d "{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0005" /t REG_SZ /d "{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0006" /t REG_SZ /d "{ED0B916A-044D-11D1-AA78-00C04FC31D60}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0007" /t REG_SZ /d "{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0008" /t REG_SZ /d "{36523B13-8EE5-11D1-8CA3-0060B057664A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0009" /t REG_SZ /d "{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0010" /t REG_SZ /d "{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0011" /t REG_SZ /d "{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0012" /t REG_SZ /d "{ED0B916A-044D-11D1-AA78-00C04FC31D60}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0013" /t REG_SZ /d "{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0014" /t REG_SZ /d "{36523B13-8EE5-11D1-8CA3-0060B057664A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0015" /t REG_SZ /d "{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0016" /t REG_SZ /d "{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0017" /t REG_SZ /d "{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0018" /t REG_SZ /d "{ED0B916A-044D-11D1-AA78-00C04FC31D60}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0019" /t REG_SZ /d "{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0020" /t REG_SZ /d "{36523B13-8EE5-11D1-8CA3-0060B057664A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0021" /t REG_SZ /d "{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0022" /t REG_SZ /d "{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0023" /t REG_SZ /d "{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0024" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0025" /t REG_SZ /d "{000000FF-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0026" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0027" /t REG_SZ /d "{000001FF-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0028" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0029" /t REG_SZ /d "{00001602-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0030" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0031" /t REG_SZ /d "{4134504D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0032" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0033" /t REG_SZ /d "{6134706D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0034" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0035" /t REG_SZ /d "{53544441-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0036" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0037" /t REG_SZ /d "{00001600-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0038" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0039" /t REG_SZ /d "{00001601-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0040" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0041" /t REG_SZ /d "{00001610-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0042" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0043" /t REG_SZ /d "{20534C41-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0044" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0045" /t REG_SZ /d "{E06D802C-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0046" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0047" /t REG_SZ /d "{A7FB87AF-2D02-42FB-A4D4-05CD93843BDD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0048" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0049" /t REG_SZ /d "{71CFA727-37E4-404A-AEC0-34842532EFF7}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0050" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0051" /t REG_SZ /d "{EB27CEC4-163E-4CA3-8B74-8E25F91B517E}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0052" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0053" /t REG_SZ /d "{00002000-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0054" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0055" /t REG_SZ /d "{E06D8033-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0056" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0057" /t REG_SZ /d "{00002001-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0058" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0059" /t REG_SZ /d "{A2E58EB7-0FA9-48BB-A40C-FA0E156D0645}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0060" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0061" /t REG_SZ /d "{E436EB80-524F-11CE-9F53-0020AF0BA770}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0062" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0063" /t REG_SZ /d "{E436EB81-524F-11CE-9F53-0020AF0BA770}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0064" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0065" /t REG_SZ /d "{00000050-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0066" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0067" /t REG_SZ /d "{E06D802B-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0068" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0069" /t REG_SZ /d "{00000055-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0070" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0071" /t REG_SZ /d "{0000F1AC-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0072" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0073" /t REG_SZ /d "{1541C5C0-CDDF-477D-BC0A-86F8AE7F8354}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0074" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0075" /t REG_SZ /d "{8D2FD10B-5841-4A6B-8905-588FEC1ADED9}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0076" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0077" /t REG_SZ /d "{000077A1-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0078" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0079" /t REG_SZ /d "{00005756-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0080" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0081" /t REG_SZ /d "{20504C4D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0082" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0083" /t REG_SZ /d "{63616C61-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0084" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0085" /t REG_SZ /d "{B82196E9-1B3F-4796-A636-46239087B38E}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0086" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0087" /t REG_SZ /d "{33534541-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0088" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0089" /t REG_SZ /d "{E06D8032-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0090" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0091" /t REG_SZ /d "{A23EB7FC-510B-466F-9FBF-5F878F69347C}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0092" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0093" /t REG_SZ /d "{949F97FD-56F6-4527-B4AE-DDEB375AB80F}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0094" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0095" /t REG_SZ /d "{454E4F4E-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0096" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0097" /t REG_SZ /d "{20776172-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0098" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0099" /t REG_SZ /d "{736F7774-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0100" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0101" /t REG_SZ /d "{74776F73-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0102" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0103" /t REG_SZ /d "{34326E69-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0104" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0105" /t REG_SZ /d "{32336E69-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0106" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0107" /t REG_SZ /d "{32336C66-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0108" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0109" /t REG_SZ /d "{34366C66-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0110" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0111" /t REG_SZ /d "{696E3234-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0112" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0113" /t REG_SZ /d "{696E3332-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0114" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0115" /t REG_SZ /d "{666C3332-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0116" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0117" /t REG_SZ /d "{666C3634-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0118" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0119" /t REG_SZ /d "{00000160-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0120" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0121" /t REG_SZ /d "{00000161-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0122" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0123" /t REG_SZ /d "{00000162-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0124" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0125" /t REG_SZ /d "{00000163-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0126" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0127" /t REG_SZ /d "{4B4F4F43-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0128" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0129" /t REG_SZ /d "{43414152-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0130" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0131" /t REG_SZ /d "{50434152-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0132" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0133" /t REG_SZ /d "{52504953-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0134" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0135" /t REG_SZ /d "{00000130-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0136" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0137" /t REG_SZ /d "{54454E44-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0138" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0139" /t REG_SZ /d "{385F3832-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0140" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0141" /t REG_SZ /d "{345F3431-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0142" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0143" /t REG_SZ /d "{464C4152-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0144" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0145" /t REG_SZ /d "{0000A109-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0146" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0147" /t REG_SZ /d "{0000704F-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0148" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0149" /t REG_SZ /d "{5355504F-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0150" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0151" /t REG_SZ /d "{726D6173-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0152" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0153" /t REG_SZ /d "{4C4C454E-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0154" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0155" /t REG_SZ /d "{00000006-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0156" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0157" /t REG_SZ /d "{00000007-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0158" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0159" /t REG_SZ /d "{00000031-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0160" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0161" /t REG_SZ /d "{00000002-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0162" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0163" /t REG_SZ /d "{00000022-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0164" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0165" /t REG_SZ /d "{324D4451-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0166" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0167" /t REG_SZ /d "{00000075-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0168" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0169" /t REG_SZ /d "{00000270-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0170" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0171" /t REG_SZ /d "{43525441-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0172" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0173" /t REG_SZ /d "{E923AABF-CB58-4471-A119-FFFA01E4CE62}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0174" /t REG_SZ /d "{73647561-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "mod0175" /t REG_SZ /d "{AFBC2343-3DCB-4047-9655-E1E62A61B1C5}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "FilterType" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "Merit" /t REG_DWORD /d "8388611" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0000" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0001" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0001" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0001" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{B98D13E7-55DB-4385-A33D-09FD1BA26338}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0001" /v "Name" /t REG_SZ /d "LAV Splitter Source" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0001" /v "CLSID" /t REG_SZ /d "{B98D13E7-55DB-4385-A33D-09FD1BA26338}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0001" /v "FilterType" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0001" /v "Merit" /t REG_DWORD /d "8388612" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0001" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{EE30215D-164F-4A92-A4EB-9D4C13390F9F}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "Name" /t REG_SZ /d "LAV Video Decoder" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "CLSID" /t REG_SZ /d "{EE30215D-164F-4A92-A4EB-9D4C13390F9F}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0000" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0001" /t REG_SZ /d "{34363248-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0002" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0003" /t REG_SZ /d "{34363268-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0004" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0005" /t REG_SZ /d "{34363258-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0006" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0007" /t REG_SZ /d "{34363278-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0008" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0009" /t REG_SZ /d "{31435641-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0010" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0011" /t REG_SZ /d "{31637661-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0012" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0013" /t REG_SZ /d "{31564343-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0014" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0015" /t REG_SZ /d "{8D2D71CB-243F-45E3-B2D8-5FD7967EC09B}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0016" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0017" /t REG_SZ /d "{43564D41-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0018" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0019" /t REG_SZ /d "{3143564D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0020" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0021" /t REG_SZ /d "{43564548-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0022" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0023" /t REG_SZ /d "{31435648-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0024" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0025" /t REG_SZ /d "{30314D48-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0026" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0027" /t REG_SZ /d "{E436EB81-524F-11CE-9F53-0020AF0BA770}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0028" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0029" /t REG_SZ /d "{E436EB86-524F-11CE-9F53-0020AF0BA770}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0030" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0031" /t REG_SZ /d "{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0032" /t REG_SZ /d "{ED0B916A-044D-11D1-AA78-00C04FC31D60}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0033" /t REG_SZ /d "{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0034" /t REG_SZ /d "{36523B13-8EE5-11D1-8CA3-0060B057664A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0035" /t REG_SZ /d "{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0036" /t REG_SZ /d "{E06D8020-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0037" /t REG_SZ /d "{E06D8026-DB46-11CF-B4D1-00805F6CBBEA}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0038" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0039" /t REG_SZ /d "{47504A4D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0040" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0041" /t REG_SZ /d "{6765706A-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0042" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0043" /t REG_SZ /d "{62706A6D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0044" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0045" /t REG_SZ /d "{31435657-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0046" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0047" /t REG_SZ /d "{31637677-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0048" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0049" /t REG_SZ /d "{41564D57-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0050" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0051" /t REG_SZ /d "{61766D77-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0052" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0053" /t REG_SZ /d "{32505657-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0054" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0055" /t REG_SZ /d "{32707677-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0056" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0057" /t REG_SZ /d "{31564D57-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0058" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0059" /t REG_SZ /d "{31766D77-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0060" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0061" /t REG_SZ /d "{32564D57-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0062" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0063" /t REG_SZ /d "{32766D77-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0064" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0065" /t REG_SZ /d "{33564D57-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0066" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0067" /t REG_SZ /d "{33766D77-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0068" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0069" /t REG_SZ /d "{50564D57-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0070" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0071" /t REG_SZ /d "{70766D77-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0072" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0073" /t REG_SZ /d "{30375056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0074" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0075" /t REG_SZ /d "{30385056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0076" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0077" /t REG_SZ /d "{30395056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0078" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0079" /t REG_SZ /d "{31305641-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0080" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0081" /t REG_SZ /d "{44495658-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0082" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0083" /t REG_SZ /d "{64697678-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0084" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0085" /t REG_SZ /d "{58564944-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0086" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0087" /t REG_SZ /d "{78766964-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0088" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0089" /t REG_SZ /d "{78766944-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0090" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0091" /t REG_SZ /d "{30355844-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0092" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0093" /t REG_SZ /d "{30357864-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0094" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0095" /t REG_SZ /d "{5634504D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0096" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0097" /t REG_SZ /d "{7634706D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0098" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0099" /t REG_SZ /d "{3253344D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0100" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0101" /t REG_SZ /d "{3273346D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0102" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0103" /t REG_SZ /d "{5334504D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0104" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0105" /t REG_SZ /d "{7334706D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0106" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0107" /t REG_SZ /d "{34504D46-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0108" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0109" /t REG_SZ /d "{58564933-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0110" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0111" /t REG_SZ /d "{78766933-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0112" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0113" /t REG_SZ /d "{31564933-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0114" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0115" /t REG_SZ /d "{31766933-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0116" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0117" /t REG_SZ /d "{32564933-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0118" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0119" /t REG_SZ /d "{32766933-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0120" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0121" /t REG_SZ /d "{305A4C42-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0122" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0123" /t REG_SZ /d "{564F4547-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0124" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0125" /t REG_SZ /d "{3447504D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0126" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0127" /t REG_SZ /d "{3467706D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0128" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0129" /t REG_SZ /d "{3134504D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0130" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0131" /t REG_SZ /d "{3134706D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0132" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0133" /t REG_SZ /d "{31564944-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0134" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0135" /t REG_SZ /d "{31766964-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0136" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0137" /t REG_SZ /d "{3234504D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0138" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0139" /t REG_SZ /d "{3234706D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0140" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0141" /t REG_SZ /d "{32564944-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0142" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0143" /t REG_SZ /d "{32766964-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0144" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0145" /t REG_SZ /d "{3334504D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0146" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0147" /t REG_SZ /d "{3334706D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0148" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0149" /t REG_SZ /d "{33564944-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0150" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0151" /t REG_SZ /d "{33766964-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0152" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0153" /t REG_SZ /d "{3347504D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0154" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0155" /t REG_SZ /d "{3367706D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0156" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0157" /t REG_SZ /d "{34564944-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0158" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0159" /t REG_SZ /d "{34766964-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0160" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0161" /t REG_SZ /d "{35564944-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0162" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0163" /t REG_SZ /d "{35766964-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0164" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0165" /t REG_SZ /d "{36564944-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0166" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0167" /t REG_SZ /d "{36766964-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0168" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0169" /t REG_SZ /d "{33585644-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0170" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0171" /t REG_SZ /d "{33787664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0172" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0173" /t REG_SZ /d "{44564933-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0174" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0175" /t REG_SZ /d "{31564C46-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0176" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0177" /t REG_SZ /d "{31766C66-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0178" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0179" /t REG_SZ /d "{30365056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0180" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0181" /t REG_SZ /d "{30367076-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0182" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0183" /t REG_SZ /d "{31365056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0184" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0185" /t REG_SZ /d "{31367076-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0186" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0187" /t REG_SZ /d "{32365056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0188" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0189" /t REG_SZ /d "{32367076-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0190" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0191" /t REG_SZ /d "{41365056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0192" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0193" /t REG_SZ /d "{61367076-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0194" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0195" /t REG_SZ /d "{46365056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0196" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0197" /t REG_SZ /d "{66367076-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0198" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0199" /t REG_SZ /d "{34564C46-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0200" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0201" /t REG_SZ /d "{34766C66-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0202" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0203" /t REG_SZ /d "{31565346-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0204" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0205" /t REG_SZ /d "{30315652-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0206" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0207" /t REG_SZ /d "{30325652-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0208" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0209" /t REG_SZ /d "{30335652-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0210" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0211" /t REG_SZ /d "{30345652-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0212" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0213" /t REG_SZ /d "{64737664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0214" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0215" /t REG_SZ /d "{44535644-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0216" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0217" /t REG_SZ /d "{48564443-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0218" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0219" /t REG_SZ /d "{43564443-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0220" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0221" /t REG_SZ /d "{35564443-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0222" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0223" /t REG_SZ /d "{35327664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0224" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0225" /t REG_SZ /d "{35325644-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0226" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0227" /t REG_SZ /d "{30357664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0228" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0229" /t REG_SZ /d "{30355644-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0230" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0231" /t REG_SZ /d "{70637664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0232" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0233" /t REG_SZ /d "{70357664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0234" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0235" /t REG_SZ /d "{6E357664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0236" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0237" /t REG_SZ /d "{70707664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0238" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0239" /t REG_SZ /d "{20637664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0240" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0241" /t REG_SZ /d "{31687664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0242" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0243" /t REG_SZ /d "{32687664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0244" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0245" /t REG_SZ /d "{33687664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0246" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0247" /t REG_SZ /d "{34687664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0248" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0249" /t REG_SZ /d "{35687664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0250" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0251" /t REG_SZ /d "{36687664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0252" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0253" /t REG_SZ /d "{71687664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0254" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0255" /t REG_SZ /d "{70687664-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0256" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0257" /t REG_SZ /d "{76645641-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0258" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0259" /t REG_SZ /d "{31645641-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0260" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0261" /t REG_SZ /d "{32706A6D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0262" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0263" /t REG_SZ /d "{43324A4D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0264" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0265" /t REG_SZ /d "{43324A4C-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0266" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0267" /t REG_SZ /d "{4B324A4C-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0268" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0269" /t REG_SZ /d "{324A5049-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0270" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0271" /t REG_SZ /d "{31515653-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0272" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0273" /t REG_SZ /d "{33515653-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0274" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0275" /t REG_SZ /d "{31363248-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0276" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0277" /t REG_SZ /d "{31363268-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0278" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0279" /t REG_SZ /d "{33363248-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0280" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0281" /t REG_SZ /d "{33363268-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0282" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0283" /t REG_SZ /d "{33363273-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0284" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0285" /t REG_SZ /d "{33363273-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0286" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0287" /t REG_SZ /d "{33363249-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0288" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0289" /t REG_SZ /d "{33363269-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0290" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0291" /t REG_SZ /d "{4F454854-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0292" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0293" /t REG_SZ /d "{6F656874-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0294" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0295" /t REG_SZ /d "{63637374-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0296" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0297" /t REG_SZ /d "{32637374-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0298" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0299" /t REG_SZ /d "{30355649-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0300" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0301" /t REG_SZ /d "{31345649-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0302" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0303" /t REG_SZ /d "{31335649-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0304" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0305" /t REG_SZ /d "{32335649-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0306" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0307" /t REG_SZ /d "{31535046-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0308" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0309" /t REG_SZ /d "{55594648-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0310" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0311" /t REG_SZ /d "{5347414C-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0312" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0313" /t REG_SZ /d "{64697663-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0314" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0315" /t REG_SZ /d "{20656C72-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0316" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0317" /t REG_SZ /d "{30335056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0318" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0319" /t REG_SZ /d "{31335056-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0320" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0321" /t REG_SZ /d "{44435343-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0322" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0323" /t REG_SZ /d "{47455051-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0324" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0325" /t REG_SZ /d "{302E3151-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0326" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0327" /t REG_SZ /d "{312E3151-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0328" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0329" /t REG_SZ /d "{485A534D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0330" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0331" /t REG_SZ /d "{42494C5A-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0332" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0333" /t REG_SZ /d "{617A7072-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0334" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0335" /t REG_SZ /d "{00000001-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0336" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0337" /t REG_SZ /d "{68637061-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0338" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0339" /t REG_SZ /d "{6E637061-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0340" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0341" /t REG_SZ /d "{73637061-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0342" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0343" /t REG_SZ /d "{6F637061-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0344" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0345" /t REG_SZ /d "{68347061-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0346" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0347" /t REG_SZ /d "{78347061-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0348" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0349" /t REG_SZ /d "{41524C55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0350" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0351" /t REG_SZ /d "{47524C55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0352" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0353" /t REG_SZ /d "{30594C55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0354" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0355" /t REG_SZ /d "{32594C55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0356" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0357" /t REG_SZ /d "{34594C55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0358" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0359" /t REG_SZ /d "{32595155-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0360" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0361" /t REG_SZ /d "{47525155-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0362" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0363" /t REG_SZ /d "{41525155-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0364" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0365" /t REG_SZ /d "{30484C55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0366" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0367" /t REG_SZ /d "{32484C55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0368" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0369" /t REG_SZ /d "{34484C55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0370" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0371" /t REG_SZ /d "{32594D55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0372" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0373" /t REG_SZ /d "{32484D55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0374" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0375" /t REG_SZ /d "{34594D55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0376" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0377" /t REG_SZ /d "{34484D55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0378" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0379" /t REG_SZ /d "{47524D55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0380" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0381" /t REG_SZ /d "{41524D55-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0382" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0383" /t REG_SZ /d "{56564D41-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0384" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0385" /t REG_SZ /d "{46564D41-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0386" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0387" /t REG_SZ /d "{64726376-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0388" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0389" /t REG_SZ /d "{63617264-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0390" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0391" /t REG_SZ /d "{6E645641-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0392" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0393" /t REG_SZ /d "{68645641-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0394" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0395" /t REG_SZ /d "{4D415243-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0396" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0397" /t REG_SZ /d "{4356534D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0398" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0399" /t REG_SZ /d "{4D414857-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0400" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0401" /t REG_SZ /d "{53504238-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0402" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0403" /t REG_SZ /d "{4F434F4C-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0404" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0405" /t REG_SZ /d "{56424D5A-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0406" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0407" /t REG_SZ /d "{31524356-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0408" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0409" /t REG_SZ /d "{43534141-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0410" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0411" /t REG_SZ /d "{574F4E53-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0412" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0413" /t REG_SZ /d "{31564646-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0414" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0415" /t REG_SZ /d "{48564646-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0416" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0417" /t REG_SZ /d "{636E4D56-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0418" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0419" /t REG_SZ /d "{434C4641-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0420" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0421" /t REG_SZ /d "{344D3247-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0422" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0423" /t REG_SZ /d "{646F6369-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0424" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0425" /t REG_SZ /d "{4B435544-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0426" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0427" /t REG_SZ /d "{30324D54-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0428" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0429" /t REG_SZ /d "{44484643-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0430" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0431" /t REG_SZ /d "{5947414D-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0432" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0433" /t REG_SZ /d "{694B4942-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0434" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0435" /t REG_SZ /d "{624B4942-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0436" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0437" /t REG_SZ /d "{324B4D53-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0438" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0439" /t REG_SZ /d "{344B4D53-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0440" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0441" /t REG_SZ /d "{56504854-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0442" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0443" /t REG_SZ /d "{56516F52-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0444" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0445" /t REG_SZ /d "{20676E70-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0446" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0447" /t REG_SZ /d "{46464954-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0448" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0449" /t REG_SZ /d "{20504D42-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0450" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0451" /t REG_SZ /d "{20464947-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0452" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0453" /t REG_SZ /d "{20414754-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0454" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0455" /t REG_SZ /d "{30313276-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0456" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0457" /t REG_SZ /d "{30313476-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0458" /t REG_SZ /d "{73646976-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "mod0459" /t REG_SZ /d "{D80FA03C-35C1-4FA1-8C8E-375C8667166E}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "FilterType" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "Merit" /t REG_DWORD /d "8388611" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0002" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override\0003" /v "Type" /t REG_DWORD /d "4294967294" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{2DFCB782-EC20-4A7C-B530-4577ADB33F21}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "Name" /t REG_SZ /d "XySubFilter" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "CLSID" /t REG_SZ /d "{2DFCB782-EC20-4A7C-B530-4577ADB33F21}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0000" /t REG_SZ /d "{73747874-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0001" /t REG_SZ /d "{E436EB8E-524F-11CE-9F53-0020AF0BA770}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0002" /t REG_SZ /d "{73747874-0000-0010-8000-00AA00389B71}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0003" /t REG_SZ /d "{00000000-0000-0000-0000-000000000000}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0004" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0005" /t REG_SZ /d "{E436EB8E-524F-11CE-9F53-0020AF0BA770}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0006" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0007" /t REG_SZ /d "{87C0B230-03A8-4FDF-8010-B27A5848200D}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0008" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0009" /t REG_SZ /d "{3020560F-255A-4DDC-806E-6C5CC6DCD70A}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0010" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0011" /t REG_SZ /d "{326444F7-686F-47FF-A4B2-C8C96307B4C2}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0012" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0013" /t REG_SZ /d "{370689E7-B226-4F67-978D-F10BC1A9C6AE}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0014" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0015" /t REG_SZ /d "{76C421C4-DB89-42EC-936E-A9FBC1794714}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0016" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0017" /t REG_SZ /d "{F7239E31-9599-4E43-8DD5-FBAF75CF37F1}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0018" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0019" /t REG_SZ /d "{04EBA53E-9330-436C-9133-553EC87031DC}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0020" /t REG_SZ /d "{E487EB08-6B26-4BE9-9DD3-993434D313FD}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "mod0021" /t REG_SZ /d "{34FFCBC3-D5B3-4171-9002-D4C60301697F}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "FilterType" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "Merit" /t REG_DWORD /d "8388610" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0000" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "Type" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "Disabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "DisplayName" /t REG_SZ /d "@device:sw:{083863F1-70DE-11D0-BD40-00A0C911CE86}\{6B237877-902B-4C6C-92F6-E63169A5166C}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "Name" /t REG_SZ /d "XySubFilterAutoLoader" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "CLSID" /t REG_SZ /d "{6B237877-902B-4C6C-92F6-E63169A5166C}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "mod0000" /t REG_SZ /d "{00000000-0000-0000-0000-000000000000}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "mod0001" /t REG_SZ /d "{00000000-0000-0000-0000-000000000000}" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "FilterType" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "Merit" /t REG_DWORD /d "4294967295" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0001" /v "MeritHi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Override_Settings\0002" /v "Type" /t REG_DWORD /d "4294967294" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "MainWidth2" /t REG_DWORD /d "640" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "MainHeight2" /t REG_DWORD /d "412" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "VideoWindowWidth" /t REG_DWORD /d "4294967295" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "VideoWindowHeight" /t REG_DWORD /d "4294967295" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "MainWindowState" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "ChatWindowVisible" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "PlayListWindowVisible" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "PlayListWidth" /t REG_DWORD /d "286" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow0" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow1" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow2" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow3" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow4" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow5" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow6" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow7" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow8" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "TopMostWindow9" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "ControlBoxWidth" /t REG_DWORD /d "330" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Positions" /v "ControlBoxHeight" /t REG_DWORD /d "195" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "LanguageIni" /t REG_SZ /d "Chinese(Simplified).ini" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "CudaDecoder" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "NvencEncoder" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "MftDecoder" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "DmoDecoder" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Info1" /t REG_SZ /d "" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Info6" /t REG_SZ /d "" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Info7" /t REG_SZ /d "" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "LastConfigPage" /t REG_DWORD /d "436" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "PlaybackMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "LastPlayListName" /t REG_SZ /d "PotPlayerMini64.dpl" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "LastSkinName" /t REG_SZ /d "YouTube_Slim.dsf" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "LastSkinXmlName" /t REG_SZ /d "VideoSkin.xml" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "LastSkinXmlNameVideo" /t REG_SZ /d "VideoSkin.xml" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "VideoRen2" /t REG_DWORD /d "10" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AudioVolume" /t REG_DWORD /d "95" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "RepeatPlay2" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "RepeatPlayAudio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "PreviewSeekTime" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "PreviewThumbnail" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "PlaybackSearchFile" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "MotionBlur" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AudioNormalize" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "OpenWithSameName" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "RememberPosition" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "RememberPositionAudio" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "ShowRememberList" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "CaptionVisible" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AllowMultiple" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "UseTooltip" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "UseMagWindow" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "EffectPage" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "EffectCastOnly" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "SkipCastPreview" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "ChatAttachToMain2" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "BroadcastAttachToMain2" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "PlaylistAttachSize2" /t REG_DWORD /d "288" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "NormalAviSrc_new1" /t REG_DWORD /d "4" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "DemageAviSrc_new1" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "NormalAsfSrc_new1" /t REG_DWORD /d "4" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "DemageAsfSrc_new1" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "MkvSrc_new1" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mpg1Src_new1" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mpg2PsSrc_new1" /t REG_DWORD /d "4" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mpg2TsSrc_new1" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mp4Src_new1" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "OggSrc_new1" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mp3Src_new1" /t REG_DWORD /d "4" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AacSrc1" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "FlacSrc1" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "FlvSrc1" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WaveSrc1" /t REG_DWORD /d "4" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mpg1Video_new" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mpg2Video_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "XvidVideo_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "DivxVideo_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "H264Video_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Avc1Video_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "HevcVideo_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Vc1Video_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WMV1Video_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WMV2Video_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WMV3Video_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Vp8Video" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Vp9Video" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Vc1Image_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WMV3Image_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mp3Audio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mpg1Audio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Mpg2Audio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AacAudio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "LatmAudio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Ac3Audio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Eac3Audio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "TrueHDAudio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "MlpAudio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "DtsAudio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Lpcm2Audio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "HdmvLpcmAudio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "VorbisAudio_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "FlacAudio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WmaV1Audio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WmaV2Audio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WmaProAudio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WmaLosslessAudio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WavPackAudio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "OpusAudio" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AudSpkIndex_new" /t REG_DWORD /d "22" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AudOutBit_new" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "VideoTransformUseMode" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "VideoTransformSwitcher" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AudioTransformUseMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AudioTransformSwitcher" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "BuiltInAudioSwitcher" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "WinampDspIndex" /t REG_DWORD /d "4294967295" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "UseMediaKey" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "ItuRecSpec" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "RGB2YUVLevel" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "PauseOnMin" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "PauseOnLock" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "StartScreenSize" /t REG_DWORD /d "4" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "CaptionTranslateEngine2" /t REG_SZ /d "SubtitleTranslate - google.as" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "VMR9ColorManagementEnable" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "D3DFullScreenUi" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "MessageFontName" /t REG_SZ /d "微软雅黑" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "MessageFontWeight" /t REG_DWORD /d "400" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "MessageFontSize" /t REG_DWORD /d "14" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "SO_FontName" /t REG_SZ /d "微软雅黑" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "SO_Desktop" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "SO_Download" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AttachWindowIndex" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AudioVolumeWaveMax" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AutoLoadExtAudio" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "SaveConfigPause" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "Win7WorkTool" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AutoAlignWindow" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "UseSideWindow" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "DialogBaseFontName" /t REG_SZ /d "微软雅黑" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "DialogBaseFontSize" /t REG_DWORD /d "10" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "DialogCharset" /t REG_DWORD /d "134" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "UseATextOut" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "TouchSupport" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "CheckAutoUpdate" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "LastCheckDays" /t REG_DWORD /d "18712" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AutoUpdateStart" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64\Settings" /v "AutoDownloadFile" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64" /v "AddMyComPL" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Daum\PotPlayerMini64" /v "ServiceValue" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Daum\PotPlayerMini64" /v "Check118_119" /t REG_DWORD /d "4" /f

# LAV Filter Settings
reg add "HKCU\Software\LAV\Audio" /v "TrayIcon" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "DRCEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "DRCLevel" /t REG_DWORD /d "100" /f
reg add "HKCU\Software\LAV\Audio" /v "DTSHDFraming" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "BitstreamingFallback" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio" /v "AutoAVSync" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio" /v "ExpandMono" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "Expand61" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "OutputStandardLayout" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio" /v "Output51Legacy" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "AudioDelayEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "AudioDelay" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "Mixing" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "MixingLayout" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\LAV\Audio" /v "MixingFlags" /t REG_DWORD /d "4" /f
reg add "HKCU\Software\LAV\Audio" /v "MixingMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "MixingCenterLevel" /t REG_DWORD /d "7071" /f
reg add "HKCU\Software\LAV\Audio" /v "MixingSurroundLevel" /t REG_DWORD /d "7071" /f
reg add "HKCU\Software\LAV\Audio" /v "MixingLFELevel" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "Bitstreaming_ac3" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "Bitstreaming_eac3" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "Bitstreaming_truehd" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "Bitstreaming_dts" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "Bitstreaming_dtshd" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio" /v "SampleFormat_s16" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio" /v "SampleFormat_s24" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio" /v "SampleFormat_s32" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio" /v "SampleFormat_u8" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio" /v "SampleFormat_fp32" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio" /v "SampleConvertDither" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "aac" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "ac3" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "eac3" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "dts" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "mp2" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "mp3float" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "truehd" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "flac" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "vorbis" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "lpcm" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "pcm" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "wavpack" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "tta" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "wma" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "wmapro" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "cook" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "realaudio" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "wmalossless" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "alac" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "opus" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "amr" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "nellymoser" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "mspcm" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "truespeech" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "tak" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Audio\Formats" /v "atrac" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "matroska" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "avi" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "mp4" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "mpegts" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "mpeg" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "bluray" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "flv" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "ogg" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "rm" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "wtv" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "asf" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "mxf" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "bink" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "avisynth" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "rtmp" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "rtsp" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "rtp" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "mms" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "dts" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "ac3" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "aac" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "mp3" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\LAV\Splitter\Formats" /v "flac" /t REG_DWORD /d "1" /f

# register video filters
regsvr32.exe "%windir%\SysWOW64\XySubFilter.dll" /s
regsvr32.exe "%windir%\SysWOW64\VSFilter.dll" /s
regsvr32.exe "C:\Program Files\madVR\madVR64.ax" /s

# no volume down when detect other audio
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v "UserDuckingPreference" /t REG_DWORD /d "3" /f

# New PC name
Rename-Computer -NewName 'Alienware' -Verbose

# Disable Firewall
Netsh advfirewall set allprofile state off

# Windows Apps policy
Set-NonRemovableAppsPolicy -Online -PackageFamilyName * -NonRemovable 0 -Verbose -Verbose


# Keyboard and Mouse
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Set-ItemProperty -Path 'HKCU:\Control Panel\Mouse' 'SmoothMouseXCurve' ([byte[]](0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xCC, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x99, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x66, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00)) -Verbose
Set-ItemProperty -Path 'HKCU:\Control Panel\Mouse' 'SmoothMouseXCurve' ([byte[]](0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00)) -Verbose
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "50" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "50" /f
reg add "HKCU\Control Panel\Cursors" /v "UpArrow" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeWE" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNWSE" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNS" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeNESW" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "SizeAll" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "NWPen" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "No" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Help" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Hand" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Arrow" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "AppStarting" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /ve /t REG_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "Wait" /t REG_EXPAND_SZ /d "" /f
reg add "HKCU\Control Panel\Cursors" /v "ContactVisualization" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Cursors" /v "GestureVisualization" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "CursorBlinkRate" /t REG_SZ /d "200" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismUpdateIntervalInMilliseconds" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "2" /f
reg add "HKU\.DEFAULT\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "2147483650" /f
reg add "HKU\.DEFAULT\Control Panel\Accessibility\HighContrast" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Accessibility\SoundSentry" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Accessibility\TimeOut" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\HighContrast" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\SoundSentry" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\TimeOut" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "UseOnlyMice" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "TreatAbsolutePointerAsAbsolute" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "TreatAbsoluteAsRelative" /t REG_DWORD /d "0" /f

# Disable Uncessary System Devices
Get-PnpDevice | Where-Object { $_.FriendlyName -match 'Microsoft Kernel Debug Network Adapter' } | Disable-PnpDevice -Confirm:$false -Verbose
Get-PnpDevice | Where-Object { $_.FriendlyName -match 'Microsoft Wi-Fi Direct Virtual Adapter' } | Disable-PnpDevice -Confirm:$false -Verbose

# Internet tweaks
# Netsh
netsh int tcp set supplemental template=internet
# Enabling URO
netsh int udp set global uro=enabled
netsh int tcp set global rss=enable
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set global ecncapability=disable
netsh int tcp set global timestamps=enable
netsh int tcp set global initialrto=300
netsh int tcp set global rsc=disable
netsh int tcp set global fastopen=enable
netsh int tcp set global hystart=disable
netsh int tcp set global pacingprofile=off
netsh int ip set global minmtu=576
netsh int ip set global flowlabel=disable
netsh int tcp set supplemental internet congestionprovider=dctcp
netsh int tcp set supplemental internet enablecwndrestart=disable
netsh int ip set global icmpredirects=disabled
netsh int ip set global multicastforwarding=disabled
netsh int ip set global groupforwardedfragments=disable
netsh int tcp set security mpp=disabled profiles=disabled
netsh int tcp set heur forcews=disable
# Enable Winsock Send Autotuning (dynamic send-buffer)
netsh winsock set autotuning on
# Enable Experimental Autotuning and NEWRENO congestion provider
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS" /v "Tcp Autotuning Level" /t REG_SZ /d "Experimental" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS" /v "Application DSCP Marking Request" /t REG_SZ /d "Allowed" /f
# Disabling Net Adapter QoS
Disable-NetAdapterQos -Name '*' -Verbose
# Disabling Net Adapter Power Management...
Disable-NetAdapterPowerManagement -Name '*' -Verbose
# Enabling Net Adapter Checksum Offload...
Enable-NetAdapterChecksumOffload -Name '*' -Verbose
# Disabling Net Adapter Encapsulated Packet Task Offload...
Disable-NetAdapterEncapsulatedPacketTaskOffload -Name '*' -Verbose
# Enabling Net Adapter IPsec Offload...
Enable-NetAdapterIPsecOffload -Name '*' -Verbose
# Disabling Net Adapter Large Send Offload...
Disable-NetAdapterLso -Name '*' -Verbose
# Enabling Net Adapter Packet Direct...
Enable-NetAdapterPacketDirect -Name '*' -Verbose
# Disabling Net Adapter Receive Side Coalescing...
Disable-NetAdapterRsc -Name '*' -Verbose
# Enabling Net Adapter Receive Side Scaling...
Enable-NetAdapterRss -Name '*' -Verbose
# Enable Teredo and 6to4 (Xbox LIVE fix)
Set-NetTeredoConfiguration -Type natawareclient -Verbose
netsh int teredo set state natawareclient
netsh int 6to4 set state state=enabled
netsh int teredo set state servername="win1910.ipv6.microsoft.com"
# disable network protocal
Disable-NetAdapterBinding -Name '*' -ComponentID ms_lldp -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_server -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_msclient -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_rspndr -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_lltdio -Verbose
Disable-NetAdapterBinding -Name '*' -ComponentID ms_pacer -Verbose
Enable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6 -Verbose
# Setting up 6to4 tunneling...
Set-Net6to4Configuration -State Enabled -AutoSharing Enabled -RelayState Enabled -RelayName '6to4.ipv6.microsoft.com' -Verbose
netsh int 6to4 set state state=enabled undoonstop=disabled
netsh int 6to4 set routing routing=enabled sitelocals=enabled
# do not disable IPV6
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "0" /f
#  TcpAckFrequency
# $strGUIDS = [array](Get-WmiObject win32_networkadapter | Select-Object -expand GUID)"
# foreach ($strGUID in $strGUIDS) { New-ItemProperty -Path HKLM:\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\$strGUID -PropertyType DWORD -Name TcpAckFrequency -Value 1 -Force | Out-Null }"
# foreach ($strGUID in $strGUIDS) { New-ItemProperty -Path HKLM:\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\$strGUID -PropertyType DWORD -Name TCPNoDelay -Value 1 -Force | Out-Null }"
# foreach ($strGUID in $strGUIDS) { New-ItemProperty -Path HKLM:\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\$strGUID -PropertyType DWORD -Name TcpDelAckTicks -Value 0 -Force | Out-Null }"
# Tcpip Parameters
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckFrequency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckTicks" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "CongestionAlgorithm" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MultihopSets" /t REG_DWORD /d "15" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "16384" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "16384" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_SZ /d "ANONYMOUS" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Hostname" /t reg_SZ /d "ANONYMOUS" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "UseDomainNameDevolution" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "16384" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "16384" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "16384" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "16384" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinSock2\Parameters" /v "Ws2_32NumHandleBuckets" /t REG_DWORD /d "1" /f
# Host Resolution Priority Tweak
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
# Turnoff NCSI
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContent" /t REG_SZ /d "131.107.255.255" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContentV6" /t REG_SZ /d "fd3e:4f5a:5b81::1" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHost" /t REG_SZ /d "dns.msftncsi.com" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHostV6" /t REG_SZ /d "dns.msftncsi.com" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContent" /t REG_SZ /d "Microsoft NCSI" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContentV6" /t REG_SZ /d "Microsoft NCSI" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHost" /t REG_SZ /d "www.msftncsi.com" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHostV6" /t REG_SZ /d "ipv6.msftncsi.com" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePath" /t REG_SZ /d "ncsi.txt" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePathV6" /t REG_SZ /d "ncsi.txt" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimer" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimerBackOffInc#entsInSeconds" /t REG_DWORD /d "5" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimerMaxInSeconds" /t REG_DWORD /d "30" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "PassivePollPeriod" /t REG_DWORD /d "15" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "StaleThreshold" /t REG_DWORD /d "30" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\NlaSvc\Parameters\Internet" /v "WebTimeout" /t REG_DWORD /d "35" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "AddrConfigControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "DisableParallelAandAAAA" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "UseDomainNameDevolution" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMDNS" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\POLICIES\MICROSOFT\Windows\NetworkConnectivityStatusIndicator" /v "UseGlobalDNS" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\POLICIES\MICROSOFT\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "1" /f
# internet settings
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "CertificateRevocation" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "DisableCachingOfSSLPages" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "PrivacyAdvanced" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SecureProtocols" /t REG_DWORD /d "10912" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnableNegotiate" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MigrateProxy" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnonZoneCrossing" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnableHttp1_1" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyHttp1.1" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnableHTTP2" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnablePunycode" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "UrlEncoding" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "DisableIDNPrompt" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ShowPunycode" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnonBadCertRecving" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnOnPostRedirect" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SyncMode5" /t REG_DWORD /d "3" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "CertificateRevocation" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "DisableCachingOfSSLPages" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "PrivacyAdvanced" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SecureProtocols" /t REG_DWORD /d "10912" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnableNegotiate" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MigrateProxy" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnonZoneCrossing" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnableHttp1_1" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyHttp1.1" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnableHTTP2" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnablePunycode" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "UrlEncoding" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "DisableIDNPrompt" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ShowPunycode" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnonBadCertRecving" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnOnPostRedirect" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SyncMode5" /t REG_DWORD /d "3" /f
# https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.QualityofService::QosTimerResolution
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "TimerResolution" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "MaxOutstandingSends" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "46" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "56" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "46" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "56" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "7" /f


# Disable Memory Compression
Disable-MMAgent -ApplicationLaunchPrefetching -ApplicationPreLaunch -PageCombining -MemoryCompression -Verbose
Get-Service 'SysMain' | Set-Service -StartupType Disabled -PassThru -Verbose

# Disable Windows File Compression
compact /CompactOs:never

# Removing Default Fax Printer
Remove-Printer -Name 'Fax' -ErrorAction SilentlyContinue -Verbose

# Allows (1) or disallows (0) characters from the extended character set (including diacritic characters) to be used in 8.3 character-length short file names on NTFS volumes
fsutil behavior set allowextchar 1

# Allows (1) or disallows (0) generation of a bug check when there is corruption on an NTFS volume. This feature can be used to prevent NTFS from silently deleting data when used with the Self-Healing NTFS feature
fsutil behavior set Bugcheckoncorrupt 0


# Disables (1) or enables (0) NTFS compression
fsutil behavior set disablecompression 1
cipher /d /s:C:\


# Disables (1) or enables (0) updates to the Last Access Time stamp on each directory when directories are listed on an NTFS volume
fsutil behavior set DisableLastAccess 1

# Encrypts (1) or doesn't encrypt (0) the memory paging file in the Windows operating system
fsutil behavior set encryptpagingfile 0

# Configures the internal cache levels of NTFS paged-pool memory and NTFS nonpaged-pool memory. Set to 1 or 2. When set to 1 (the default), NTFS uses the default amount of paged-pool memory. When set to 2, NTFS increases the size of its lookaside lists and memory thresholds. (A lookaside list is a pool of fixed-size memory buffers that the kernel and device drivers create as private memory caches for file system operations, such as reading a file.)
fsutil behavior set memoryusage 2


# Sets the size of the MFT Zone, and is expressed as a multiple of 200MB units. Set value to a number from 1 (default is 200 MB) to 4 (maximum is 800 MB)
fsutil behavior set mftzone 2

# Transactional Resource Manager
fsutil resource setavailable c:
fsutil resource setlog shrink 10 C:\
fsutil resource setavailable d:
fsutil resource setlog shrink 10 D:\
fsutil resource setautoreset true c:\
fsutil usn deletejournal /d /n c:

# Enable TRIM support for NTFS and ReFS file systems for SSD drives
fsutil behavior set disabledeletenotify 0
Invoke-Expression -Command ('FSUTIL BEHAVIOR SET DISABLEDELETENOTIFY NTFS 0') | Out-Null
$QueryReFS = Invoke-Expression -Command ('FSUTIL BEHAVIOR QUERY DISABLEDELETENOTIFY') | Select-String -Pattern ReFS
If ($QueryReFS) { Invoke-Expression -Command ('FSUTIL BEHAVIOR SET DISABLEDELETENOTIFY REFS 0') | Out-Null }

# page file
# Use big system memory caching to improve microstuttering
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_DWORD /d "192" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "192" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PoolUsageMaximum" /t REG_DWORD /d "192" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f

#  Configure Power Plan Settings
powercfg -h off
powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 02f815b5-a5cf-4c84-bf20-649d1f75d3d8 4c793e7d-a264-42e1-87d3-7a0d2f523ccd 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 02f815b5-a5cf-4c84-bf20-649d1f75d3d8 4c793e7d-a264-42e1-87d3-7a0d2f523ccd 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0d7dbae2-4294-402a-ba8e-26777e8488cd 309dce9b-bef4-4119-9921-a851fb12f0f4 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0d7dbae2-4294-402a-ba8e-26777e8488cd 309dce9b-bef4-4119-9921-a851fb12f0f4 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 2
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 2
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 94d3a615-a899-4ac5-ae2b-e4d8f634367f 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 94d3a615-a899-4ac5-ae2b-e4d8f634367f 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 fbd9aa66-9553-4097-ba44-ed6e9d65eab8 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 fbd9aa66-9553-4097-ba44-ed6e9d65eab8 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 03680956-93bc-4294-bba6-4e0f09bb717f 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 03680956-93bc-4294-bba6-4e0f09bb717f 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 34c7b99f-9a6d-4b3c-8dc7-b6693b78cef4 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 34c7b99f-9a6d-4b3c-8dc7-b6693b78cef4 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 3
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 3
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 9a66d8d7-4ff7-4ef9-b5a2-5a326ca2a469 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 9a66d8d7-4ff7-4ef9-b5a2-5a326ca2a469 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 8183ba9a-e910-48da-8769-14ae6dc1170a 5
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 8183ba9a-e910-48da-8769-14ae6dc1170a 5
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f bcded951-187b-4d05-bccc-f7e51960c258 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f bcded951-187b-4d05-bccc-f7e51960c258 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f f3c5027d-cd16-4930-aa6b-90db844a8f00 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f f3c5027d-cd16-4930-aa6b-90db844a8f00 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "PowerSettingProfile" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCalculateActualUtilization" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceIdleResiliency" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0"

#  This PC icons
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{ 20D04FE0-3AEA-1069-A2D8-08002B30309D }" /t reg_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{ 20D04FE0-3AEA-1069-A2D8-08002B30309D }" /t reg_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{ 5399E694 - 6CE5-4D6C-8FCE-1D8870FDCBA0 }" /t reg_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{ 5399E694 - 6CE5-4D6C-8FCE-1D8870FDCBA0 }" /t reg_DWORD /d "0" /f
# #ove Recycle Bin
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{ 645FF040-5081-101B-9F08-00AA002F954E }" /t REG_DWORD /d "1" /f
# Desktop
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{ B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
# Documents
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{ A8CDFF1C-4878-43be-B5FD-F8091C1C60D0 }" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { d3162b92-9365-467a-956b-92703aca08af }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { A8CDFF1C-4878-43be-B5FD-F8091C1C60D0 }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { d3162b92-9365-467a-956b-92703aca08af }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { f42ee2d3-909f-4907-8871-4c22fc0bf756 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ f42ee2d3-909f-4907-8871-4c22fc0bf756 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
# Downloads
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{ 374DE290-123F-4565-9164-39C4925E467B }" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 088e3905 - 0323 - 4b02-9826-5d99428e115f }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 374DE290-123F-4565-9164-39C4925E467B }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 088e3905 - 0323 - 4b02-9826-5d99428e115f }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { 7d83ee9b-2244-4e70-b1f5-5393042af1e4 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ 7d83ee9b-2244-4e70-b1f5-5393042af1e4 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
# Music
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{ 1CF1260C-4DD0-4ebb-811F-33C572699FDE }" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 3dfdf296-dbec-4fb4-81d1-6a3438bcf4de }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 1CF1260C-4DD0-4ebb-811F-33C572699FDE }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 3dfdf296-dbec-4fb4-81d1-6a3438bcf4de }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { a0c69a99-21c8-4671-8703-7934162fcf1d }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ a0c69a99-21c8-4671-8703-7934162fcf1d }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
# Pictures
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{ 3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA }" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 24ad3ad4-a569-4530-98e1-ab02f9417aa8 }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 24ad3ad4-a569-4530-98e1-ab02f9417aa8 }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { 0ddd015d-b06c-45d5-8c4c-f59713854639 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ 0ddd015d-b06c-45d5-8c4c-f59713854639 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
# Videos
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{ A0953C92-50DC-43bf-BE83-3742FED03C9C }" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { A0953C92-50DC-43bf-BE83-3742FED03C9C }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { 35286a68-3c57-41a1-bbb1-0eae73d76c95 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ 35286a68-3c57-41a1-bbb1-0eae73d76c95 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
# 3D Objects
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{ 0DB7E03F-FC29-4DC6-9020-FF41B59E513A }" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 0DB7E03F-FC29-4DC6-9020-FF41B59E513A }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { 31C0DD25-9439-4F12-BF41-7FF4EDA38722 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ 31C0DD25-9439-4F12-BF41-7FF4EDA38722 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
# Video
reg add "HKCU\Software\Classes\CLSID\{ f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{ f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{ f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a }" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { A0953C92-50DC-43bf-BE83-3742FED03C9C }" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { A0953C92-50DC-43bf-BE83-3742FED03C9C }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { 35286a68-3c57-41a1-bbb1-0eae73d76c95 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ 35286a68-3c57-41a1-bbb1-0eae73d76c95 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
# Documents
reg add "HKCU\Software\Classes\CLSID\{ d3162b92-9365-467a-956b-92703aca08af }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{ d3162b92-9365-467a-956b-92703aca08af }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{ d3162b92-9365-467a-956b-92703aca08af }" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { A8CDFF1C-4878-43be-B5FD-F8091C1C60D0 }" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { A8CDFF1C-4878-43be-B5FD-F8091C1C60D0 }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { f42ee2d3-909f-4907-8871-4c22fc0bf756 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ f42ee2d3-909f-4907-8871-4c22fc0bf756 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
# Downloads
reg add "HKCU\Software\Classes\CLSID\{ 088e3905 - 0323 - 4b02-9826-5d99428e115f }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{ 088e3905 - 0323 - 4b02-9826-5d99428e115f }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{ 088e3905 - 0323 - 4b02-9826-5d99428e115f }" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 374DE290-123F-4565-9164-39C4925E467B }" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 374DE290-123F-4565-9164-39C4925E467B }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { 7d83ee9b-2244-4e70-b1f5-5393042af1e4 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ 7d83ee9b-2244-4e70-b1f5-5393042af1e4 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
# Images
reg add "HKCU\Software\Classes\CLSID\{ 24ad3ad4-a569-4530-98e1-ab02f9417aa8 }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{ 24ad3ad4-a569-4530-98e1-ab02f9417aa8 }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{ 24ad3ad4-a569-4530-98e1-ab02f9417aa8 }" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA }" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { 0ddd015d-b06c-45d5-8c4c-f59713854639 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ 0ddd015d-b06c-45d5-8c4c-f59713854639 }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
# Music
reg add "HKCU\Software\Classes\CLSID\{ 3dfdf296-dbec-4fb4-81d1-6a3438bcf4de }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{ 3dfdf296-dbec-4fb4-81d1-6a3438bcf4de }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{ 3dfdf296-dbec-4fb4-81d1-6a3438bcf4de }" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 1CF1260C-4DD0-4ebb-811F-33C572699FDE }" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\ { 1CF1260C-4DD0-4ebb-811F-33C572699FDE }" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { a0c69a99-21c8-4671-8703-7934162fcf1d }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ a0c69a99-21c8-4671-8703-7934162fcf1d }\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
# Desktop
reg add "HKCU\Software\Classes\CLSID\{ B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{ B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{ B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }\PropertyBag" /v "ThisPCPolicy" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }\PropertyBag" /v "ThisPCPolicy" /f
# 3d objects
reg add "HKCU\Software\Classes\CLSID\{ 0DB7E03F-FC29-4DC6-9020-FF41B59E513A }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{ 0DB7E03F-FC29-4DC6-9020-FF41B59E513A }" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{ 0DB7E03F-FC29-4DC6-9020-FF41B59E513A }" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\ { 31C0DD25-9439-4F12-BF41-7FF4EDA38722 }\PropertyBag" /v "ThisPCPolicy" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ 31C0DD25-9439-4F12-BF41-7FF4EDA38722 }\PropertyBag" /v "ThisPCPolicy" /f
# Quick Access
reg add "HKCU\Software\Classes\CLSID\{ 679f85cb-0220-4080-b29b-5540cc05aab6 }\ShellFolder" /v "Attributes" /t REG_DWORD /d "0xa0600000" /f
reg add "HKCU\Software\Classes\WOW6432Node\CLSID\{ 679f85cb-0220-4080-b29b-5540cc05aab6 }\ShellFolder" /v "Attributes" /t REG_DWORD /d "0xa0600000" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{ 679f85cb-0220-4080-b29b-5540cc05aab6 }\ShellFolder" /v "Attributes" /t REG_DWORD /d "0xa0100000" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{ 679f85cb-0220-4080-b29b-5540cc05aab6 }" /v "System.IsPinnedtoNameSpaceTree" /t REG_DWORD /d "1" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{ 679f85cb-0220-4080-b29b-5540cc05aab6 }\ShellFolder" /v "Attributes" /t REG_DWORD /d "0xa0100000" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{ 679f85cb-0220-4080-b29b-5540cc05aab6 }" /v "System.IsPinnedtoNameSpaceTree" /t REG_DWORD /d "1"/f

# Disable Administrative shares
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareServer" /t REG_DWORD /d "0" /f

# Component Store Clean-up
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration" /v "DisableResetbase" /t "reg_DWORD" /d "1" /f

# Disable Reserved Storage
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "MiscPolicyInfo" /t reg_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t reg_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "PassedPolicy" /t reg_DWORD /d "0" /f

# Remove unuseful Right Click Menu
reg delete "HKCR\SystemFileAssociations\.3mf\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.bmp\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.fbx\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.gif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jfif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpe\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpg\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.png\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.tif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.tiff\Shell\3D Edit" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\EPP" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\EPP" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\EPP" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Open With EncryptionMenu" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Open With" /f
reg delete "HKCR\.lnk\ShellNew" /f
reg delete "HKCR\Folder\shell\pintohome" /f
reg delete "HKCR\Windows.IsoFile\shell\mount" /f
reg delete "HKCR\*\shell\UpdateEncryptionSettingsWork" /f
reg delete "HKCR\Directory\shell\UpdateEncryptionSettings" /f
reg delete "HKCR\Folder\shell\opennewtab" /f
reg delete "HKCR\Folder\shell\opennewwindow" /f
reg delete "HKCR\.library-ms\ShellNew" /f
reg delete "HKCR\.bmp\ShellNew" /f
reg delete "HKCR\.contact\ShellNew" /f
reg delete "HKCR\.rtf\ShellNew" /f
reg delete "HKCR\.zip\CompressedFolder\ShellNew" /f
reg delete "HKCR\Windows.IsoFile\shell\burn" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\CopyHookHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\PropertySheetHandlers\Sharing" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\Sharing" /f
reg delete "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\{ 90AA3A4E-1CBA-4233-B8BB-535773D48449 }" /f
reg delete "HKCR\Folder\ShellEx\ContextMenuHandlers\Library Location" /f
reg delete "HKCR\SystemFileAssociations\.bmp\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.dib\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.gif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jfif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpe\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpg\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.png\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.tif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.tiff\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.wdp\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.avci\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.bmp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.dds\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.dib\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.gif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.heic\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.heif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.ico\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jfif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpe\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpg\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jxr\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.png\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.rle\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.tif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.tiff\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.wdp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.webp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\{ D6791A63-E7E2-4fee-BF52-5DED8E86E9B8 }" /f
reg delete "HKCR\cmdfile\shell\runasuser" /f
reg delete "HKCR\batfile\shell\runasuser" /f
reg delete "HKCR\exefile\shell\runasuser" /f
reg delete "HKCR\mscfile\shell\runasuser" /f
reg delete "HKCR\Msi.Package\shell\runasuser" /f
reg delete "HKCR\SystemFileAssociations\.glb\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.obj\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.ply\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.stl\Shell\3D Edit\command" /f
reg delete "HKCR\Folder\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\exefile\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\Microsoft.Website\ShellEx\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\mscfile\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{ 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\CLSID\ { 450D8FBA-AD25-11D0-98A8-0800361B1103 }\shellex\PropertySheetHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\Directory\shellex\PropertySheetHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\CLSID\ { 450D8FBA-AD25-11D0-98A8-0800361B1103 }\shellex\ContextMenuHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\ { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /f
reg delete "HKCR\CompressedFolder\ShellEx\ContextMenuHandlers\ { b8cdcb65-b1bf-4b42-9428-1dfdb7ee92af }" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\ { F5FB2C77-0E2F-4A16-A381-3E560C68BC83 }" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\ { F5FB2C77-0E2F-4A16-A381-3E560C68BC83 }" /f
reg delete "HKCR\CLSID\ { 09A47860-11B0-4DA5-AFA5-26D86198A780 }" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController\Appraiser" /v Command /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController\AppraiserServer" /v Command /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController\AvStatus" /v Command /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController\DevInv" /v Command /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController\Encapsulation" /v Command /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController\InvAgent" /v Command /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount" /f

# Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d "2" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MSDeploy\3" /v "EnableTelemetry" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f

# Disable Application Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f

# Enforce Security-Only Telemetry (disable other kinds of Telemetry)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f

# other tweak
reg add "HKLM\Software\Microsoft\Security Center" /v "cval" /t REG_DWORD /d "0" /f
reg delete "HKCU\Environment" /v "OneDrive" /f
reg delete "HKCU\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f
reg add "HKCR\CLSID\{ 018D5C66-4533-4307-9B53-224DE2ED1FE6 }" /v "System.IsPinnedToNameSpaceTree" /d "0" /t REG_DWORD /f
reg add "HKCR\Wow6432Node\{ 018D5C66-4533-4307-9B53-224DE2ED1FE6 }" /v "System.IsPinnedToNameSpaceTree" /d "0" /t REG_DWORD /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "LockImageFlags" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "CreativeId" /t REG_SZ /d "" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "PortraitAssetPath" /t REG_SZ /d "" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "LandscapeAssetPath" /t REG_SZ /d "" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "PlacementId" /t REG_SZ /d "" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "ImpressionToken" /t REG_SZ /d "" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "HotspotImageFolderPath" /t REG_SZ /d "" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "CreativeJson" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Modules\GlobalSettings\Sizer" /v "PageSpaceControlSizer" /t reg_BINARY /d "A00000000000000000000000A0050000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Ribbon" /v "QatItems" /t reg_BINARY /d "3c7369713a637573746f6d554920786d6c6e733a7369713d22687474703a2f2f736368656d61732e6d6963726f736f66742e636f6d2f77696e646f77732f323030392f726962626f6e2f716174223e3c7369713a726962626f6e206d696e696d697a65643d2274727565223e3c7369713a71617420706f736974696f6e3d2230223e3c7369713a736861726564436f6e74726f6c733e3c7369713a636f6e74726f6c206964513d227369713a3132333336222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3136313238222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3136313239222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3132333532222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3132333834222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3132333537222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c2f7369713a736861726564436f6e74726f6c733e3c2f7369713a7161743e3c2f7369713a726962626f6e3e3c2f7369713a637573746f6d55493e" /f
reg add "HKCR\*" /v "DefaultDropEffect" /t REG_DWORD /d "2" /f
reg add "HKCR\AllFilesystemObjects" /v "DefaultDropEffect" /t REG_DWORD /d "2" /f
reg add "HKCR\Drive\shell\encrypt-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKCR\Drive\shell\encrypt-bde-elev" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "CrashDumpEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "DumpLogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "EnableLogFile" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "LogEvent" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "MinidumpsCount" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "Overwrite" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AlwaysKeepMemoryDump" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "DisplayParameters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl\StorageTelemetry" /v "DeviceDumpEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "AllowRemoteRPC" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "fDenyTSConnections" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "StartRCM" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "TSUserEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "AllowRemoteRPC" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowFullControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "CreateEncryptedOnlyTickets" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OOBE" /v "DisablePrivacyExperience" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "NoLocalPasswordResetQuestions" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableLogonBackgroundImage" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowClipboardHistory" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowCrossDeviceClipboard" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DontDisplayNetworkSelectionUI" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicited" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicitedFullControl" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fDenyTSConnections" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "TSAppCompat" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "TSEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "TSUserEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableConfig" /t "REG_DWORD" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableSR" /t "REG_DWORD" /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "PreventRun" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisablePropPage" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableDeviceDelete" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableTelemetryOptInChangeNotification" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSync" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableMeteredNetworkFileSync" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableLibrariesDefaultSaveToOneDrive" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\OneDrive" /v "DisablePersonalSync" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexingOutlook" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexOnBattery" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexingEmailAttachments" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventRemoteQueries" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /v "UserAuthPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /v "BluetoothPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Personalization\Settings" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticErrorText" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticLink" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Osk" /v "BounceTime" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Osk" /v "KeystrokeDelay" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Osk" /v "NextRepeatDelay" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Osk" /v "FirstRepeatDelay" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator\NarratorHome" /v "AutoStart" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator\NarratorHome" /v "MinimizeType" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "FollowInsertion" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "PlayAudioCues" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "IntonationPause" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "ReadHints" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "ErrorNotificationType" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "EchoChars" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "EchoWords" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "NarratorCursorHighlight" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator" /v "CoupleNarratorCursorKeyboard" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "OnlineServicesEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "ContextVerbosityLevel" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "WinEnterLaunchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "DuckAudio" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "UserVerbosityLevel" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "ContextVerbosityLevelV2" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "ScriptingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "EchoToggleKeys" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "UseBitmapSmoothing" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "FollowMouse" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "FollowFocus" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "FollowCaret" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "FollowNarrator" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASAPI32" /v "EnableFileTracing" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASAPI32" /v "EnableAutoFileTracing" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASAPI32" /v "EnableConsoleTracing" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASMANCS" /v "EnableFileTracing" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASMANCS" /v "EnableAutoFileTracing" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASMANCS" /v "EnableConsoleTracing" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EnableHwkbTextPrediction" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "IsVoiceTypingKeyEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\TabletTip\EmbeddedInkControl" /v "EnableInkingWithTouch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Preferences" /v "VoiceActivationEnableAboveLockscreen" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationLastUsed" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\Microsoft.549981C3F5F10_8wekyb3d8bbwe!App" /v "AgentActivationEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\Microsoft.549981C3F5F10_8wekyb3d8bbwe!App" /v "AgentActivationOnLockScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /t "REG_DWORD" /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableSR" /t "REG_DWORD" /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" /v "DevicePasswordLessBuildVersion" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "ARSOUserConsent" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "RestartApps" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\DataCollection" /v "DisableDeviceDelete" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Messenger\Client" /v "PreventRun" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Control Panel\International" /v "TurnOffAutocorrectMisspelledWords" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Control Panel\International" /v "TurnOffHighlightMisspelledWords" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Control Panel\International" /v "TurnOffOfferTextPredictions" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\PassportForWork" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\PassportForWork" /v "DisablePostLogonProvisioning" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "IncludeEnterpriseSpotlight" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightOnSettings" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightOnActionCenter" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightWindowsWelcomeExperience" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Assistance\Client\1.0" /v "NoImplicitFeedback" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "AcceptedPrivacyStatement" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "AddVideosFromPicturesLibrary" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "AutoAddMusicToLibrary" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "DeleteRemovesFromComputer" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "DisableLicenseRefresh" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "FirstRun" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "FlushRatingsToFiles" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "LibraryHasBeenRun" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "MetadataRetrieval" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "SilentAcquisition" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "SilentDRMConfiguration" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "DisableMRU" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "StartInMediaGuide" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "SnapToVideoV11" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "MLSChangeIndexMusic" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\Windows Mail" /v "DisableCommunities" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows Mail" /v "ManualLaunchAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Mail" /v "DisableCommunities" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Mail" /v "ManualLaunchAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PassportForWork" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PassportForWork" /v "DisablePostLogonProvisioning" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Classes\batfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\cmdfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "SendUserGUID" /t REG_BINARY /d "00" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "AskMeAgain" /t REG_SZ /d "No" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "AutoChkTimeout" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WDI\{ C295FBBA-FD47-46ac-8BEE-B1715EC634E5 }" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WDI\{ C295FBBA-FD47-46ac-8BEE-B1715EC634E5 }" /v "DownloadToolsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WDI\{ 9c5a40da-b965-4fc3-8781-88dd50a6299d }" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\change-passphrase" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\change-pin" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\manage-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\resume-bde-elev" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\resume-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\unlock-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.3ds\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.3mf\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.dae\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.dxf\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.glb\Shell\3D Edit" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.obj\Shell\3D Edit" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.obj\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.ply\Shell\3D Edit" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.ply\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.stl\Shell\3D Edit" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.stl\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.wrl\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKCU\Software\Classes\Folder\shellex\ContextMenuHandlers\Library Location" /ve /t REG_NONE /d "" /f
reg add "HKCU\Software\Classes\Folder\shellex\ContextMenuHandlers\Library Location" /v (Default) /t reg_None /d "" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "EnableBackupForWin8Apps" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessBackgroundSpatialPerception" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.SecHealthUI_8wekyb3d8bbwe" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.SecHealthUI_8wekyb3d8bbwe" /v "DisabledByUser" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy" /v "DisabledByUser" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\windows.immersivecontrolpanel_cw5n1h2txyewy" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\windows.immersivecontrolpanel_cw5n1h2txyewy" /v "DisabledByUser" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Windows.Apprep.ChxApp_cw5n1h2txyewy" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Windows.Apprep.ChxApp_cw5n1h2txyewy" /v "DisabledByUser" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLinguisticDataCollection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "OptInOOBE" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CanCortanaBeEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaInAmbientMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "HistoryViewEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "SafeSearchMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "CortanaIsReplaceable" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "CortanaIsReplaced" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "GlobalAssocChangedCounter" /t REG_DWORD /d "13" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "LocalKnownFoldersMigrated" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "TelemetrySalt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableSnapAssistFlyout" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DITest" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableTaskGroups" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_SearchFiles" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ServerAdminUI" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCompColor" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontPrettyPath" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideIcons" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MapNetDrvBtn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "WebView" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Filter" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d "0" /f
# Enable Launch Folder Windows in a Separate Process in Windows
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SeparateProcess" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTypeOverlay" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowStatusBar" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "StoreAppsOnTaskbar" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "StartMenuInit" /t REG_DWORD /d "13" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCortanaButton" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ReindexedProfile" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontUsePowerShellOnWinX" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarBadges" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideDrivesWithNoMedia" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideMergeConflicts" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAppsVisibleInTabletMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "JointResize" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapAssist" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapFill" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V "MMTaskbarEnabled" /T REG_dWORD /D "1" /F
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V "MMTaskbarGlomLevel" /T REG_dWORD /D "2" /F
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSmallIcons" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSizeMove" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "FolderContentsInfoTip" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowInfoTip" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowPreviewHandlers" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SharingWizardOn" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MultiTaskingAltTabFilter" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SearchBoxVisibleInTouchImprovement" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AppIconInTouchImprovement" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "FileExplorerInTouchImprovement" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People\ShoulderTap" /v "ShoulderTap" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "AllItemsIconView" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "StartupPage" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "ConfirmationCheckBoxDoForAll" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesChanges" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesVersion" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowSleepOption" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowHibernateOption" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "HubMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AicEnabled" /t REG_SZ /d "Anywhere" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "GlobalAssocChangedCounter" /t REG_DWORD /d "41" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{ B4BFCC3A-DB2C-424C-B029-7FE99A87C641 }\PropertyBag" /v "NoCustomize" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v "AutoSuggest" /t REG_SZ /d "no" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v "DisableAutoplay" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Ribbon" /v "MinimizedStateTabletModeOff" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "1" /t REG_SZ /d "software_reporter_tool.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoStartMenuMorePrograms" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoCustomizeThisFolder" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDrivesInSendToMenu" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoNetConnectDisconnect" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecycleFiles" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ConfirmFileDelete" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoStartMenuMorePrograms" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ForceActiveDesktopOn" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoActiveDesktop" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoActiveDesktopChanges" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutorun" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoOnlinePrintsWizard" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWebServices" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsNetHood" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d "255" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInstrumentation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ShutdownWithoutLogon" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 09A47860-11B0-4DA5-AFA5-26D86198A780 }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 1d27f844-3a1f-4410-85ac-14651078412d }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 9F156763-7844-4DC4-B2B1-901F640F5155 }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { f81e9010-6ea4-11ce-a7ff-00aa003ca9f6 }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 09A47860-11B0-4DA5-AFA5-26D86198A780 }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 1D27F844-3A1F-4410-85AC-14651078412D }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 596AB062-B4D2-4215-9F74-E9109B0A8153 }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 9F156763-7844-4DC4-B2B1-901F640F5155 }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { f81e9010-6ea4-11ce-a7ff-00aa003ca9f6 }" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage" /v "BluetoothLastDisabledNearShare" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "RomeSdkChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "TabletMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "ConvertibleSlateModePromptPreference" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "SignInMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SlideshowEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "reInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-202914Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-280810Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-280811Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-280813Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-280815Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310091Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310092Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-314559Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-314563Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338380Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338381Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353698Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000045Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000161Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000163Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000165Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000530Enabled" /t REG_DWord /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Id" /t REG_SZ /d "null" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "PenWorkspaceAppSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WinBio\Credential Provider" /v "Domain Accounts" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\SessionData" /v "AllowLockScreen" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Id" /t REG_SZ /d "null" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "DisablePrediction" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\TabletTip\1.7" /v "DisablePrediction" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Network\NetworkLocationWizard" /v "HideWizard" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletPC" /v "TurnOffPenFeedback" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "ConfigureWindowsSpotlight" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Conferencing" /v "NoRDS" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\MDM" /v "DisableRegistration" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Gwx" /v "DisableGwx" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Digital Locker" /v "DoNotRunDigitalLocker" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Feeds" /v "SyncStatus" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Messaging" /v "CloudServiceSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventLog\Windows PowerShell" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsMitigation" /v "UserPreference" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PushToInstall" /v "DisablePushToInstall" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service\WinRS" /v "AllowRemoteShellAccess" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /v "OsuregistrationStatus" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v "LegacyDefaultPrinterMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Settings\FindMyDevice" /v "LocationSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "DisableQueryRemoteServer" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /v "AutoConnectAllowedOEM" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Connect" /v "AllowProjectionToPC" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FileHistory" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\MiracastReceiver" /v "ConsentToast" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\CI\Policy" /v "SkuPolicyRequired" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v "SkuPolicyRequired" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "WakeUp" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Ole" /v "EnableDCOM" /t REG_SZ /d "N" /f
reg add "HKCU\Software\Microsoft\Input\Locales\loc_0409" /v "UseFluency" /t REG_DWORD /d "514" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\OOBE" /v "DisablePrivacyExperience" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "srvcomment" /t reg_SZ /d "ANONYMOUS" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoLogoff" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableLockWorkstation" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangePassword" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "DefaultFileTypeRisk" /t REG_DWORD /d "6152" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "AllSigningEqual" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "DisableSendRequestAdditionalSoftwareToWER" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "DisableSendGenericDriverNotFoundToWER" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Clipboard" /v "AllowClipboardHistory" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Clipboard" /v "AllowCrossDeviceClipboard" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" /v "EnableMtcUvc" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController" /v "RunsBlocked" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Id" /t REG_SZ /d "null" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost" /v "ETWLoggingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell" /v "EnableScripts" /t reg_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\PowerShell" /v "EnableScripts" /t reg_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t reg_SZ /d "Restricted" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t reg_SZ /d "Restricted" /f
reg add "HKCU\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t reg_SZ /d "Restricted" /f
reg add "HKLM\SOFTWARE\Classes\CLSID\{ 645FF040-5081-101B-9F08-00AA002F954E }\shell\Separator" /v "CommandFlags" /t REG_DWORD /d "40" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Media Foundation\Platform" /v "EnableFrameServerMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows Media Foundation\Platform" /v "EnableFrameServerMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\Library Location" /ve /t REG_NONE /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Holographic" /v "FirstRunSucceeded" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Holographic" /v "IdleTimerDuration" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Holographic" /v "ScreensaverModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Holographic\StageManagement" /v "DisableQuickRoomSetup" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Holographic\StageManagement" /v "DisableStageNearbyRequi#ent" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "0" /f

# Remove Cast To Device From Context Menus Of Media Files
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 7AD84985-87B4-4a16-BE58-8B72A5B390F7 }" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 7AD84985-87B4-4a16-BE58-8B72A5B390F7 }" /t REG_SZ /d "" /f

# Disable ALL Modern Apps Background Activity
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d "2" /f

# no lock Screen
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreen" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "LockScreenOverlaysDisabled" /t REG_DWORD /d "1" /f

# Disable Autologgers
Get-AutologgerConfig | Set-AutologgerConfig -Start 0 -InitStatus 0 -Confirm:$false -ErrorAction SilentlyContinue -Verbose
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f


# Disable Diagtrack Dignostic Logs
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\PerfTrack" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "DiagTrackAuthorization" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ConnectivityNoNetworkTime" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "UploadPermissionReceived" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "DisableAutomaticTelemetryKeywordReporting" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "TelemetryServiceDisabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TestHooks" /v "DisableAsimovUpLoad" /t REG_DWORD /d 1 /f
# $key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name ETag -Value '' -ErrorAction SilentlyContinue -Verbose }"
# $key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name ETagQueryParameters -Value '' -ErrorAction SilentlyContinue -Verbose }"
# $key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name RefreshInterval -Value 0 -ErrorAction SilentlyContinue -Verbose }"
# $key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name SettingsPriority -Value 0 -ErrorAction SilentlyContinue -Verbose }"
# $key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name SettingsRegistrationType -Value 0 -ErrorAction SilentlyContinue -Verbose }"
# $key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name SettingsType -Value 0 -ErrorAction SilentlyContinue -Verbose }"
# $key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
# $key = 'HKLM:SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name FeatureStates -Value 828 -ErrorAction SilentlyContinue -Verbose }"
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TelemetryNamespaces" /f

# Apply Best NetBT Tweak
# $key = 'HKLM:SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name NetbiosOptions -Value 2 -Verbose }"

# Edge Policy
reg add "HKCU\Software\Microsoft\Edge\SmartScreenEnabled" /ve /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v "NoRemove" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /v "NoRemove" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge Update" /v "NoRemove" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BackgroundModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "StartupBoostEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SleepingTabsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultBrowserSettingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenPuaEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenForTrustedDownloadsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultGeolocationSetting" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageSearchBox" /t REG_SZ /d "redirect" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PasswordManagerEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ProxySettings" /t REG_SZ /d "\"ProxyMode\": \"direct\"" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ShowHomeButton" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PinningWizardAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BrowserNetworkTimeQueriesEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "TabFreezingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AutoplayAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PinningWizardAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AlwaysOpenPdfExternally" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AutoImportAtFirstRun" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BrowserSignin" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DnsOverHttpsMode" /t REG_SZ /d "off" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SyncDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PromotionalTabsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "FavoritesBarEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AddressBarMicrosoftSearchInBingProviderEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HideFirstRunExperience" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ShowMicrosoftRewards" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BuiltInDnsClientEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" /v "CreateDesktopShortcut{ 56EB18F8-B008-4CBD-B6D2-8C97FE7E9062 }" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" /v "Update{ 56EB18F8-B008-4CBD-B6D2-8C97FE7E9062 }" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" /v "ProxyMode" /t REG_SZ /d "direct" /f

# Disable SmartScreen
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "ShellSmartScreenLevel" /t REG_SZ /d "Warn" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f

disable-computerrestore -drive 'C:\' -Verbose
disable-computerrestore -drive 'D:\' -Verbose
reg add "HKCU\Software\Microsoft\Assistance\Client\1.0\Settings" /v "ImplicitFeedback" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Download" /v "CheckExeSignatures" /t REG_SZ /d "no" /f
reg delete "HKCU\Software\Microsoft\OneDrive" /f
Set-Service -Name 'WalletService' -StartupType Disabled -Status Stopped -Verbose
Set-Service -Name 'WbioSrvc' -StartupType Disabled -Status Stopped -Verbose
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\AppID\slui.exe" /v "NoGenTicket" /t REG_DWORD /d "1" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BannerStore\OptIn" /v "URL" /t REG_SZ /d "" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BannerStore\OptOut" /v "URL" /t REG_SZ /d "" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "DisableWerReporting" /t REG_DWORD /d 1 /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f
%Windir%\SysWOW64\PowerRun.exe /SW:0 %Windir%\System32\reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{ 87D66A43-7B11-4A28-9811-C86EE395ACF7 }" /f

# Windows Update
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallDay" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallEveryWeek" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallTime" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "DontPromptForWindowsUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "DontSearchWindowsUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "DriverUpdateWizardWuSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f

# DoNotOpenServerManagerAtLogon
reg add "HKLM\SOFTWARE\Microsoft\ServerManager" /v "DoNotOpenServerManagerAtLogon" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\ServerManager" /v "DoNotPopWACConsoleAtSMLaunch" /t REG_DWORD /d "1" /f

# no shutdown event tracker
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "ShutdownReasonUI" /t REG_DWORD /d "0" /f

# Disable Folder Thumbnails without Disabling Thumbnail Preview for Files
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "Logo" /t REG_SZ /d "d:\somefile.jpg" /f

# disable open file warning
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "ModRiskFileTypes" /t REG_SZ /d ".bat.exe.reg.vbs.chm.msi.js.cmd" /f

# unpin Mail app
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\AuxilliaryPins" /v "MailPin" /t REG_DWORD /d "1" /f

# Explorer Policy
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoPinningStoreToTaskbar" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HideRecentlyAddedApps" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoAutoplayfornonVolume" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoPinningToDestinations" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableThumbsDBOnNetworkFolders" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoPinningStoreToTaskbar" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableContextMenusInStart" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoUninstallFromStart" /t REG_DWORD /d "1" /f

# delete taskbar shortcuts
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /f

# Disable Ctrl+Alt+Del login
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableCAD" /t REG_DWORD /d "1" /f

# Disable Cloud Optimized Taskbars
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableCloudOptimizedContent" /t REG_DWORD /d "1" /f

# Disable Microsoft Store Apps Open Files in Default Desktop App
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "BlockFileElevation" /t REG_DWORD /d "1" /f

# Turn on hardware-accelerated GPU scheduling
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f

# Disable Automatically save my restartable apps when I sign out and restart them after I sign in
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "RestartApps" /t REG_DWORD /d "0" /f

# Disable LLTDIO driver and Responder RSPNDR driver
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LLTD" /v "EnableRspndr" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LLTD" /v "EnableLLTDIO" /t REG_DWORD /d "0" /f

# Disable power management in connected standby mode
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fDisablePowerManagement" /t REG_DWORD /d "1" /f

# This policy setting controls the appearance of window animations such as those found when restoring, minimizing, and maximizing windows
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "DisallowAnimations" /t REG_DWORD /d "1" /f

# visual
reg add "HKU\.DEFAULT\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "DockMoving" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "WindowArrangementActive" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t REG_DWORD /d "100" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "BorderWidth" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "PaddedBorderWidth" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationColorBalance" /t REG_DWORD /d "4294967283" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationColor" /t REG_DWORD /d "1785178" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AccentColorInactive" /t REG_DWORD /d "4294901760" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AccentColor" /t REG_DWORD /d "4284103963" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableWindowColorization" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationAfterglow" /t REG_DWORD /d "1785178" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationBlurBalance" /t REG_DWORD /d "103" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentPalette" /t REG_BINARY /d "CBE7EC00AAC6D4006D8DAA0059779800455E7E002D3E5E001019380088179800" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentColorMenu" /t REG_DWORD /d "4284103963" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "StartColorMenu" /t REG_DWORD /d "4286471749" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAcrylicOpacity" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 0 /f

# https://www.tenforums.com/tutorials/103762-prevent-windows-10-deleting-thumbnail-cache.html
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /v "Autorun" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /v "Autorun" /t REG_DWORD /d "0" /f

# never auto logoff
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "InactivityTimeoutSecs" /t REG_DWORD /d "5871936" /f

# Disable UwpStartupTasks
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUwpStartupTasks" /t REG_DWORD /d "0" /f

# no boot optimize
reg add "HKLM\Software\Microsoft\Dfrg\BootOptimizeFunction" /v "Enable" /t REG_SZ /d "n" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Prefetcher" /v "BootFilesOptimized" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OptimalLayout" /v "EnableAutoLayout" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f

# https://www.tenforums.com/tutorials/103059-enable-disable-diagnostic-data-viewer-windows-10-a.html
reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\EventTranscriptKey" /T REG_DWORD /V "EnableEventTranscript" /D "1" /f

# no startup delay
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AsyncScriptDelay" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableLogonScriptDelay" /t REG_DWORD /d "0" /f

# Disable appresolver early start
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "EarlyAppResolverStart" /t REG_DWORD /d "0" /f

# do not notifiy USB deivce error
reg add "HKCU\Software\Microsoft\Shell\USB" /v "NotifyOnUsbErrors" /t REG_DWORD /d "1" /f

# en-US as first input method
reg add "HKU\.DEFAULT\Keyboard Layout\Preload" /v "1" /t REG_SZ /d "00000409" /f
reg add "HKCU\Keyboard Layout\Preload" /v "1" /t REG_SZ /d "00000409" /f

# Disable Peer-to-Peer Networking
reg add "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "1" /f

# Office Setting
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "FirstRun" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "FirstRunOnRTM" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "DefaultFormat" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "VisiForceField" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "IgnoreFilenamesEmailAliases" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "AutoSpell" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "NoContextSpell" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "InsPic" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "SoundFeedback" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "BkgrndPag" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "ATUserAdded" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "AccentOnUpper" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "VisiFlm" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "IMEControlActive" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "DisableBootToOfficeStart" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "ShowParaMarks" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "WritingStyle" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "AutoHideRuler" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "AnimateScreenMove" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "DOC-PATH" /t REG_EXPAND_SZ /d "C:\\" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "AUTOSAVE-PATH" /t REG_EXPAND_SZ /d "C:\TEMP\\" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Security\FileBlock" /v "OpenInProtectedView" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations" /v "AllowNetworkLocations" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location0" /v "Path" /t REG_SZ /d "D:\\" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location0" /v "AllowSubfolders" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Security\Trusted Locations\Location0" /v "Description" /t REG_SZ /d "" /f

# Disable WFP logging - https://docs.microsoft.com/en-US/troubleshoot/windows-client/networking/lots-disk-io-writes-wfpdiag-etl-log
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BFE\Parameters\Policy\Options" /v "CollectNetEvents" /t REG_DWORD /d "0" /f

# Network Throttling Index
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "100" /f

# Gameconfig
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
reg add "HKU\.DEFAULT\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
reg add "HKU\.DEFAULT\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
reg delete "HKCU\System\GameConfigStore\Children" /f
reg delete "HKCU\System\GameConfigStore\Parents" /f
reg add "HKU\.DEFAULT\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f
reg add "HKU\.DEFAULT\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f

# Blocking Windows driver co-installer applications
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Installer" /v "DisableCoInstallers" /t REG_DWORD /d "1" /f

# Microsoft Pinyin
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "PinYin" /t REG_SZ /d "\"C:\Windows\System32\ctfmon.exe\"" /f
reg add "HKCU\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" /v "EnableFixedCandidateCountMode" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" /v "FontStyleTSF3" /t REG_SZ /d "20.00pt; Regular; ; Microsoft YaHei UI" /f
reg add "HKCU\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" /v "MaxCandidates" /t REG_DWORD /d "9" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnablePeopleName" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableUMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable EUDP" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable self-learning" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableSmartSelfLearning" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableLiveSticker" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableVMode" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableSmartFuzzyPinyin" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable Auto Correction" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "English Switch Key" /t REG_DWORD /d "6" /f
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableSimplifiedTraditionalOutputSwitch" /t REG_DWORD /d "0" /f

# no hide icons
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d "0" /f

# Process Mitigations
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "222202202222222220020000002000200000000000000000" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "0x1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d "1" /f

# Disable Virtualization-based Security (VBS) & Opt out of HVCI enablement
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "HyperVVirtualizationBasedSecurityOptout" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "BlockAutoenablement" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f

# Ungroup icons on all taskbars
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoTaskGrouping" /t REG_DWORD /d 1

# Remove the Open in Windows Terminal context menu
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v " { 9F156763-7844-4DC4-B2B1-901F640F5155 }" /t REG_SZ /d "" /f 

# Disable Acrylic Background On Logon Screen
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableAcrylicBackgroundOnLogon" /t REG_DWORD /d "1" /f

# Use realtime priority for csrss.exe and Chrome
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f

# Removing graphic Kernel Blacklist...
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\BlockList\Kernel" /va /reg:64 /f

# turnoff Font streaming
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableFontProviders" /t REG_DWORD /d "0" /f

# Disable Security Centre Notifications
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f

# remove nvidia driver Crap
Net stop NVDisplay.ContainerLocalSystem
Remove-Item -Path "C:\Program Files\NVIDIA Corporation\NvTopps\_NvTopps.dll" -Force -Verbose
Remove-Item -Path "C:\Program Files\NVIDIA Corporation\DisplayDriverRAS\_DisplayDriverRAS.dll" -Force -Verbose
Remove-Item -Path "C:\Program Files\NVIDIA Corporation\NvFBC\NvFBCPlugin.dll" -Force -Verbose
Remove-Item –path "C:\Windows\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_5292bbfbf575e2d2\NvCamera" –recurse -Verbose
attrib +r "C:\ProgramData\NVIDIA Corporation\nvtopps\nvtopps.db3"
attrib +r "C:\ProgramData\NVIDIA Corporation\nvtopps\nvtopps.log"
attrib +r "C:\Program Files\NVIDIA Corporation\Display.NvContainer\nvtopps.db3"
Net start NVDisplay.ContainerLocalSystem
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d "5" /f

# Win11 - Start Button on left alignment
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAl" /t REG_DWORD /d 0 /f

# Win11 - No Startup Sound
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\EditionOverrides" /v "UserSetting_DisableStartupSound" /t REG_DWORD /d "1" /f

# Win11 - Remove Widgets Button on Taskbar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d "0" /f

# Win11 - Disable_show_snap_layouts_when_hover_over_maximize_button
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableSnapAssistFlyout" /t REG_DWORD /d "0" /f

# Win11 - Disable_rminimize_windows_when_monitor_is_disconnected
reg add "HKCU\Control Panel\Desktop" /v "MonitorRemovalRecalcBehavior" /t REG_DWORD /d "1" /f

# Win11 - no Drag Full Window
reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f

# Win11 - Enable Remember Window Locations
reg add "HKCU\Control Panel\Desktop" /v "RestorePreviousStateRecalcBehavior" /t REG_DWORD /d "0" /f

# Win11 - No Chat Icon in Taskbar
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Chat" /v "ChatIcon" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f

# Win11 - Restore Win10 Right Menu
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve