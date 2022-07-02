$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'
$ConfirmPreference = 'None'
$PSModuleAutoloadingPreference = 'All'
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell' -Name 'EnableScripts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force
New-PSDrive -PSProvider Registry -Name HKCR -Root HKEY_CLASSES_ROOT

Start-Transcript -Path c:\2.txt -Force

####################################################################################################W#########################################################################################################################

<# 标准服务 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *luafv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DiagTrack* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CertPropSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DusmSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DPS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdiServiceHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdiSystemHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MSDTC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PolicyAgent* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NgcSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WPDBusEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PcaSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ShellHWDetection* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WSearch* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lfsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DsmSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NcaSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AJRouter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DispBrokerDesktopSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WbioSrvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wisvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WerSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MapsBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Themes* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *QWAVE* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *fhsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *stisvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *volmgrx* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NetBIOS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CldFlt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CSC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wcifs* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *storqosflt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *GpuEnergyDrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lltdio* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MsLldp* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wcncsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *rspndr* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *spaceport* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Vid* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *kdnic* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevicesFlow* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DeviceAssociationService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevQueryBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WpnService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DisplayEnhancementService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SysMain* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *diagnosticshub.standardcollector.service* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *diagsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *webthreatdefsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RemoteRegistry* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *GraphicsPerfSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PimIndexMaintenanceSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RetailDemo* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MixedRealityOpenXRSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *dmwappushservice* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WMPNetworkSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WalletService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lmhosts* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *svsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SCPolicySvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ScDeviceEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SCardSvr* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SensorService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TroubleshootingSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wercplsupport* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PhoneSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SEMgrSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WpcMonSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CscService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MsKeyboardFilter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SharedRealitySvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *embeddedmode* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TrkWks* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *mpssvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BFE* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Psched* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BDESVC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PushToInstall* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *InstallService* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NgcCtnrSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cloudidsvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wlidsvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ClipSVC* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CredentialEnrollmentManagerUserSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppReadiness* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LicenseManager* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppXSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TokenBroker* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bam* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *dam* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Spooler* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PrintNotify* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SSDPSRV* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *fdPHost* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *FDResPub* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UmRdpService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TermService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SessionEnv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BTAGService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bthserv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthAvctpSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NaturalAuthentication* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *tdx* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Beep* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *tcpipreg* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Ndu* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NetBT* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RasAuto* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RpcLocator* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SgrmBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LxpSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SmsRouter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WarpJITSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PptpMiniport* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RasAgileVpn* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Rasl2tp* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RasSstp* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RasPppoe* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RasMan* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XblAuthManager* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XblGameSave* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *xboxgip* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XboxGipSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XboxNetApiSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BcastDVRUserService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BluetoothUserService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CaptureService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cbdhsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ConsentUxUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevicePickerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevicesFlowUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MessagingService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *OneSyncSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PrintWorkflowUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WpnUserService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UnistoreSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UserDataSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UdkUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LanmanWorkstation* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LanmanServer* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Browser* | Set-ItemProperty -Name Start -Value 3 -Force

<# 第三方厂商驱动 #>
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
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WacomPen' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinVerbs' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\UnionFS' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\rt640x64' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvraid' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvstor' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Acx01000' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\atapi' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NVHDA' -Name 'Start' -Value 4 -PropertyType DWord -Force

<# Intel驱动 #>
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iagpio' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iai2c' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_BXT_P' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_CNL' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_GLK' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_BXT_P' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_CNL' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_GLK' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSSi_GPIO' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaLPSSi_I2C' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaStorAVC' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaStorV' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\intelide' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\intelpep' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\intelpmax' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\IntelPMT' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\intelppm' -Name 'Start' -Value 4 -PropertyType DWord -Force

<# 映像劫持 #>
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WaaSMedicAgent.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions' -Name 'IoPriority' -Value 3 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe\PerfOptions" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe\PerfOptions' -Name 'IoPriority' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe\PerfOptions" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe\PerfOptions' -Name 'IoPriority' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions' -Name 'IoPriority' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions' -Name 'IoPriority' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe\PerfOptions" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe\PerfOptions' -Name 'IoPriority' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc.exe\PerfOptions" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc.exe\PerfOptions' -Name 'IoPriority' -Value 1 -PropertyType DWord -Force

<# 系统激活 #>
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' -Name 'NoGenTicket' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' -Name 'AllowWindowsEntitlementReactivation' -Value 1 -PropertyType DWord -Force

<# 开启MSI模式 #>
# https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/
$MSIMode = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'MessageSignaledInterruptProperties' }
ForEach ($item in $MSIMode) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'MSISupported' -Value 1 -Force }

<# 关闭省电 #>
$StorPort = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 9 | Where-Object { $_.PSChildName -Like 'StorPort' }
ForEach ($item in $StorPort) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'EnableIdlePowerManagement' -Value 0 -Force }
$DeviceParameters = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 9 | Where-Object { $_.PSChildName -Like 'Device Parameters' }
ForEach ($item in $DeviceParameters) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'AllowIdleIrpInD3' -Value 0 -Force }
ForEach ($item in $DeviceParameters) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'EnhancedPowerManagementEnabled' -Value 0 -Force }
ForEach ($item in $DeviceParameters) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'DeviceSelectiveSuspended' -Value 0 -Force }
ForEach ($item in $DeviceParameters) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'SelectiveSuspendEnabled' -Value 0 -Force }
ForEach ($item in $DeviceParameters) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'EnumerationRetryCount' -Value 0 -Force }
ForEach ($item in $DeviceParameters) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'ExtPropDescSemaphore' -Value 0 -Force }
$WDF = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 9 | Where-Object { $_.PSChildName -Like 'WDF' }
ForEach ($item in $WDF) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'WdfDirectedPowerTransitionEnable' -Value 0 -Force }
ForEach ($item in $WDF) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'IdleInWorkingState' -Value 0 -Force }

<# 禁用Defender #>
# Set-ItemProperty -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Name Visibility -Value '1' -Force
# Remove-Item -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Include *Owner* -Recurse -Force
# Get-ChildItem -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Name | ForEach-Object { dism /online /remove-package /PackageName:$_ /NoRestart }
"regsvr32 /u /s 'C:\Program Files\Windows Defender\shellext.dll'" | cmd
"'C:\Program Files\Windows Defender\MpCmdRun.exe' -DisableService" | cmd
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'SecurityHealth' -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdFilter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdNisSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdNisDrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WinDefend* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wscsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SecurityHealthService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Sense* | Set-ItemProperty -Name Start -Value 4 -Force
# https://support.microsoft.com/en-us/topic/what-is-smart-app-control-285ea03d-fa88-4d56-882e-6698afdb7003
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy' -Name 'VerifiedAndReputablePolicyState' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Name 'ScanWithAntiVirus' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Security Center' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center' -Name 'cval' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'PUAProtection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableRealtimeMonitoring' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'LocalSettingOverrideDisableRealtimeMonitoring' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting' -Name 'WppTracingLevel' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting' -Name 'DisableGenericRePorts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControlEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControl' -Value 'Anywhere' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Name 'LocalSettingOverrideSpynetReporting' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Name 'SubmitSamplesConsent' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Name 'SpynetReporting' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Name 'DisableBlockAtFirstSeen' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration' -Name 'Notification_Suppress' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration' -Name 'UILockdown' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection' -Name 'EnableNetworkProtection' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray' -Name 'HideSystray' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications' -Name 'DisableNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCR:\AppUserModelId\Microsoft.Windows.Defender" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppUserModelId\Windows.Defender" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppX9kvz3rdv8t7twanaezbwfcdgrbg3bck0" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WindowsDefender" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\{A79DB36D-6218-48e6-9EC9-DCBA9A39BF0F}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\windowsdefender" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Google\Chrome\NativeMessagingHosts\com.microsoft.defender.browser_extension.native_message_host" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\CspSchema\defender" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\DeclaredConfiguration\CspSchema\1.0\defender" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\windowsdefender" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications\Applications\Windows.Defender" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{F80FC80C-6A04-46FB-8555-D769E334E9FC}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{FEEE9C23-C4E2-4A34-8C73-FE8F9786C8B4}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\TypeLib\{8C389764-F036-48F2-9AE2-88C260DCF43B}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{F80FC80C-6A04-46FB-8555-D769E334E9FC}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{FEEE9C23-C4E2-4A34-8C73-FE8F9786C8B4}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{a463fcb9-6b1c-4e0d-a80b-a2ca7999e25d}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{a463fcb9-6b1c-4e0d-a80b-a2ca7999e25d}" -recurse -force;

<# Game PresenceWriter #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter' -Name 'ActivationType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter' -Name 'ActivationType' -Value 0 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCR:\CLSID\{3E73C6F7-8937-4C07-85D9-D4447A4BE072}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Interface\{782674D9-5CBB-4FCA-AD72-D9AC5F7AE963}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{3E73C6F7-8937-4C07-85D9-D4447A4BE072}" -recurse -force;

<# windows升级 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PeerDistSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BITS* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DoSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CryptSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UsoSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WaaSMedicSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wuauserv* | Set-ItemProperty -Name Start -Value 3 -Force

<# 事件记录 #>
# $Logger = Get-ChildItem -Path 'HKLM:\System\CurrentControlSet\Control\WMI\Autologger' -Recurse -Depth 3 | Where-Object { $_.PSChildName -NotLike 'Circular Kernel Context Logger' -and $_.PSChildName -NotLike 'EventLog-Application' -and $_.PSChildName -NotLike 'EventLog-Security' -and $_.PSChildName -NotLike 'EventLog-System' -and $_.PSChildName -NotLike 'NtfsLog' -and $_.PSChildName -NotLike 'WdiContextLog' -and $_.PSChildName -NotLike 'NetCore' -and $_.PSChildName -NotLike 'LwtNetLog' -and $_.PSChildName -NotLike 'AppModel' -and $_.PSChildName -NotLike 'UBPM' -and $_.PSChildName -NotLike 'TileStore' -and $_.PSChildName -NotLike 'WifiSession' }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Start' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Status' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Enabled' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'EnableProperty' -Value 0 -Force }
# $WINEVT = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels'; Get-ChildItem $WINEVT | ForEach-Object { Set-ItemProperty -Path "$WINEVT\$($_.pschildname)" -Name Enabled -Value 0 -Verbose }

<# 计划任务 #>
# Get-ScheduledTask -TaskPath "\Microsoft\*" | Where-Object {$_.TaskName -notmatch 'MsCtfMonitor' -and $_.TaskName -notmatch 'Sysprep Generalize Drivers' -and $_.TaskName -notmatch 'Device Install Group Policy' -and $_.TaskName -notmatch 'ResPriStaticDbSync' -and $_.TaskName -notmatch 'WsSwapAssessmentTask' -and $_.TaskName -notmatch 'DXGIAdapterCache' -and $_.TaskName -notmatch 'UninstallDeviceTask' -and $_.TaskName -notmatch 'SvcRestartTask' -and $_.TaskName -notmatch 'SvcRestartTaskLogon' -and $_.TaskName -notmatch 'SvcRestartTaskNetwork' -and $_.TaskName -notmatch 'SvcTrigger' -and $_.TaskName -notmatch 'GatherNetworkInfo'} | Disable-ScheduledTask
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\MicrosoftEdgeUpdateTaskMachineCore" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\MicrosoftEdgeUpdateTaskMachineUA" -force;
Get-ScheduledTask -TaskPath "\Microsoft\Office\Office Performance Monitor" | Disable-ScheduledTask
Get-ScheduledTask -TaskPath "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" | Disable-ScheduledTask
Get-ScheduledTask -TaskPath "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" | Disable-ScheduledTask
Get-ScheduledTask -TaskName "GoogleUpdateTaskMachineCore" | Disable-ScheduledTask
Get-ScheduledTask -TaskName "GoogleUpdateTaskMachineUA" | Disable-ScheduledTask

<# 禁用nvidia驱动log #>
Get-ChildItem -Path 'C:\ProgramData\NVIDIA Corporation\nvtopps' -Recurse -File | ForEach-Object { $_.IsReadOnly = $True }

<# 删除Edge浏览器 #>
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Data\6" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Data\7" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\microsoft-edge" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\microsoft-edge-holographic" -recurse -force;
Remove-ItemProperty -LiteralPath 'HKCR:\AppUserModelId\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge' -Name 'ExcludeFromTabbedSetsSettings' -Force
Remove-Item -LiteralPath "HKCR:\AppUserModelId\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" -recurse -force;
'taskkill /f /im "MicrosoftEdgeUpdate.exe"' | cmd
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdate' -recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdatem' -recurse -Force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Edge" -recurse -force;
Get-ChildItem 'C:\Program Files (x86)\Microsoft' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\Users\Administrator\AppData\Local\Microsoft\Edge' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\ProgramData\Microsoft\EdgeUpdate' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\Windows\System32\config\systemprofile\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch' | Remove-Item -Recurse -Force
Remove-Item -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" -recurse -force;
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk' -Force
Remove-Item -Path 'C:\Users\Administrator\Desktop\Microsoft Edge.lnk' -Force

<# 删除OneDrive #>
'C:\Windows\System32\OneDriveSetup.exe /uninstall /allusers' | cmd
'taskkill /f /im "OneDrive.exe"' | cmd
Get-ChildItem 'C:\Users\Administrator\AppData\Local\Microsoft\OneDrive' | Remove-Item -Recurse -Force
Remove-Item 'C:\Users\Administrator\OneDrive' -recurse -Force
Remove-Item 'C:\ProgramData\Microsoft OneDrive' -recurse -Force
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk' -Force
New-ItemProperty -LiteralPath 'HKCR:\.fluid\shell\open\command' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\.loop\shell\open\command' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\.note\shell\open\command' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\.whiteboard\shell\open\command' -Name '(default)' -Value '' -PropertyType String -Force
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive1" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive2" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive3" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive4" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive5" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive6" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive7" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\Offline Files" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive1" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive2" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive3" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive4" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive5" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive6" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\ OneDrive7" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\Offline Files" -force;

<# CBD #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing' -Name 'DisableWerReporting' -Value 1 -PropertyType DWord -Force

<# https://www.ntlite.com/community/index.php?threads/closed-disable-wininet-task-and-webcache-folder.846/ #>
Remove-Item -LiteralPath "HKCR:\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-Item -LiteralPath "HKCR:\Wow6432Node\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-Item -LiteralPath "HKCR:\Wow6432Node\AppID\{0358b920-0ac7-461f-98f4-58e32cd89148}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\Software\Wow6432Node\Classes\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-Item -LiteralPath "HKLM:\Software\Wow6432Node\Classes\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}" -recurse -force;

<# Defaultuser0 #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Broker\ElevatedClsids\{2b2cad40-19c1-4794-b32d-397e41d5e8a7}' -Name 'AutoElevationAllowed' -Value 1 -PropertyType DWord -Force

<# 无用Key #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}\ShellFolder' -Name 'Attributes' -Value -1332739827 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder' -Name 'Attributes' -Value -1332739827 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}\ShellFolder' -Name 'Attributes' -Value -1332739827 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder' -Name 'Attributes' -Value -1332739827 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}\ShellFolder' -Name 'Attributes' -Value -1332739827 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.AIFF\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.ASX\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.AU\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.CDA\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MIDI\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MK3D\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MP3\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WAX\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WVX\shell" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\audio\shell\Enqueue\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\audio\shell\Play\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Audio\shell\Enqueue\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Audio\shell\Play\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Image\shell\Enqueue\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Image\shell\Play\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\DesktopBackground\Shell\Display\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\DesktopBackground\Shell\EditStickers" -recurse -force;
Remove-Item -LiteralPath "HKCR:\DesktopBackground\Shell\ShowDesktopSearch" -recurse -force;
Remove-Item -LiteralPath "HKCR:\dqyfile\shell\Edit_Query_in_Notepad\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\dqyfile\shell\Edit_Query_in_Notepad" -recurse -force;
Remove-Item -LiteralPath "HKCR:\iqyfile\shell\Edit_Query_in_Notepad\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\iqyfile\shell\Edit_Query_in_Notepad" -recurse -force;
Remove-Item -LiteralPath "HKCR:\oqyfile\shell\Edit_Query_in_Notepad\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\oqyfile\shell\Edit_Query_in_Notepad" -recurse -force;
Remove-Item -LiteralPath "HKCR:\rqyfile\shell\Edit_Query_in_Notepad\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\rqyfile\shell\Edit_Query_in_Notepad" -recurse -force;
Remove-Item -LiteralPath "HKCR:\scrfile\shell\install\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\scrfile\shell\install" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.CDA\shell\open\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.CDA\shell\open" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.CDA\shell\play\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.CDA\shell\play" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AudioCD\shell\play\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AudioCD\shell\play" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\change-passphrase" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\change-pin" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\encrypt-bde" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\encrypt-bde-elev" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\find" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\manage-bde" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\pintohome" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\resume-bde" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\resume-bde-elev" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shell\unlock-bde" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shellex\ContextMenuHandlers\EPP" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.3ds\Shell\3D Print" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.3mf\Shell\3D Print" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.dae\Shell\3D Print" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.dxf\Shell\3D Print" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.obj\Shell\3D Print" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.ply\Shell\3D Print" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.stl\Shell\3D Print" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.wrl\Shell\3D Print" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Windows.IsoFile\shell\burn" -recurse -force;
Remove-Item -LiteralPath "HKCR:\scrfile" -recurse -force;
Remove-Item -LiteralPath "HKCR:\RDP.File" -recurse -force;
Remove-Item -LiteralPath "HKCR:\NetServer\shell\remotedesktop" -recurse -force;
Remove-Item -LiteralPath "HKCR:\ODCfile\shell\EditText" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AllSyncRootObjects" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CABFolder\Shell\find" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CompressedFolder\Shell\find\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Directory\shell\find\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Windows.IsoFile\shell\mount" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Windows.VhdFile\shell\mount\command" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Unknown\shell\openas" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AllProtocols\shell\openas" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Folder\shell\opennewprocess" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Folder\shell\opennewtab" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Folder\shell\opennewwindow" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Unknown\shell\InvokeDefaultVerbInOtherProcess" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\Directory\background\shellex\ContextMenuHandlers\NvCplDesktopContext" -force;
Remove-Item -LiteralPath "HKCR:\Network\shell\pintohome" -recurse -force;
Remove-Item -LiteralPath "HKCR:\*\shell\pintohomefile" -recurse -force;
Remove-Item -LiteralPath "HKCR:\MSGraphRecentDocument\shell\pintohomefile" -recurse -force;
Remove-Item -LiteralPath "HKCR:\RecentDocument\shell\remove" -recurse -force;
Remove-Item -LiteralPath "HKCR:\FrequentPlace\shell\removefromhome" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WindowsBackupFolderOptions" -recurse -force;
Remove-Item -LiteralPath "HKCR:\batfile\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\cmdfile\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\exefile\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\mscfile\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Msi.Package\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\PinnedFrequentPlace" -recurse -force;
Remove-Item -LiteralPath "HKCR:\PinnedRecentDocument" -recurse -force;
Remove-Item -LiteralPath "HKCR:\.library-ms\ShellNew" -recurse -force;
Remove-Item -LiteralPath "HKCR:\.zip\CompressedFolder\ShellNew" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.avci\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.avcs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.avif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.avifs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.bmp\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.dib\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.gif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.heic\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.heics\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.heif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.heifs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.hif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.jfif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.jpe\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.jpeg\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.jpg\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.png\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.tif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.tiff\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\SystemFileAssociations\.wdp\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\*\shellex\ContextMenuHandlers\EPP" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\Drive\shellex\ContextMenuHandlers\EPP" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Classes\Directory\shellex\ContextMenuHandlers\EPP" -recurse -force;
Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Directory\Background\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Directory\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Directory\shellex\CopyHookHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Drive\shellex\PropertySheetHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -recurse -force;
Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\.contact\ShellNew" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Folder\shell\pintohome" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Folder\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKCR:\exefile\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Microsoft.Website\ShellEx\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKCR:\mscfile\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{1FD49718-1D00-4B19-AF5F-070AF6D5D54C}" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{AE7CD045-E861-484f-8273-0445EE161910}" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{F4971EE7-DAA0-4053-9964-665D8EE6A077}" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{1FD49718-1D00-4B19-AF5F-070AF6D5D54C}" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{AE7CD045-E861-484f-8273-0445EE161910}" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{F4971EE7-DAA0-4053-9964-665D8EE6A077}" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{31D09BA0-12F5-4CCE-BE8A-2923E76605DA}" -force;
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{7AD84985-87B4-4a16-BE58-8B72A5B390F7}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{1d27f844-3a1f-4410-85ac-14651078412d}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{55B3A0BD-4D28-42fe-8CFB-FA3EDFF969B8}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{474C98EE-CF3D-41f5-80E3-4AAB0AB04301}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{7EFA68C6-086B-43e1-A2D2-55A113531240}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{CF67796C-F57F-45f8-92FB-AD698826C602}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{8082C5E6-4C27-48ec-A809-B8E1122E8F97}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{16C2C29D-0E5F-45f3-A445-03E03F587B7D}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{4F58F63F-244B-4c07-B29F-210BE59BE9B4}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{BD7A2E7B-21CB-41b2-A086-B309680C6B7E}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{89D83576-6BD1-4c86-9454-BEB04E94C819}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{9C60DE1E-E5FC-40f4-A487-460851A8D915}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{DE661907-527D-4d6a-B6A6-EBC7F88D9B95}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{b8cdcb65-b1bf-4b42-9428-1dfdb7ee92af}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{ed9d80b9-d157-457b-9192-0e7280313bf0}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{BD472F60-27FA-11cf-B8B4-444553540000}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{888DCA60-FC0A-11CF-8F0F-00C04FD7D062}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{A70C977A-BF00-412C-90B7-034C51DA2439}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{8FD8B88D-30E1-4F25-AC2B-553D3D65F0EA}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{2F6CE85C-F9EE-43CA-90C7-8A9BD53A2467}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{CB3D0F55-BC2C-4C1A-85ED-23ED75B5106B}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{FF393560-C2A7-11CF-BFF4-444553540000}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{F6B6E965-E9B2-444B-9286-10C9152EDBC5}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{A929C4CE-FD36-4270-B4F5-34ECAC5BD63C}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{3D1975AF-48C6-4f8e-A182-BE0E08FA86A9}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{E97DEC16-A50D-49bb-AE24-CF682282E08D}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{D9EF8727-CAC2-4e60-809E-86F80A666C91}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{9C73F5E5-7AE7-4E32-A8E8-8D23B85255BF}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{A78ED123-AB77-406B-9962-2A5D9D2F7F30}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{F241C880-6982-4CE5-8CF7-7085BA96DA5A}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{C5FF006E-2AE9-408C-B85B-2DFDD5449D9C}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{BBACC218-34EA-4666-9D7A-C78F2274A524}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{E64164EB-1AE0-4C50-BAEF-A413C2B3A4BC}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{4E77131D-3629-431c-9818-C5679DC83E81}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{13D3C4B8-B179-4ebb-BF62-F704173E7448}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{241D7C96-F8BF-4F85-B01F-E2B043341A4B}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{e2bf9676-5f8f-435c-97eb-11607a5bedf7}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{09A47860-11B0-4DA5-AFA5-26D86198A780}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{A470F8CF-A1E8-4f65-8335-227475AA5C46}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{B98A2BEA-7D42-4558-8BD1-832F41BAC6FD}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{4026492F-2F69-46B8-B9BF-5654FC07E423}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{C58C4893-3BE0-4B45-ABB5-A63E4B8C8651}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{9FE63AFD-59CF-4419-9775-ABCC3849F861}' -Value '' -PropertyType String -Force
Remove-Item -LiteralPath "HKCR:\AllFilesystemObjects\shell\OfflineFilesLaunchSyncCenter" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.avci\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.avcs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.avif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.avifs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.bmp\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.dib\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.gif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.heic\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.heics\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.hif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.jfif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.jpe\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.jpeg\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.jpg\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.png\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.tif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.tiff\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.wdp\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.heif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.heifs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\PinnedFrequentPlace\shell\unpinfromhome" -recurse -force;
Remove-Item -LiteralPath "HKCR:\PinnedRecentDocument\shell\unpinfromhomefile" -recurse -force;

#####################################################################################################################################################################################

Remove-PSDrive -Name HKCR
Restart-Computer -Force
