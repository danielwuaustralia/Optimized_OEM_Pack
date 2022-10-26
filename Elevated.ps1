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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Modem* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Ndu* | Set-ItemProperty -Name Start -Value 4 -Force
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
#
cmd.exe /c "sc config lanmanworkstation depend= bowser/mrxsmb20/nsi"
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *mrxsmb10* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *mrxsmb* | Set-ItemProperty -Name Start -Value 4 -Force
#
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SharedAccess* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SharedRealitySvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *shpamsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SmsRouter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SNMPTRAP* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SpatialGraphFilter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *spectrum* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *SSDPSRV* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TapiSrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TermService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TrkWks* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *TsUsbFlt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *tzautoupdate* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UmRdpService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UnistoreSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *upnphost* | Set-ItemProperty -Name Start -Value 4 -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XblAuthManager* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XblGameSave* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XboxGipSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *XboxNetApiSvc* | Set-ItemProperty -Name Start -Value 4 -Force

<# 映像劫持 #>
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoogleUpdate.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoogleUpdate.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeUpdate.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeUpdate.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE\PerfOptions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE\PerfOptions" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SgrmBroker.exe") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SgrmBroker.exe" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe' -Name 'Debugger' -Value '%windir%\System32\taskkill.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions' -Name 'CpuPriorityClass' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions' -Name 'IoPriority' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost\PerfOptions' -Name 'IoPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass\PerfOptions' -Name 'IoPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeUpdate.exe' -Name 'Debugger' -Value '%windir%\System32\taskkill.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe' -Name 'Debugger' -Value '%windir%\System32\taskkill.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe' -Name 'Debugger' -Value '%windir%\System32\taskkill.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SgrmBroker.exe' -Name 'Debugger' -Value '%windir%\System32\taskkill.exe' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv\PerfOptions' -Name 'IoPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sppsvc\PerfOptions' -Name 'IoPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost\PerfOptions' -Name 'IoPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE\PerfOptions' -Name 'CpuPriorityClass' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE\PerfOptions' -Name 'IoPriority' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe' -Name 'MaxLoaderThreads' -Value 1 -PropertyType DWord -Force

<# 系统激活 #>
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' -Name 'NoGenTicket' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' -Name 'AllowWindowsEntitlementReactivation' -Value 1 -PropertyType DWord -Force

<# 开启MSI模式 #>
# https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/
$MSIMode = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'MessageSignaledInterruptProperties' }
ForEach ($item in $MSIMode) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'MSISupported' -Value 1 -Force }

<# 游戏服务 #>
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
# $Logger = Get-ChildItem -Path 'HKLM:\System\CurrentControlSet\Control\WMI\Autologger' -Recurse -Depth 3 | Where-Object { $_.PSChildName -NotLike 'Circular Kernel Context Logger' -and $_.PSChildName -NotLike 'EventLog-Application' -and $_.PSChildName -NotLike 'EventLog-Security' -and $_.PSChildName -NotLike 'EventLog-System' -and $_.PSChildName -NotLike 'NtfsLog' -and $_.PSChildName -NotLike 'WdiContextLog' -and $_.PSChildName -NotLike 'NetCore' -and $_.PSChildName -NotLike 'LwtNetLog' -and $_.PSChildName -NotLike 'AppModel' -and $_.PSChildName -NotLike 'UBPM' -and $_.PSChildName -NotLike 'TileStore' -and $_.PSChildName -NotLike 'WifiSession' }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Start' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Status' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'Enabled' -Value 0 -Force }
# ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'EnableProperty' -Value 0 -Force }
# $WINEVT = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels'; Get-ChildItem $WINEVT | ForEach-Object { Set-ItemProperty -Path "$WINEVT\$($_.pschildname)" -Name Enabled -Value 0 -Verbose }
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *EventLog* | Set-ItemProperty -Name Start -Value 4 -Force
Remove-Item -LiteralPath "HKLM:\SYSTEM\ControlSet001\Control\WMI\Autologger" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SYSTEM\ControlSet002\Control\WMI\Autologger " -recurse -force;
Remove-Item -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger " -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Policies" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Winevt" -recurse -force;

<# 计划任务 #>
Get-ScheduledTask -TaskPath "\Microsoft\*" | Where-Object {$_.TaskName -notmatch 'MsCtfMonitor' -and $_.TaskName -notmatch 'Sysprep Generalize Drivers' -and $_.TaskName -notmatch 'Device Install Group Policy' -and $_.TaskName -notmatch 'ResPriStaticDbSync' -and $_.TaskName -notmatch 'WsSwapAssessmentTask' -and $_.TaskName -notmatch 'DXGIAdapterCache' -and $_.TaskName -notmatch 'UninstallDeviceTask' -and $_.TaskName -notmatch 'SvcRestartTask' -and $_.TaskName -notmatch 'SvcRestartTaskLogon' -and $_.TaskName -notmatch 'SvcRestartTaskNetwork' -and $_.TaskName -notmatch 'SvcTrigger' -and $_.TaskName -notmatch 'GatherNetworkInfo'} | Disable-ScheduledTask
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree' | Where-Object -Property Name -Like *MicrosoftEdge* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree' | Where-Object -Property Name -Like *OneDrive* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *Performance* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *OfficeTelemetryAgentFallBack2016* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office' | Where-Object -Property Name -Like *OfficeTelemetryAgentLogOn2016* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator' | Where-Object -Property Name -Like *USO_UxBroker* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Defender' | Where-Object -Property Name -Like *Defender* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SMB' | Where-Object -Property Name -Like *SMB* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Software Inventory Logging' | Where-Object -Property Name -Like *Collection* | Remove-Item -Force
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Software Inventory Logging' | Where-Object -Property Name -Like *Configuration* | Remove-Item -Force

<# 禁用Smart App Control #>
if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy" -force };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy' -Name 'VerifiedAndReputablePolicyState' -Value 0 -PropertyType DWord -Force

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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MsSecFlt* | Set-ItemProperty -Name Start -Value 4 -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc' -Name 'LaunchProtected' -Value 4 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.CapabilityAccess") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.CapabilityAccess" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.CapabilityAccess' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp' -Name 'Enabled' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray' -Name 'HideSystray' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Security Center' -Force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Security Center' -Name 'cval' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments' -Name 'ScanWithAntiVirus' -Value 1 -PropertyType DWord -Force
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'SecurityHealth' -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Defender\Features") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows Defender\Features" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Features' -Name 'TamperProtection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Features' -Name 'TamperProtectionSource' -Value 2 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows Security Health\State") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows Security Health\State" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Security Health\State' -Name 'AccountProtection_MicrosoftAccount_Disconnected' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows Defender Security Center\Notifications") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows Defender Security Center\Notifications" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Defender Security Center\Notifications' -Name 'DisableNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows Defender Security Center\Notifications' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Defender") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows Defender" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender' -Name 'DisableRoutinelyTakingAction' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender' -Name 'DisableAntiVirus' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Defender\Signature Updates") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows Defender\Signature Updates" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Signature Updates' -Name 'FirstAuGracePeriod' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows Defender\UX Configuration") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows Defender\UX Configuration" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows Defender\UX Configuration' -Name 'DisablePrivacyMode' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run' -Name 'SecurityHealth' -Value ([byte[]](0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'PUAProtection' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'RandomizeScheduleTaskTimes' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\Exclusions") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Exclusions' -Name 'DisableAutoExclusions' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\MpEngine") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\MpEngine' -Name 'MpEnablePus' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\Quarantine") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Quarantine' -Name 'LocalSettingOverridePurgeItemsAfterDelay' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Quarantine' -Name 'PurgeItemsAfterDelay' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\Real-Time Protection") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableBehaviorMonitoring' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableIOAVProtection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableOnAccessProtection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableRealtimeMonitoring' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableRoutinelyTakingAction' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableScanOnRealtimeEnable' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableScriptScanning' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\Remediation") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Remediation' -Name 'Scan_ScheduleDay' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Remediation' -Name 'Scan_ScheduleTime' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\Reporting") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Reporting' -Name 'AdditionalActionTimeOut' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Reporting' -Name 'CriticalFailureTimeOut' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Reporting' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Reporting' -Name 'DisableGenericRePorts' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Reporting' -Name 'NonCriticalTimeOut' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\Scan") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'AvgCPULoadFactor' -Value 10 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'DisableArchiveScanning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'DisableCatchupFullScan' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'DisableCatchupQuickScan' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'DisableRemovableDriveScanning' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'DisableRestorePoint' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'DisableScanningMappedNetworkDrivesForFullScan' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'DisableScanningNetworkFiles' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'PurgeItemsAfterDelay' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'ScanOnlyIfIdle' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'ScanParameters' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'ScheduleDay' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Scan' -Name 'ScheduleTime' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\Signature Updates") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Signature Updates' -Name 'DisableUpdateOnStartupWithoutEngine' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Signature Updates' -Name 'ScheduleDay' -Value 8 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Signature Updates' -Name 'ScheduleTime' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\Signature Updates' -Name 'SignatureUpdateCatchupInterval' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\Policies\Microsoft\Windows Defender\SpyNet") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" -force };
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\SpyNet' -Name 'DisableBlockAtFirstSeen' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\SpyNet' -Name 'LocalSettingOverrideSpynetReporting' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\SpyNet' -Name 'SpyNetReporting' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\SpyNet' -Name 'SpyNetReportingLocation' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\Policies\Microsoft\Windows Defender\SpyNet' -Name 'SubmitSamplesConsent' -Value 2 -PropertyType DWord -Force

<# 禁用防火墙 #>
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile' -Name 'EnableFirewall' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile' -Name 'EnableFirewall' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile' -Name 'EnableFirewall' -Value 0 -PropertyType DWord -Force
cmd.exe /c 'netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes​'
cmd.exe /c "netsh advfirewall set allprofiles state off"

<# 禁用Windows Update #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DoSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wuauserv* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BITS* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UsoSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WaaSMedicSvc* | Set-ItemProperty -Name Start -Value 4 -Force
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization' -Name 'SystemSettingsDownloadMode' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -Name 'DODownloadMode' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -Name 'DOMinBackgroundQos' -Value 256 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -Name 'DOMinBatteryPercentageAllowedToUpload' -Value 100 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -Name 'DOMaxUploadBandwidth' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -Name 'DOPercentageMaxDownloadBandwidth' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -Name 'DOMaxDownloadBandwidth' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Speech_OneCore\Preferences") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Speech_OneCore\Preferences" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Speech_OneCore\Preferences' -Name 'ModelDownloadAllowed' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization' -Name 'OptInOOBE' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config' -Name 'DODownloadMode' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate' -Name 'AutoDownload' -Value 5 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore' -Name 'AutoDownload' -Value 5 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d' -Name 'RegisteredWithAU' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'HideMCTLink' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\LexiconUpdate\loc_0804") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\LexiconUpdate\loc_0804" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\LexiconUpdate\loc_0804' -Name 'HapDownloadEnabled' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Speech") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Speech" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Speech' -Name 'AllowSpeechModelUpdate' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -force };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'AllowAutoWindowsUpdateDownloadOverMeteredNetwork' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'DisableDualScan' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'DisableOSUpgrade' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'ElevateNonAdmins' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'ExcludeWUDriversInQualityUpdate' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'SetDisableUXWUAccess' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'SetRestartWarningSchd' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'DoNotConnectToWindowsUpdateInternetLocations' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'DisableWindowsUpdateAccess' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'WUServer' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'WUStatusServer' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'UpdateServiceUrlAlternate' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'AUOptions' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'NoAutoUpdate' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'UseWUServer' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'AlwaysAutoRebootAtScheduledTime' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'AutoInstallMinorUpdates' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'IncludeRecommendedUpdates' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'NoAutoRebootWithLoggedOnUsers' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'RebootRelaunchTimeoutEnabled' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'RebootRelaunchTimeout' -Value 10 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'RebootWarningTimeoutEnabled' -Value 0 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Peernet") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Peernet" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Peernet' -Name 'Disabled' -Value 1 -PropertyType DWord -Force
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS' -Name 'DisableBranchCache' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS' -Name 'DisablePeerCachingClient' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\BITS' -Name 'DisablePeerCachingServer' -Value 1 -PropertyType DWord -Force

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
Remove-Item -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\MicrosoftEdgeElevationService' -recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\edgeupdate' -recurse -Force;
Remove-Item -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\edgeupdatem' -recurse -Force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Edge" -recurse -force;
Get-ChildItem 'C:\Program Files (x86)\Microsoft' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\Users\Administrator\AppData\Local\Microsoft\Edge' | Remove-Item -Recurse -Force
Get-ChildItem 'C:\ProgramData\Microsoft\EdgeUpdate' | Remove-Item -Recurse -Force
Remove-Item -LiteralPath "HKLM:\SYSTEM\ControlSet001\Services\MicrosoftEdgeElevationService" -recurse -force;
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk' -Force
Remove-Item -Path 'C:\Users\Administrator\Desktop\Microsoft Edge.lnk' -Force
Remove-Item -LiteralPath "HKCR:\CLSID\{A2F5CB38-265F-4A02-9D1E-F25B664968AB}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.pdf\AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.svg\AppXde74bfzw9j31bzhcvsrxsyjnhhbq66cs" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\https\AppX90nv6nhay5n6a98fnetv7tpk64pp35es" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\microsoft-edge" -recurse -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Index\Name\microsoft-edge-holographic" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppUserModelId\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" -recurse -force;
Remove-ItemProperty -LiteralPath 'HKCR:\.htm\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.htm\OpenWithProgIds' -Name 'IE.AssocFile.HTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.html\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.html\OpenWithProgIds' -Name 'IE.AssocFile.HTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.shtml\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.webp\OpenWithProgids' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.pdf\OpenWithProgids' -Name 'MSEdgePDF' -Force
Remove-Item -LiteralPath "HKCR:\.pdf\ShellEx\{8895b1c6-b41f-4c1c-a562-0d564250836f}" -force
Remove-ItemProperty -LiteralPath 'HKCR:\.svg\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.xht\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.xml\OpenWithProgids' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.xhtml\OpenWithProgIds' -Name 'MSEdgeHTM' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.mht\OpenWithProgIds' -Name 'MSEdgeMHT' -Force
Remove-ItemProperty -LiteralPath 'HKCR:\.mhtml\OpenWithProgIds' -Name 'MSEdgeMHT' -Force
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\microsoft-edge" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\microsoft-edge-holographic" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\{A6B716CB-028B-404D-B72C-50E153DD68DA}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\{CECDDD22-2E72-4832-9606-A9B0E5E344B2}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\MicrosoftEdgeUpdate.exe" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{3AF1251F-9B5A-4F53-9B6D-B0B71E02006E}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{9BD1F370-1212-4794-AA9B-9EBD575091D5}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{9E8F1B36-249F-4FC3-9994-974AFAA07B26}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\{1FCBE96C-1697-43AF-9140-2897C7C69767}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\{31575964-95F7-414B-85E4-0E9A93699E13}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AppID\ie_to_edge_bho.dll" -recurse -force;
Remove-Item -LiteralPath "HKCR:\CLSID\{1FD49718-1D00-4B19-AF5F-070AF6D5D54C}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\ie_to_edge_bho.IEToEdgeBHO" -recurse -force;
Remove-Item -LiteralPath "HKCR:\ie_to_edge_bho.IEToEdgeBHO.1" -recurse -force;
Remove-Item -LiteralPath "HKCR:\microsoft-edge" -recurse -force;
Remove-Item -LiteralPath "HKCR:\microsoft-edge-holographic" -recurse -force;
Remove-Item -LiteralPath "HKCR:\MSEdgeHTM" -recurse -force;
Remove-Item -LiteralPath "HKCR:\MSEdgeMHT" -recurse -force;
Remove-Item -LiteralPath "HKCR:\MSEdgePDF" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{08D832B9-D2FD-481F-98CF-904D00DF63CC}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{1FD49718-1D00-4B19-AF5F-070AF6D5D54C}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{2E1DD7EF-C12D-4F8E-8AD8-CF8CC265BAD0}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{492E1C30-A1A2-4695-87C8-7A8CAD6F936F}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{5F6A18BB-6231-424B-8242-19E5BB94F8ED}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{77857D02-7A25-4B67-9266-3E122A8F39E4}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{8F09CD6C-5964-4573-82E3-EBFF7702865B}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{9F3F5F5D-721A-4B19-9B5D-69F664C1A591}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{A6B716CB-028B-404D-B72C-50E153DD68DA}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{B5977F34-9264-4AC3-9B31-1224827FF6E8}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{D1E8B1A6-32CE-443C-8E2E-EBA90C481353}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{E421557C-0628-43FB-BF2B-7C9F8A4D067C}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{EA92A799-267E-4DF5-A6ED-6A7E0684BB8A}" -recurse -force;
Remove-Item -LiteralPath "HKCR:\WOW6432Node\CLSID\{FF419FF9-90BE-4D9F-B410-A789F90E5A7C}" -recurse -force;
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{3A84F9C2-6164-485C-A7D9-4B27F8AC009E}\InProcServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{628ACE20-B77A-456F-A88D-547DB6CEEDD5}\LocalServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{628ACE20-B77A-456F-A88D-547DB6CEEDD5}\LocalServer32' -Name 'ServerExecutable' -Value '' -PropertyType String -Force
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.htm\AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.fileTypeAssociation\.html\AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\http\AppXq0fevzme2pys62n3e0fbqa7peapykr8v" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-xbl-3d8b930f\AppXdn5b0j699ka5fqvrr3pgjad0evqarm6d" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\read\AppXe862j7twqs4aww05211jaakwxyfjx4da" -recurse -force;
New-ItemProperty -LiteralPath 'HKCR:\TypeLib\{C9C2B807-7731-4F34-81B7-44FF7779522B}\1.0\0\win32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\TypeLib\{C9C2B807-7731-4F34-81B7-44FF7779522B}\1.0\0\win64' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{3A84F9C2-6164-485C-A7D9-4B27F8AC009E}\InProcServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{3AF1251F-9B5A-4F53-9B6D-B0B71E02006E}\InprocHandler32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{9BD1F370-1212-4794-AA9B-9EBD575091D5}\InProcServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{9E8F1B36-249F-4FC3-9994-974AFAA07B26}\InprocServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{A2F5CB38-265F-4A02-9D1E-F25B664968AB}\InprocServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{CECDDD22-2E72-4832-9606-A9B0E5E344B2}\ProgID' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\WOW6432Node\CLSID\{CECDDD22-2E72-4832-9606-A9B0E5E344B2}\VersionIndependentProgID' -Name '(default)' -Value '' -PropertyType String -Force
Get-ChildItem -Path 'HKCR:\' | Where-Object -Property Name -Like *MicrosoftEdgeUpdate* | Remove-Item -recurse -force;
Get-ChildItem -Path 'HKCR:\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\' | Where-Object -Property Name -Like *MicrosoftEdge* | Remove-Item -recurse -force;
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{83BF6728-A96E-4228-B442-DB539208D56E}\InProcServer32' -Name '(default)' -Value '' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{8D191696-9CAC-4E4F-8EBC-2C7A8910C5B6}\InprocHandler32' -Name '(default)' -Value '' -PropertyType String -Force
Remove-Item -LiteralPath "HKCR:Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppX3xxs313wwkfjhythsb8q46xdsq8d2cvv" -force;

<# 禁用nvidia驱动log #>
Get-ChildItem -Path 'C:\ProgramData\NVIDIA Corporation\nvtopps' -Recurse -File | ForEach-Object { $_.IsReadOnly = $True }

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
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Usb4HostRouter\Parameters' -Name 'DmaRemappingCompatible' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters' -Name 'DmaRemappingCompatibleSelfhost' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters' -Name 'DmaRemappingCompatible' -Value 0 -PropertyType DWord -Force
$DmaRemapping = Get-ChildItem -Path 'HKLM:\SYSTEM\DriverDatabase\DriverPackages' -Recurse -Depth 9 | Where-Object { $_.PSChildName -Like 'Parameters' }
ForEach ($item in $DmaRemapping) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; Set-ItemProperty -Path $path -Name 'DmaRemappingCompatible' -Value 0 -Force }

<# 关闭省电 #>
New-ItemProperty -LiteralPath 'HKLM:\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001' -Name 'PnPCapabilities' -Value 24 -PropertyType DWord -Force
$IdleInWorkingState = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'WDF' }
ForEach ($item in $IdleInWorkingState) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; New-ItemProperty -Path $path -Name 'IdleInWorkingState' -Value 0 -Force }
$AllowIdleIrpInD3 = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' }
ForEach ($item in $AllowIdleIrpInD3) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; New-ItemProperty -Path $path -Name 'AllowIdleIrpInD3' -Value 0 -Force }
$EnhancedPowerManagementEnabled = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' }
ForEach ($item in $EnhancedPowerManagementEnabled) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; New-ItemProperty -Path $path -Name 'EnhancedPowerManagementEnabled' -Value 0 -Force }
$SelectiveSuspendEnabled = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' }
ForEach ($item in $SelectiveSuspendEnabled) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; New-ItemProperty -Path $path -Name 'SelectiveSuspendEnabled' -Value ([byte[]](0x00)) -PropertyType Binary -Force }
$DeviceSelectiveSuspended = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\USB' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' }
ForEach ($item in $DeviceSelectiveSuspended) { $path = $item -replace "HKEY_LOCAL_MACHINE","HKLM:"; New-ItemProperty -Path $path -Name 'DeviceSelectiveSuspended' -Value 0 -Force }

<# 无用目录 #>
Get-ChildItem 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations' | Remove-Item -Recurse -Force
#
Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" -recurse -force;
Remove-Item -LiteralPath "HKCR:\MSGraphDocument\shellex\ContextMenuHandlers\ModernSharing" -recurse -force;
#
Remove-Item -LiteralPath "HKCR:\.contact\ShellNew" -recurse -force;
#
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.avci\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.avcs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.avif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.avifs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.bmp\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.dib\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.gif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.heic\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.heics\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.heif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.heifs\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.hif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.jfif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.jpe\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.jpeg\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.jpg\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.png\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.tif\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.tiff\Shell\setdesktopwallpaper" -recurse -force;
Remove-Item -LiteralPath "HKCR:\SystemFileAssociations\.wdp\Shell\setdesktopwallpaper" -recurse -force;
#
Remove-Item -LiteralPath "HKCR:\exefile\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Folder\ShellEx\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Microsoft.Website\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
Remove-Item -LiteralPath "HKCR:\mscfile\shellex\ContextMenuHandlers\PintoStartScreen" -recurse -force;
#
Remove-Item -LiteralPath "HKCR:\*\shell\pintohomefile" -recurse -force;
#
Remove-Item -LiteralPath "HKCR:\batfile\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\cmdfile\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\exefile\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\mscfile\shell\runasuser" -recurse -force;
Remove-Item -LiteralPath "HKCR:\Msi.Package\shell\runasuser" -recurse -force;
#
Remove-Item -LiteralPath "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -force;
#
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" -force };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked' -Name '{7AD84985-87B4-4a16-BE58-8B72A5B390F7}' -Value 'Play to Menu' -PropertyType String -Force
# Completely Remove Home in Navigation Pane of File Explorer
New-ItemProperty -LiteralPath 'HKCR:\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder' -Name 'Attributes' -Value -1604321280 -PropertyType DWord -Force

Remove-PSDrive -Name HKCR
Get-ChildItem 'C:\Windows\Setup\Scripts' | Remove-Item -Recurse -Force
