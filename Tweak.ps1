$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'
$ConfirmPreference = 'None'
$PSModuleAutoloadingPreference = 'All'

Start-Transcript -Path c:\2.txt -Force

New-PSDrive -PSProvider Registry -Name HKCR -Root HKEY_CLASSES_ROOT

<# 白名单 #>
# Appinfo
# SystemEventsBroker
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RmSvc* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WlanSvc* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Netman* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Audiosrv* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AudioEndpointBuilder* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SSDPSRV* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *upnphost* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *fdPHost* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *FDResPub* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *W32Time* | Set-ItemProperty -Name Start -Value 3 -Force

<# Intel驱动 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iagpio* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iai2c* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_GPIO2* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_GPIO2_BXT_P* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_GPIO2_CNL* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_GPIO2_GLK* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_I2C* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_I2C_BXT_P* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_I2C_CNL* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_I2C_GLK* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSSi_GPIO* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSSi_I2C* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaStorAVC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaStorV* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *intelide* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *intelpep* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *intelpmax* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *IntelPMT* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *intelppm* | Set-ItemProperty -Name Start -Value 4 -Force

<# UWP服务 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppXSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ClipSVC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *camsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *InstallService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NcbService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PushToInstall* | Set-ItemProperty -Name Start -Value 4 -Force

<# 禁用服务 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *3ware* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ADP80XX* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppleSSD* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *arcsas* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *b06bdrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bcmfn2* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cht4iscsi* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cht4vbd* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ebdrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ebdrv0* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *HpSAMD* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ibbus* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ItSas35i* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LSI_SAS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LSI_SAS2i* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LSI_SAS3i* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *megasas2i* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *megasas35i* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *megasr* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *mlx4_bus* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *mpi3drvi* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *mvumis* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ndfltr* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *percsas2i* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *percsas3i* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *pvscsi* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SiSRaid2* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SiSRaid4* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SmartSAMD* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *stexstor* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vsmraid* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *VSTXRAID* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WinMad* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WacomPen* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WinVerbs* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UnionFS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *nvraid* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *nvstor* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Acx01000* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *atapi* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NVHDA* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Serenum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Serial* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *i8042prt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Modem* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthAvctpSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthLEEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthMini* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BTHPORT* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bthserv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BTHUSB* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BDESVC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AJRouter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ALG* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppIDSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppMgmt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppReadiness* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppVClient* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AxInstSV* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BITS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Browser* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CaptureService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cbdhsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CertPropSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ClipSVC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ConsentUxUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CredentialEnrollmentManagerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CscService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *defragsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DeviceAssociationBrokerSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DeviceAssociationService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DeviceInstall* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevicePickerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevicesFlowUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevQueryBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *diagnosticshub.standardcollector.service* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DiagTrack* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DispBrokerDesktopSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DmEnrollmentSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *dmwappushservice* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DPS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DsmSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DsSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *EFS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *embeddedmode* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *EntAppSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *EventLog* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *fdPHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *FDResPub* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *FrameServer* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *GraphicsPerfSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *hidserv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *HvHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *InstallService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *KeyIso* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LanmanServer* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lfsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LicenseManager* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lltdsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lmhosts* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MapsBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *McpManagementService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MSiSCSI* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NcbService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NetTcpPortSharing* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NgcCtnrSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NgcSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NlaSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NPSMSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *P9RdrService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PcaSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PerfHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PimIndexMaintenanceSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *pla* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PlugPlay* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PrintNotify* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PrintWorkflowUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *QWAVE* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *QWAVEdrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RemoteAccess* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RemoteRegistry* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RpcLocator* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RSoPProv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *sacsvr* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SCardSvr* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ScDeviceEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SCPolicySvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SEMgrSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SensorDataService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SensorService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SensrSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SessionEnv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SgrmBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SharedAccess* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ShellHWDetection* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *shpamsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *smphost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SNMPTrap* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SSDPSRV* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *StiSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *svsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *swprv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SysMain* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *tapisrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TermService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Themes* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TieringEngineService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TimeBrokerSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TrkWks* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *tzautoupdate* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UdkUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UevAgentService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UmRdpService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UnistoreSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *upnphost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UserDataSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UsoSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *VaultSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicguestinterface* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicheartbeat* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmickvpexchange* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicrdv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicshutdown* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmictimesync* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicvmsession* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicvss* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *VSS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WaaSMedicSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WalletService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WbioSrvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wcncsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdiServiceHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdiSystemHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Wecsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WEPHOSTSVC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wercplsupport* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WerSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WiaRpc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WinRM* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wisvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wlidsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WMPNetworkSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WPDBusEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WpnService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WpnUserService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WSearch* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wuauserv* | Set-ItemProperty -Name Start -Value 4 -Force

<# 测试 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *srv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *srv2* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *mrxsmb10* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *mrxsmb* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MsLldp* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lltdio* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bindflt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *storqosflt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CldFlt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wcifs* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *kdnic* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cdrom* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SgrmAgent* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bam* | Set-ItemProperty -Name Start -Value 4 -Force

<# 映像劫持 #>
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WaaSMedicAgent.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MpCmdRun.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MpDlpCmd.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsMpEng.exe" | New-ItemProperty -Name 'Debugger' -PropertyType String -Value "0" -Force
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

<# 禁用Defender #>
# Set-ItemProperty -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Name Visibility -Value '1' -Force
# Remove-Item -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Include *Owner* -Recurse -Force
# Get-ChildItem -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Name | ForEach-Object { dism /online /remove-package /PackageName:$_ /NoRestart }
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Defender\Features") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows Defender\Features" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Features' -Name 'TamperProtection' -Value 0 -PropertyType DWord -Force
cmd.exe /c "net stop WinDefend /y"
cmd.exe /c "sc stop WinDefend"
cmd.exe /c "regsvr32 /u /s 'C:\Program Files\Windows Defender\shellext.dll'"
cmd.exe /c "'C:\Program Files\Windows Defender\MpCmdRun.exe' -DisableService"
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdFilter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdNisSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdNisDrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WinDefend* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wscsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SecurityHealthService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Sense* | Set-ItemProperty -Name Start -Value 4 -Force
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy' -Name 'VerifiedAndReputablePolicyState' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Name 'ScanWithAntiVirus' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Security Center' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center' -Name 'cval' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray' -Name 'HideSystray' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications' -Name 'DisableNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableRoutinelyTakingAction' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'ServiceKeepAlive' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableRealtimeMonitoring' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableIOAVProtection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableOnAccessProtection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableBehaviorMonitoring' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControlEnabled' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats' -Name 'Threats_ThreatSeverityDefaultAction' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction' -Name '1' -Value '6' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction' -Name '2' -Value '6' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction' -Name '4' -Value '6' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction' -Name '5' -Value '6' -PropertyType String -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration' -Name 'Notification_Suppress' -Value 1 -PropertyType DWord -Force
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

<# 关闭无用诊断功能 #>
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance' -Name 'DisableDiagnosticTracing' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\BootCKCLSettings' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\SecondaryLogonCKCLSettings' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\ShutdownCKCLSettings' -Name 'Start' -Value 0 -PropertyType DWord -Force

<# 事件记录 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *EventLog* | Set-ItemProperty -Name Start -Value 4 -Force
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger" -recurse -force;
# $Logger = Get-ChildItem -Path 'HKLM:\System\CurrentControlSet\Control\WMI\Autologger' -Recurse -Depth 3 | Where-Object { $_.PSChildName -NotLike 'Circular Kernel Context Logger' -and $_.PSChildName -NotLike 'EventLog-Application' -and $_.PSChildName -NotLike 'EventLog-Security' -and $_.PSChildName -NotLike 'EventLog-System' -and $_.PSChildName -NotLike 'NtfsLog' -and $_.PSChildName -NotLike 'WdiContextLog' -and $_.PSChildName -NotLike 'NetCore' -and $_.PSChildName -NotLike 'LwtNetLog' -and $_.PSChildName -NotLike 'AppModel' -and $_.PSChildName -NotLike 'UBPM' -and $_.PSChildName -NotLike 'TileStore' -and $_.PSChildName -NotLike 'WifiSession' }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Start' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Status' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Enabled' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'EnableProperty' -Value 0 -Force }
# $WINEVT = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels'; Get-ChildItem $WINEVT | ForEach-Object { Set-ItemProperty -Path "$WINEVT\$($_.pschildname)" -Name Enabled -Value 0 -Verbose }

<# 计划任务 #>
# 一定不要删除MsCtfMonitor
# Get-ScheduledTask -TaskPath "\Microsoft\*" | Where-Object {$_.TaskName -notmatch 'MsCtfMonitor' -and $_.TaskName -notmatch 'Sysprep Generalize Drivers' -and $_.TaskName -notmatch 'Device Install Group Policy' -and $_.TaskName -notmatch 'ResPriStaticDbSync' -and $_.TaskName -notmatch 'WsSwapAssessmentTask' -and $_.TaskName -notmatch 'DXGIAdapterCache' -and $_.TaskName -notmatch 'UninstallDeviceTask' -and $_.TaskName -notmatch 'SvcRestartTask' -and $_.TaskName -notmatch 'SvcRestartTaskLogon' -and $_.TaskName -notmatch 'SvcRestartTaskNetwork' -and $_.TaskName -notmatch 'SvcTrigger' -and $_.TaskName -notmatch 'GatherNetworkInfo'} | Disable-ScheduledTask
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree' | Where-Object -Property Name -Like *MicrosoftEdge* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree' | Where-Object -Property Name -Like *OneDrive* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *Performance* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *OfficeTelemetryAgentFallBack2016* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *OfficeTelemetryAgentLogOn2016* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator' | Where-Object -Property Name -Like *USO_UxBroker* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Defender' | Where-Object -Property Name -Like *Defender* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SMB' | Where-Object -Property Name -Like *SMB* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Server Manager' | Where-Object -Property Name -Like *Server* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Server Manager' | Where-Object -Property Name -Like *Cleanup* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Software Inventory Logging' | Where-Object -Property Name -Like *Collection* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Software Inventory Logging' | Where-Object -Property Name -Like *Configuration* | Remove-Item -Force

<# 禁用nvidia驱动log #>
Get-ChildItem -Path 'C:\ProgramData\NVIDIA Corporation\nvtopps' -Recurse -File | ForEach-Object { $_.IsReadOnly = $True }

<# 删除Edge浏览器 #>
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'InstallDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'CreateDesktopShortcut' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'Install{56EB18F8-B008-4CBD-B6D2-8C97FE7E9062}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'Install{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'DoNotUpdateToEdgeWithChromium' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\EdgeUpdate") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\EdgeUpdate" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\EdgeUpdate' -Name 'InstallDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\EdgeUpdate' -Name 'CreateDesktopShortcut' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\EdgeUpdate' -Name 'Install{56EB18F8-B008-4CBD-B6D2-8C97FE7E9062}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\EdgeUpdate' -Name 'Install{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\EdgeUpdate' -Name 'DoNotUpdateToEdgeWithChromium' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge' -Name 'NoRemove' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge') -ne $true) { New-Item 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge' -Name 'NoRemove' -Value 0 -PropertyType DWord -Force
cmd.exe /c "taskkill /f /im 'MicrosoftEdgeUpdate.exe'"
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService' -recurse -Force;
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
Remove-Item -LiteralPath "HKCR:\.pdf\OpenWithProgids" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{A2F5CB38-265F-4A02-9D1E-F25B664968AB}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.pdf\AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.svg\AppXde74bfzw9j31bzhcvsrxsyjnhhbq66cs" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\https\AppX90nv6nhay5n6a98fnetv7tpk64pp35es" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Data\6" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Data\7" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\microsoft-edge" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\microsoft-edge-holographic" -recurse -force;
Remove-ItemProperty -LiteralPath 'HKCR:\AppUserModelId\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge' -Name 'ExcludeFromTabbedSetsSettings' -Force
Remove-Item -LiteralPath "HKCR:\AppUserModelId\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" -recurse -force;

<# 删除OneDrive #>
cmd.exe /c "taskkill /f /im 'OneDrive.exe'"
Get-Process -Name OneDrive* | Stop-Process -Force
Get-Service -Name OneSyncSvc* | Stop-Service -Force -NoWait
cmd.exe /c "C:\Windows\System32\OneDriveSetup.exe /uninstall"
Get-ChildItem 'C:\Users\Administrator\AppData\Local\Microsoft\OneDrive' | Remove-Item -Recurse -Force
Remove-Item 'C:\Users\Administrator\OneDrive' -recurse -Force
Remove-Item 'C:\ProgramData\Microsoft OneDrive' -recurse -Force
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk' -Force
Get-ChildItem 'C:\Program Files\Microsoft OneDrive' | Remove-Item -Recurse -Force
Remove-Item -LiteralPath "HKCR:\.fluid\shell\open\command" -force;
Remove-Item -LiteralPath "HKCR:\.loop\shell\open\command" -force;
Remove-Item -LiteralPath "HKCR:\.note\shell\open\command" -force;
Remove-Item -LiteralPath "HKCR:\.whiteboard\shell\open\command" -force;
Remove-Item -LiteralPath "HKCR:\AppID\OneDrive.EXE" -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{021E4F06-9DCC-49AD-88CF-ECC2DA314C8A}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{0827D883-485C-4D62-BA2C-A332DBF3D4B0}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{1BF42E4C-4AF4-4CFD-A1A0-CF2960B8F63E}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{20894375-46AE-46E2-BAFD-CB38975CDCE6}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{2e7c0a19-0438-41e9-81e3-3ad3d64f55ba}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{389510b7-9e58-40d7-98bf-60b911cb0ea9}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{4410DC33-BC7C-496B-AA84-4AEA3EEE75F7}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{47E6DCAF-41F8-441C-BD0E-A50D5FE6C4D1}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{5999E1EE-711E-48D2-9884-851A709F543D}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{5AB7172C-9C11-405C-8DD5-AF20F3606282}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{6bb93b4e-44d8-40e2-bd97-42dbcf18a40f}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{71DCE5D6-4B57-496B-AC21-CD5B54EB93FD}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{78DE489B-7931-4f14-83B4-C56D38AC9FFA}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{86c815aa-4888-4063-b0ab-03c49f788be4}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{78DE489B-7931-4f14-83B4-C56D38AC9FFA}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{24D89E24-2F19-4534-9DDE-6A6671FBB8FE}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{339719B5-8C47-4894-94C2-D8F77ADD44A6}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{767E6811-49CB-4273-87C2-20F355E1085B}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{C3F2459E-80D6-45DC-BFEF-1F769F2BE730}" -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BannerStore\OptIn' -Name 'URL' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\BannerStore\OptIn' -Name 'URL' -Value '' -PropertyType String -Force
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{24D89E24-2F19-4534-9DDE-6A6671FBB8FE}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{339719B5-8C47-4894-94C2-D8F77ADD44A6}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{767E6811-49CB-4273-87C2-20F355E1085B}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{C3F2459E-80D6-45DC-BFEF-1F769F2BE730}" -recurse -force;
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
Remove-Item -LiteralPath "Registry::\HKEY_USERS\.DEFAULT\Software\Microsoft\OneDrive" -recurse -force;
Remove-Item -LiteralPath "Registry::\HKEY_USERS\S-1-5-19\Software\Microsoft\OneDrive" -recurse -force;

<# DISM #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing' -Name 'DisableRemovePayload' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing' -Name 'DisableWerReporting' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing' -Name 'EnableDpxLog' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing' -Name 'ResetManifestCache' -Value 1 -PropertyType DWord -Force

<# https://www.ntlite.com/community/index.php?threads/closed-disable-wininet-task-and-webcache-folder.846/ #>
Remove-Item -LiteralPath "HKCR:\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-Item -LiteralPath "HKCR:\Wow6432Node\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-Item -LiteralPath "HKCR:\Wow6432Node\AppID\{0358b920-0ac7-461f-98f4-58e32cd89148}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\Software\Wow6432Node\Classes\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-Item -LiteralPath "HKLM:\Software\Wow6432Node\Classes\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}" -recurse -force;

<# Defaultuser0 #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost\Broker\ElevatedClsids\{2b2cad40-19c1-4794-b32d-397e41d5e8a7}' -Name 'AutoElevationAllowed' -Value 1 -PropertyType DWord -Force

<# 关闭直接内存映射 #>
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters' -Name 'DmaRemappingCompatible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\pci\Parameters' -Name 'DmaRemappingCompatible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\rt640x64\Parameters' -Name 'DmaRemappingCompatible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\storahci\Parameters' -Name 'DmaRemappingCompatible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\stornvme\Parameters' -Name 'StorageSupportedFeatures' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Usb4HostRouter\Parameters' -Name 'DmaRemappingCompatible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters' -Name 'DmaRemappingCompatibleSelfhost' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters' -Name 'DmaRemappingCompatible' -Value 0 -PropertyType DWord -Force
$DmaRemapping = Get-ChildItem -Path 'HKLM:\SYSTEM\DriverDatabase\DriverPackages' -Recurse -Depth 9 | Where-Object { $_.PSChildName -Like 'Parameters' }
ForEach ($item in $DmaRemapping) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'DmaRemappingCompatible' -Value 0 -Force }

<# 关闭省电 #>
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\DriverDatabase\DriverPackages\input.inf_amd64_b4103166993e29f6\Configurations\HID_SelSus_Inst.NT\Device' -Name 'SelectiveSuspendEnabled' -Value ([byte[]](0x00)) -PropertyType Binary -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002' -Name 'PnPCapabilities' -Value 24 -PropertyType DWord -Force
$SelectiveSuspend = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB' -Recurse -Depth 9 | Where-Object { $_.PSChildName -Like 'Device Parameters' }
ForEach ($item in $SelectiveSuspend) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'SelectiveSuspendOn' -Value 0 -Force }
$IdleInWorkingState = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB' -Recurse -Depth 9 | Where-Object { $_.PSChildName -Like 'WDF' }
ForEach ($item in $IdleInWorkingState) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'IdleInWorkingState' -Value 0 -Force }

<# 无用Key #>
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
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{96B9DAE3-CF15-45e9-9719-57285348225E}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{F5175861-2688-11d0-9C5E-00AA00A45957}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{ABBE31D0-6DAE-11D0-BECA-00C04FD940BE}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{F942C606-0914-47AB-BE56-1321B8035096}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{58E3C745-D971-4081-9034-86E34B30836A}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{0bf754aa-c967-445c-ab3d-d8fda9bae7ef}' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{fbeb8a05-beee-4442-804e-409d6c4515e9}' -Value '' -PropertyType String -Force
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
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Internet Explorer\Extensions" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Extensions" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{45597c98-80f6-4549-84ff-752cf55e2d29}\SupportedProtocols" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{45597c98-80f6-4549-84ff-752cf55e2d29}\LocalServer32" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{45597c98-80f6-4549-84ff-752cf55e2d29}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{ed1d0fdf-4414-470a-a56d-cfb68623fc58}\SupportedProtocols" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{ed1d0fdf-4414-470a-a56d-cfb68623fc58}\LocalServer32" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{ed1d0fdf-4414-470a-a56d-cfb68623fc58}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\MediaCenter.WTVFile" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Stack.Audio" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Stack.Image" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\audio\OpenWithList\wmplayer.exe" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\audio\shell\Play" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\audio\shell\Enqueue" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\audio\shellex\ContextMenuHandlers\PlayTo" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Audio\shell\Play" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Audio\shell\Enqueue" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Audio\shellex\ContextMenuHandlers\PlayTo" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Image\shell\Play" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Image\shell\Enqueue" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\Directory.Image\shellex\ContextMenuHandlers\PlayTo" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.DVR-MSFile" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.WTVFile" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.3G2" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.AudioCD" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.BurnCD" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.DVD" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.PlayCD" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.PlayMedia" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.VCD" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP.WMDBFile" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.3GP" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.ADTS" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.AIFF" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.ASF" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.ASX" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.AU" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.AVI" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.CDA" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.FLAC" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.M2TS" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.M3U" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.M4A" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MIDI" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MK3D" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MKA" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MKV" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MOV" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MP3" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MP4" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.MPEG" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.TTS" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WAV" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WAX" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WMA" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WMD" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WMS" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WMV" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WMZ" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WPL" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocFile.WVX" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocProtocol.DLNA-PLAYSINGLE" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WMP11.AssocProtocol.MMS" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\AppID\{45597c98-80f6-4549-84ff-752cf55e2d29}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\AppID\{ed1d0fdf-4414-470a-a56d-cfb68623fc58}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{45597c98-80f6-4549-84ff-752cf55e2d29}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{ed1d0fdf-4414-470a-a56d-cfb68623fc58}" -recurse -force;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}' -Name 'System.IsPinnedToNameSpaceTree' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{eea0c191-dda8-4656-8fc4-72bdedba8a78}\OverrideFileSystemProperties' -Name 'System.IsPinnedToNameSpaceTree' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}' -Name 'System.IsPinnedToNameSpaceTree' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}' -Name 'System.IsPinnedToNameSpaceTree' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{eea0c191-dda8-4656-8fc4-72bdedba8a78}\OverrideFileSystemProperties' -Name 'System.IsPinnedToNameSpaceTree' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}' -Name 'System.IsPinnedToNameSpaceTree' -Value 0 -PropertyType DWord -Force
Remove-Item -LiteralPath "HKCR:\CLSID\{397a2e5f-348c-482d-b9a3-57d383b483cd}" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\HyperV.AppHealthMonitor" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AlternateShells\AvailableShells" -recurse -force;
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\SafeBoot' -Name 'AlternateShell' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs' -Name '_wow64cpu' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs' -Name '_wowarmhw' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs' -Name '_xtajit' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs' -Name 'wow64' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs' -Name 'wow64base' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs' -Name 'wow64con' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs' -Name 'wow64win' -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs' -Name 'xtajit64' -Force

Remove-PSDrive -Name HKCR

Get-ChildItem 'C:\Windows\Prefetch' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\Windows\Setup\Scripts' | Remove-Item -Recurse -Force
