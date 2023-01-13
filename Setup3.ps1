$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'
$ConfirmPreference = 'None'
$PSModuleAutoloadingPreference = 'All'

Start-Transcript -Path c:\2.txt -Force

New-PSDrive -PSProvider Registry -Name HKCR -Root HKEY_CLASSES_ROOT

<# 完全删除系统组件 #>
#Set-ItemProperty -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*OneDrive*' -Name Visibility -Value '1' -Force
#Remove-Item -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Curr1entVersion\Component Based Servicing\Packages\*OneDrive*' -Include *Owner* -Recurse -Force
#Get-ChildItem -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*OneDrive*' -Name | ForEach-Object { dism /online /remove-package /PackageName:$_ /NoRestart }

<# 服务驱动 #>
# Intel驱动
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iagpio* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iai2c* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_GPIO2* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_GPIO2_BXT_P* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_GPIO2_CNL* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_GPIO2_GLK* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_I2C* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *iaLPSS2i_I2C_BXT_P* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -LikRe *iaLPSS2i_I2C_CNL* | Set-ItemProperty -Name Start -Value 4 -Force
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
# 白名单Appinfo
# 白名单SystemEventsBroker
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *condrv* | Set-ItemProperty -Name Start -Value 2 -Force
# 无用驱动
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *3ware* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ADP80XX* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppleSSD* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *arcsas* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *b06bdrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bcmfn2* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cht4iscsi* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cht4vbd* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *defragsvc* | Set-ItemProperty -Name Start -Value 3 -Force
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
#
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BluetoothUserService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthA2dp* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BTAGService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthAvctpSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthHFEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthLEEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BthMini* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BTHPORT* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bthserv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Microsoft_Bluetooth_AvrcpTransport* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BTHUSB* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RFCOMM* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BDESVC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicguestinterface* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicheartbeat* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmickvpexchange* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicrdv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicshutdown* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmictimesync* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicvmsession* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmicvss* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmgid* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vpci* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AarSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AJRouter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ALG* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppVClient* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *autotimesvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BcastDVRUserService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CertPropSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cloudidsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CscService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *diagsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DPS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdiServiceHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdiSystemHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DeviceAssociationBrokerSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DeviceAssociationService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevicePickerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *diagnosticshub.standardcollector.service* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DiagTrack* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DialogBlockingService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DispBrokerDesktopSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DisplayEnhancementService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *dmwappushservice* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DoSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DsSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DusmSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *EntAppSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *fdPHost* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *FDResPub* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *FontCache* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *GraphicsPerfSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *icssvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LanmanServer* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LanmanWorkstation* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lfsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MapsBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MessagingService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PenService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MixedRealityOpenXRSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NdisTapi* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ndiswanlegacy* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PcaSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PeerDistSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *perceptionsimulation* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PerfHost* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PhoneSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PimIndexMaintenanceSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RDPDR* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RdpVideoMiniport* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RemoteAccess* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RemoteRegistry* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RetailDemo* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RmSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *RpcLocator* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SCardSvr* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ScDeviceEnum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *scfilter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SCPolicySvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SDRSVC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *seclogon* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SEMgrSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SensorDataService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SensorService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SensrSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SessionEnv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SgrmAgent* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SgrmBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SharedAccess* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SharedRealitySvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *shpamsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SmsRouter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SNMPTRAP* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SpatialGraphFilter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *spectrum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SSDPSRV* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SysMain* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TapiSrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TermService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TrkWks* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TsUsbFlt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *tzautoupdate* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UmRdpService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UnistoreSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *upnphost* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UserDataSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *VacSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WalletService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *W32Time* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wanarp* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wanarpv6* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wbengine* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WbioSrvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wercplsupport* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WerSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WFDSConMgrSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WinRM* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wisvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WMPNetworkSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WpcMonSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WSearch* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WwanSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XblAuthManager* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XblGameSave* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XboxGipSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XboxNetApiSvc* | Set-ItemProperty -Name Start -Value 3 -Force

<# 关闭进程安全守护 #>
ForEach ($v in (Get-Command -Name 'Set-ProcessMitigation').Parameters['Disable'].Attributes.ValidValues) { Set-ProcessMitigation -System -Disable $v.ToString().Replace(' ', '').Replace("`n", '') }

<# 映像劫持 #>
Remove-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*' -Recurse -Force

<# 开启MSI模式 #>
# https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/
$MSIMode = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'MessageSignaledInterruptProperties' }
ForEach ($item in $MSIMode) { $path = $item -replace 'HKEY_LOCAL_MACHINE', 'HKLM:'; Set-ItemProperty -Path $path -Name 'MSISupported' -Value 1 -Force }

<# 游戏服务 #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter' -Name 'ActivationType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter' -Name 'ActivationType' -Value 0 -PropertyType DWord -Force

<# 事件记录 #>
# Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *EventLog* | Set-ItemProperty -Name Start -Value 4 -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance' -Name 'DisableDiagnosticTracing' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\BootCKCLSettings' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\SecondaryLogonCKCLSettings' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance\ShutdownCKCLSettings' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical' -Name 'Start' -Value 0 -PropertyType DWord -Force

<# 计划任务 #>
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree' | Where-Object -Property Name -Like *MicrosoftEdge* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree' | Where-Object -Property Name -Like *OneDrive* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *Performance* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *OfficeTelemetryAgentFallBack2016* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *OfficeTelemetryAgentLogOn2016* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *Updates* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SMB' | Where-Object -Property Name -Like *SMB* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Software Inventory Logging' | Where-Object -Property Name -Like *Collection* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Software Inventory Logging' | Where-Object -Property Name -Like *Configuration* | Remove-Item -Force

<# 禁用Defendedr #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdBoot* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdFilter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdNisSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WdNisDrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WinDefend* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wscsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SecurityHealthService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Sense* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *webthreatdefsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *webthreatdefusersvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MsSecFlt* | Set-ItemProperty -Name Start -Value 4 -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray' -Name 'HideSystray' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Features') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Features' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Features' -Name 'TamperProtection' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Security Center' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center' -Name 'cval' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Name 'ScanWithAntiVirus' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'SecurityHealth' -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableRealtimeMonitoring' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiVirus' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'PUAProtection' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableBehaviorMonitoring' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableIOAVProtection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableOnAccessProtection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableRealtimeMonitoring' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Name 'SpyNetReporting' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Name 'SubmitSamplesConsent' -Value 2 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates' -Name 'FallbackOrder' -Value 'FileShares' -PropertyType String -Force

<# 禁用smartscreen #>
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost' -Name 'EnableWebContentEvaluation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost' -Name 'SmartScreenEnabled' -Value 'Off' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost' -Name 'PreventOverride' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Security Health\State') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows Security Health\State' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Security Health\State' -Name 'AppAndBrowser_StoreAppsSmartScreenOff' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter' -Name 'EnabledV9' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter' -Name 'PreventOverride' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'EnableSmartScreen' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableHHDEP' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControlEnabled' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControl' -Value 'Anywhere' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows Defender\SmartScreen' -Name 'ConfigureAppInstallControlEnabled' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'AicEnabled' -Value 'Anywhere' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'SmartScreenEnabled' -Value 'Off' -PropertyType String -Force
if ((Test-Path -LiteralPath 'HKCU:\Software\Microsoft\Edge\SmartScreenEnabled') -ne $true) { New-Item 'HKCU:\Software\Microsoft\Edge\SmartScreenEnabled' -Force }
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Edge\SmartScreenEnabled' -Name '(default)' -Value 0 -PropertyType DWord -Force
cmd.exe /c "taskkill /f /im 'smartscreen.exe'"
Rename-Item -Path 'C:\Windows\System32\smartscreen.exe' -NewName 'smartscreen_old.exe' -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components' -Name 'CaptureThreatWindow' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components' -Name 'NotifyMalicious' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components' -Name 'NotifyPasswordReuse' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components' -Name 'NotifyUnsafeApp' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WTDS\Components' -Name 'ServiceEnabled' -Value 0 -PropertyType DWord -Force

<# 防火墙 #>
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules' -Force
New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules' -Force

<# Windows Update #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DoSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wuauserv* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BITS* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UsoSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WaaSMedicSvc* | Set-ItemProperty -Name Start -Value 4 -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\ExpressionEvaluators\Driver' -Name 'Prefixes' -Value @('') -PropertyType MultiString -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\ExpressionEvaluators\MSI' -Name 'Prefixes' -Value @('') -PropertyType MultiString -Force

<# 删除Edge浏览器 #>
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'InstallDefault' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'CreateDesktopShortcut' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'Install{56EB18F8-B008-4CBD-B6D2-8C97FE7E9062}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'Install{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\EdgeUpdate' -Name 'DoNotUpdateToEdgeWithChromium' -Value 1 -PropertyType DWord -Force
cmd.exe /c "taskkill /f /im 'MicrosoftEdgeUpdate.exe'"
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdate' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\edgeupdatem' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Edge' -Recurse -Force
Get-ChildItem 'C:\Program Files (x86)\Microsoft' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\Users\Administrator\AppData\Local\Microsoft\Edge' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\ProgramData\Microsoft\EdgeUpdate' | Remove-Item -Recurse -Force
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk' -Force
Remove-Item -Path 'C:\Users\Public\Desktop\Microsoft Edge.lnk' -Force
Remove-Item -LiteralPath 'HKCR:\CLSID\{A2F5CB38-265F-4A02-9D1E-F25B664968AB}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.pdf\AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.svg\AppXde74bfzw9j31bzhcvsrxsyjnhhbq66cs' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\https\AppX90nv6nhay5n6a98fnetv7tpk64pp35es' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\microsoft-edge' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\microsoft-edge-holographic' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AppUserModelId\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge' -Recurse -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.htm\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.htm\OpenWithProgIds' -Name 'IE.AssocFile.HTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.html\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.html\OpenWithProgIds' -Name 'IE.AssocFile.HTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.shtml\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.webp\OpenWithProgids' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.pdf\OpenWithProgids' -Name 'MSEdgePDF' -Force
Remove-Item -LiteralPath 'HKCR:\.pdf\ShellEx\{8895b1c6-b41f-4c1c-a562-0d564250836f}' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.svg\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.xht\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.xml\OpenWithProgids' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.xhtml\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.mht\OpenWithProgIds' -Name 'MSEdgeMHT' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.mhtml\OpenWithProgIds' -Name 'MSEdgeMHT' -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\microsoft-edge' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\microsoft-edge-holographic' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AppID\{A6B716CB-028B-404D-B72C-50E153DD68DA}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AppID\{CECDDD22-2E72-4832-9606-A9B0E5E344B2}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AppID\MicrosoftEdgeUpdate.exe' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\CLSID\{3AF1251F-9B5A-4F53-9B6D-B0B71E02006E}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\CLSID\{9BD1F370-1212-4794-AA9B-9EBD575091D5}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\CLSID\{9E8F1B36-249F-4FC3-9994-974AFAA07B26}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AppID\{1FCBE96C-1697-43AF-9140-2897C7C69767}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AppID\{31575964-95F7-414B-85E4-0E9A93699E13}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AppID\ie_to_edge_bho.dll' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\CLSID\{1FD49718-1D00-4B19-AF5F-070AF6D5D54C}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\ie_to_edge_bho.IEToEdgeBHO' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\ie_to_edge_bho.IEToEdgeBHO.1' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\microsoft-edge' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\microsoft-edge-holographic' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\MSEdgeHTM' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\MSEdgeMHT' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\MSEdgePDF' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{08D832B9-D2FD-481F-98CF-904D00DF63CC}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{1FD49718-1D00-4B19-AF5F-070AF6D5D54C}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{2E1DD7EF-C12D-4F8E-8AD8-CF8CC265BAD0}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{492E1C30-A1A2-4695-87C8-7A8CAD6F936F}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{5F6A18BB-6231-424B-8242-19E5BB94F8ED}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{77857D02-7A25-4B67-9266-3E122A8F39E4}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{8F09CD6C-5964-4573-82E3-EBFF7702865B}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{9F3F5F5D-721A-4B19-9B5D-69F664C1A591}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{A6B716CB-028B-404D-B72C-50E153DD68DA}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{B5977F34-9264-4AC3-9B31-1224827FF6E8}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{D1E8B1A6-32CE-443C-8E2E-EBA90C481353}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{E421557C-0628-43FB-BF2B-7C9F8A4D067C}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{EA92A799-267E-4DF5-A6ED-6A7E0684BB8A}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\WOW6432Node\CLSID\{FF419FF9-90BE-4D9F-B410-A789F90E5A7C}' -Recurse -Force
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{3A84F9C2-6164-485C-A7D9-4B27F8AC009E}\InProcServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{628ACE20-B77A-456F-A88D-547DB6CEEDD5}\LocalServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{628ACE20-B77A-456F-A88D-547DB6CEEDD5}\LocalServer32' -Name 'ServerExecutable' -Value '' -PropertyType String -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.htm\AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.html\AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\http\AppXq0fevzme2pys62n3e0fbqa7peapykr8v' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-xbl-3d8b930f\AppXdn5b0j699ka5fqvrr3pgjad0evqarm6d' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\read\AppXe862j7twqs4aww05211jaakwxyfjx4da' -Recurse -Force
New-ItemProperty -LiteralPath 'HKCR:\TypeLib\{C9C2B807-7731-4F34-81B7-44FF7779522B}\1.0\0\win32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\TypeLib\{C9C2B807-7731-4F34-81B7-44FF7779522B}\1.0\0\win64' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{3A84F9C2-6164-485C-A7D9-4B27F8AC009E}\InProcServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{3AF1251F-9B5A-4F53-9B6D-B0B71E02006E}\InprocHandler32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{9BD1F370-1212-4794-AA9B-9EBD575091D5}\InProcServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{9E8F1B36-249F-4FC3-9994-974AFAA07B26}\InprocServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{A2F5CB38-265F-4A02-9D1E-F25B664968AB}\InprocServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{CECDDD22-2E72-4832-9606-A9B0E5E344B2}\ProgID' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{CECDDD22-2E72-4832-9606-A9B0E5E344B2}\VersionIndependentProgID' -Name '(default)' -Value '' -PropertyType String -Force
Get-ChildItem -Path 'HKCR:\' | Where-Object -Property Name -Like *MicrosoftEdgeUpdate* | Remove-Item -Recurse -Force
Get-ChildItem -Path 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\' | Where-Object -Property Name -Like *MicrosoftEdge* | Remove-Item -Recurse -Force
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{83BF6728-A96E-4228-B442-DB539208D56E}\InProcServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{8D191696-9CAC-4E4F-8EBC-2C7A8910C5B6}\InprocHandler32' -Name '(default)' -Value '' -PropertyType String -Force
Remove-Item -LiteralPath 'HKCR:Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppX3xxs313wwkfjhythsb8q46xdsq8d2cvv' -Force
Get-ChildItem 'C:\Program Files\WindowsApps\*Microsoft.MicrosoftEdge.Stable*' | Remove-Item -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Clients\StartMenuInternet\Microsoft Edge' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Clients\StartMenuInternet\Microsoft Edge' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge' -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge Update' -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView' -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{9459C573-B17A-45AE-9F64-1857B5D58CEE}' -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Config\Microsoft.MicrosoftEdge_8wekyb3d8bbwe' -Force
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Config\Microsoft.MicrosoftEdgeDevToolsClient_8wekyb3d8bbwe' -Force

<# DISM #>
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing' -Name 'DisableWerReporting' -Value 1 -PropertyType DWord -Force

<# https://www.ntlite.com/community/index.php?threads/closed-disable-wininet-task-and-webcache-folder.846/ #>
Remove-Item -LiteralPath 'HKCR:\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}' -Force
Remove-Item -LiteralPath 'HKCR:\Wow6432Node\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}' -Force
Remove-Item -LiteralPath 'HKCR:\Wow6432Node\AppID\{0358b920-0ac7-461f-98f4-58e32cd89148}' -Recurse -Force
Remove-Item -LiteralPath 'HKLM:\Software\Wow6432Node\Classes\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}' -Force
Remove-Item -LiteralPath 'HKLM:\Software\Wow6432Node\Classes\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}' -Recurse -Force

<# 关闭省电 #>
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NDIS\Parameters' -Name 'DefaultPnPCapabilities' -Value 24 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000' -Name 'PnPCapabilities' -Value 24 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\ACPI\AMDI0030\0\Device Parameters\WDF' -Name 'IdleInWorkingState' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\System\CurrentControlSet\Enum\PCI\VEN_1022&DEV_149C&SUBSYS_50071458&REV_00\4&1fde7688&0&0341\Device Parameters\WDF' -Name 'IdleInWorkingState' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\System\CurrentControlSet\Enum\PCI\VEN_1022&DEV_43EE&SUBSYS_11421B21&REV_00\4&5f22ecf&0&000A\Device Parameters\WDF' -Name 'IdleInWorkingState' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\System\CurrentControlSet\Enum\USB\ROOT_HUB30\5&201a262c&0&0\Device Parameters\WDF' -Name 'IdleInWorkingState' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\System\CurrentControlSet\Enum\USB\ROOT_HUB30\5&23f8e3f5&0&0\Device Parameters\WDF' -Name 'IdleInWorkingState' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB\VID_045E&PID_02D1\7EED85D65D32\Device Parameters\WDF' -Name 'IdleInWorkingState' -Value 0 -PropertyType DWord -Force

<# 其他 #>
Get-ChildItem -Path 'C:\ProgramData\NVIDIA Corporation\nvtopps' -Recurse -File | ForEach-Object { $_.IsReadOnly = $True }
#
cmd.exe /c "taskkill /f /im 'mobsync.exe.exe'"
Rename-Item -Path 'C:\Windows\System32\mobsync.exe.exe' -NewName 'mobsync.exe_old.exe' -Force
#
Get-ChildItem 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations' | Remove-Item -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Directory\shellex\PropertySheetHandlers\Sharing' -Force
Remove-Item -LiteralPath 'HKCR:\Drive\shellex\PropertySheetHandlers\Sharing' -Force
Remove-Item -LiteralPath 'HKCR:\*\shellex\ContextMenuHandlers\ModernSharing' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\MSGraphDocument\shellex\ContextMenuHandlers\ModernSharing' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Folder\shell\opennewtab' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.avci\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.avcs\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.avif\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.avifs\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.bmp\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.dib\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.gif\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.heic\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.heics\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.heif\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.heifs\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.hif\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.jfif\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.jpe\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.jpeg\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.jpg\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.png\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.tif\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.tiff\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\SystemFileAssociations\.wdp\Shell\setdesktopwallpaper' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\exefile\shellex\ContextMenuHandlers\PintoStartScreen' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Folder\ShellEx\ContextMenuHandlers\PintoStartScreen' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Microsoft.Website\shellex\ContextMenuHandlers\PintoStartScreen' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\mscfile\shellex\ContextMenuHandlers\PintoStartScreen' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\AllFilesystemObjects\shell\pintohome' -Force
Remove-Item -LiteralPath 'HKCR:\Drive\shell\pintohome' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Folder\shell\pintohome' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Network\shell\pintohome' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\*\shell\pintohomefile' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\batfile\shell\runasuser' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\cmdfile\shell\runasuser' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\exefile\shell\runasuser' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\mscfile\shell\runasuser' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Msi.Package\shell\runasuser' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\.contact\ShellNew' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location' -Force
Remove-Item -LiteralPath 'HKCR:\.library-ms\ShellNew' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\.zip\CompressedFolder\ShellNew' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\Directory\shellex\ContextMenuHandlers\EPP' -Force
Remove-Item -LiteralPath 'HKCR:\Drive\shellex\ContextMenuHandlers\EPP' -Force
Remove-Item -LiteralPath 'HKCR:\*\shellex\ContextMenuHandlers\EPP' -Force
Remove-Item -LiteralPath 'HKCR:\Folder\shell\opennewprocess' -Recurse -Force
Remove-Item -LiteralPath 'HKCR:\DesktopBackground\Shell\EditStickers' -Force
New-ItemProperty -LiteralPath 'HKCR:\Drive\shell\encrypt-bde' -Name 'LegacyDisable' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\Drive\shell\encrypt-bde-elev' -Name 'LegacyDisable' -Value '' -PropertyType String -Force
# Previous_Versions
Remove-Item -LiteralPath 'HKCR:\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Force
Remove-Item -LiteralPath 'HKCR:\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Force
Remove-Item -LiteralPath 'HKCR:\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Force
Remove-Item -LiteralPath 'HKCR:\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Force
Remove-Item -LiteralPath 'HKCR:\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Force
Remove-Item -LiteralPath 'HKCR:\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Force
Remove-Item -LiteralPath 'HKCR:\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Force
Remove-Item -LiteralPath 'HKCR:\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}' -Force
#
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{7AD84985-87B4-4a16-BE58-8B72A5B390F7}' -Value 'Play to Menu' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{e2bf9676-5f8f-435c-97eb-11607a5bedf7}' -Value '' -PropertyType String -Force
#
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Google\Chrome\NativeMessagingHosts\com.microsoft.defender.browser_extension.native_message_host' -Force
#
Remove-Item -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderMSGraph\NameSpace_38664959\DelegateFolders\{AD182E17-4754-4742-8529-C11EEEF0C299}' -Force
#
Get-ChildItem 'C:\AMD\Chipset_Software\Logs' | Remove-Item -Recurse -Force

#####
Remove-PSDrive -Name HKCR
