$ErrorActionPreference = 'SilentlyContinue'
$ProgressPreference = 'SilentlyContinue'
$ConfirmPreference = 'None'
$PSModuleAutoloadingPreference = 'All'
Start-Transcript -Path c:\2.txt -Force
New-PSDrive -PSProvider Registry -Name HKCR -Root HKEY_CLASSES_ROOT

<# 希捷硬盘固件优化 #>
# 'C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe' -d PD0 --scan
# 'C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe' -d PD0 --deviceInfo
# 'C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe' -d PD0 --powerBalanceFeature disable
# 'C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe' -d PD0 --EPCfeature disable
# 'C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe' -d PD0 --idle_a disable
# 'C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe' -d PD0 --idle_b disable
# 'C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe' -d PD0 --idle_c disable
# 'C:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe' -d PD0 --standby_z disable
# 'C:\Tools\SeaChest\SeaChest_Configure_x64_windows.exe' -d PD0 --lowCurrentSpinup disable

<# 完全删除系统组件 #>
#Set-ItemProperty -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*OneDrive*' -Name Visibility -Value '1' -Force
#Remove-Item -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Curr1entVersion\Component Based Servicing\Packages\*OneDrive*' -Include *Owner* -Recurse -Force
#Get-ChildItem -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*OneDrive*' -Name | ForEach-Object { dism /online /remove-package /PackageName:$_ /NoRestart }

<# 服务驱动 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *condrv* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *3ware* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ADP80XX* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppleSSD* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *arcsas* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *b06bdrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bcmfn2* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cht4iscsi* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cht4vbd* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *defragsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ebdrv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ebdrv0* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *HpSAMD* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ibbus* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ItSas35i* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *IntelPMT* | Set-ItemProperty -Name Start -Value 4 -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *i8042prt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AmdK8* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MicrosoftEdgeElevationService* | Remove-Item
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bthmodem* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bttflt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *hvservice* | Set-ItemProperty -Name Start -Value 4 -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Vid* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *vmbus* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *storflt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *gencounter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AarSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AJRouter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ALG* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AppVClient* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *autotimesvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BcastDVRUserService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CSC* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CertPropSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cloudidsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CscService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cbdhsvc* | Set-ItemProperty -Name Start -Value 4 -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *IKEEXT* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *LanmanServer* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *lfsvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MapsBroker* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MessagingService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Ndu* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PenService* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MixedRealityOpenXRSvc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Netman* | Set-ItemProperty -Name Start -Value 2 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NcaSvc* | Set-ItemProperty -Name Start -Value 2 -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ShellHWDetection* | Set-ItemProperty -Name Start -Value 4 -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DoSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *wuauserv* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BITS* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UsoSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WaaSMedicSvc* | Set-ItemProperty -Name Start -Value 4 -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CryptSvc* | Set-ItemProperty -Name Start -Value 3 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *rdpbus* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *netbios* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AsyncMac* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Beep* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *bindflt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *buttonconverter* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CAD* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CimFS* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *circlass* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CompositeBus_9CDBF0D65600796D* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Dfsc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ErrDev* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *fdc* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *flpydisk* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *sfloppy* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *tcpipreg* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *umbus_A1A252CD67D6A19D* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *VerifierExt* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *WindowsTrustedRTProxy* | Set-ItemProperty -Name Start -Value 4 -Force

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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *intelppm* | Set-ItemProperty -Name Start -Value 4 -Force

<# 性能 #>
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'AllowIdleIrpInD3' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'D3ColdSupported' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'DeviceSelectiveSuspended' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'EnableIdlePowerManagement' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'EnableSelectiveSuspend' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'EnhancedPowerManagementEnabled' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'IdleInWorkingState' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'SelectiveSuspendEnabled' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'SelectiveSuspendOn' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'WaitWakeEnabled' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'WdfDirectedPowerTransitionEnable' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'DisableIdlePowerManagement' -Value 1 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'WakeEnabled' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'WdkSelectiveSuspendEnable' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'WakeEnabled' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Device Parameters' } | Set-ItemProperty -Name 'WdkSelectiveSuspendEnable' -Value 0 -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance' -Name 'DisableDiagnosticTracing' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter' -Name 'ActivationType' -Value 0 -PropertyType DWord -Force
$MSIMode = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'MessageSignaledInterruptProperties' }
ForEach ($item in $MSIMode) { $path = $item -replace 'HKEY_LOCAL_MACHINE', 'HKLM:'; Set-ItemProperty -Path $path -Name 'MSISupported' -Value 1 -Force }
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Affinity Policy' } | Remove-ItemProperty -Name 'DevicePriority' -Force
#
Remove-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*' -Recurse -Force
New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options' -Force
#
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules' -Force
New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules' -Force
#
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like 'Parameters' } | Set-ItemProperty -Name 'DmaRemappingCompatible' -Value 0 -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -Name 'AllowHeadlessExecution' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -Name 'AllowMultipleBackgroundTasks' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -Name 'InactivityTimeoutMs' -Value -1 -PropertyType DWord -Force
#
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing' -Name 'DisableWerReporting' -Value 1 -PropertyType DWord -Force
#
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
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableRoutinelyTakingAction' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'ServiceKeepAlive' -Value 0 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableBehaviorMonitoring' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableIOAVProtection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableOnAccessProtection' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableRealtimeMonitoring' -Value 1 -PropertyType DWord -Force
#
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-LiveId/Operational"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-CloudStore/Operational"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-UniversalTelemetryClient/Operational"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-WindowsSystemAssessmentTool/Operational"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-ReadyBoost/Operational"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-HelloForBusiness/Operational"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-SettingSync/Debug"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-Known Folders API Service"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-SettingSync/Operational"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-Store/Operational"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$EventLog = Get-WinEvent -ListLog "Microsoft-Windows-Application-Experience/Program-Telemetry"; $EventLog.IsEnabled = $false; $EventLog.SaveChanges()
$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{1b562e86-b7aa-4131-badc-b6f3a001407e}"; if (-not (Test-Path -Path $Path)) { New-Item -ItemType String -Path $Path }
New-ItemProperty -Path $Path -Name "Enabled" -PropertyType Dword -Value 0 -Force
#
$Logger = Get-ChildItem -Path 'HKLM:\System\CurrentControlSet\Control\WMI\Autologger' -Recurse -Depth 1 | Where-Object { $_.PSChildName -NotLike 'Circular Kernel Context Logger' -and $_.PSChildName -NotLike 'EventLog-Application' `
        -and $_.PSChildName -NotLike 'EventLog-Security' -and $_.PSChildName -NotLike 'EventLog-System' -and $_.PSChildName -NotLike 'NtfsLog' -and $_.PSChildName -NotLike 'WdiContextLog' `
        -and $_.PSChildName -NotLike 'UBPM' -and $_.PSChildName -NotLike 'NetCore' -and $_.PSChildName -NotLike 'LwtNetLog' -and $_.PSChildName -NotLike 'AppModel' -and $_.PSChildName -NotLike 'IntelRST' -and $_.PSChildName -NotLike 'TileStore' `
        -and $_.PSChildName -NotLike 'WifiSession' }
ForEach ($item in $Logger) { $path = $item -replace "HKEY_LOCAL_MACHINE", "HKLM:"; Set-ItemProperty -Path $path -Name 'Start' -Value 0 -Force }
#
# Get-ScheduledTask -TaskPath "\*" | Where-Object { $_.Taskname -match 'MicrosoftEdge*' } | Disable-ScheduledTask
Get-ScheduledTask -TaskPath "\Microsoft\*" | Where-Object { $_.Taskname -notmatch 'MsCtfMonitor' -and $_.Taskname -notmatch 'RemoteFXvGPUDisableTask' `
        -and $_.Taskname -notmatch 'Sysprep Generalize Drivers' -and $_.Taskname -notmatch 'Device Install Group Policy' -and $_.Taskname -notmatch 'ResPriStaticDbSync' -and $_.Taskname -notmatch 'WsSwapAssessmentTask' `
        -and $_.Taskname -notmatch 'DXGIAdapterCache' -and $_.Taskname -notmatch 'UninstallDeviceTask' -and $_.Taskname -notmatch 'GatherNetworkInfo' `
        -and $_.Taskname -notmatch ' *NGEN* ' } | Disable-ScheduledTask
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation"')
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\WaaSMedic"')
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"')
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task"')
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask"')
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker"')
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\UpdateOrchestrator"')
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\WindowsUpdate"')
Invoke-Expression -Command ('schtasks /Delete /F /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"')
#
Invoke-Expression -Command ('wevtutil set-log "Microsoft-Windows-SleepStudy/Diagnostic" /e:false')
Invoke-Expression -Command ('wevtutil set-log "Microsoft-Windows-Kernel-Processor-Power/Diagnostic" /e:false')
Invoke-Expression -Command ('wevtutil set-log "Microsoft-Windows-UserModePowerService/Diagnostic" /e:false')
Get-ChildItem -Path 'C:\Windows\System32\SleepStudy' -Recurse -File | ForEach-Object { $_.IsReadOnly = $True }
#
Get-ChildItem -Path 'C:\Windows\Panther' -Recurse | Remove-Item -Recurse
Stop-Service -Name "NVIDIA Display Container LS" -Force
Get-ChildItem -Path 'C:\ProgramData\NVIDIA Corporation\nvtopps' -Recurse -File | ForEach-Object { $_.IsReadOnly = $True }
Get-ChildItem -Path 'C:\ProgramData\NVIDIA Corporation\GameSessionTelemetry' -Recurse -File | ForEach-Object { $_.IsReadOnly = $True }
Rename-Item -Path 'C:\Windows\System32\DriverStore\FileRepository\nv_dispig.inf_amd64\Display.NvContainer\plugins\Session\_NvGSTPlugin.dll' -NewName '_NvGSTPlugin_old.dll' -Force
Rename-Item -Path 'C:\Windows\System32\DriverStore\FileRepository\nv_dispig.inf_amd64\Display.NvContainer\plugins\Session\_nvtopps.dll' -NewName '_nvtopps_old.dll' -Force
Rename-Item -Path 'C:\Windows\System32\DriverStore\FileRepository\nv_dispig.inf_amd64_08a077b2e836a7c4\Display.NvContainer\nvtopps.db3' -NewName 'nvtopps_old.db3' -Force
Rename-Item -Path 'C:\Windows\System32\DriverStore\FileRepository\nv_dispig.inf_amd64_08a077b2e836a7c4\NvTelemetry64.dll' -NewName 'NvTelemetry64_old.dll' -Force
Remove-Item -LiteralPath 'HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}' -Force
Remove-Item -LiteralPath 'HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}' -Force
Invoke-Expression -Command ('taskkill /f /im "smartscreen.exe"')
Rename-Item -Path 'C:\Windows\System32\smartscreen.exe' -NewName 'smartscreen_old.exe' -Force
Invoke-Expression -Command ('taskkill /f /im "mobsync.exe"')
Rename-Item -Path 'C:\Windows\System32\mobsync.exe' -NewName 'mobsync_old.exe' -Force
Rename-Item -Path 'C:\Windows\bcastdvr\KnownGameList.bin' -NewName 'KnownGameList_old.bin' -Force
Invoke-Expression -Command ('taskkill /f /im "explorer.exe"')
Rename-Item -Path 'C:\Users\Administrator\AppData\Local\Microsoft\GameDVR\KnownGameList.bin' -NewName 'KnownGameList_old.bin' -Force
#
Remove-Item -Path 'C:\Windows\Fonts\AGENCYB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\AGENCYR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ALGER.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ANTQUAB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ANTQUABI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ANTQUAI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ARLRDBD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BASKVILL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BAUHS93.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BELL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BELLB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BELLI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BERNHC.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BKANT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_B.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_BI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_BLAI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_BLAR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_CB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_CBI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_CI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_CR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_I.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_PSTC.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOD_R.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOOKOS.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOOKOSB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOOKOSBI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BOOKOSI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BRADHITC.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BRITANIC.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BRLNSB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BRLNSDB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BRLNSR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BROADW.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BRUSHSCI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\BSSYM7.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CALIFB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CALIFI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CALIFR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CALIST.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CALISTB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CALISTBI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CALISTI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CASTELAR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CENSCBK.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CENTAUR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CENTURY.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CHILLER.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\COLONNA.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\COOPBL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\COPRGTB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\COPRGTL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\CURLZ___.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\DUBAI-BOLD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\DUBAI-LIGHT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\DUBAI-MEDIUM.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\DUBAI-REGULAR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ELEPHNT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ELEPHNTI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ENGR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ERASBD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ERASDEMI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ERASLGHT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ERASMD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FELIXTI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FORTE.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRABK.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRABKIT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRADM.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRADMCN.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRADMIT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRAHV.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRAHVIT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRAMDCN.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FREESCPT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FRSCRIPT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\FTLTLT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GARA.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GARABD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GARAIT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GIGI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GIL_____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GILB____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GILBI___.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GILC____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GILI____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GILLUBCD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GILSANUB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GLECB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GLSNECB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GOTHIC.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GOTHICB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GOTHICBI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GOTHICI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GOUDOS.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GOUDOSB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GOUDOSI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\GOUDYSTO.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\HARLOWSI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\HARNGTON.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\HATTEN.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\HTOWERT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\HTOWERTI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\IMPRISHA.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\INFROMAN.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ITCBLKAD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ITCEDSCR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ITCKRIST.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\JOKERMAN.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\JUICE___.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\KUNSTLER.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LATINWD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LBRITE.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LBRITED.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LBRITEDI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LBRITEI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LCALLIG.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LEELAWAD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LEELAWDB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LFAX.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LFAXD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LFAXDI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LFAXI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LHANDW.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LSANS.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LSANSD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LSANSDI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LSANSI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LTYPE.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LTYPEB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LTYPEBO.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\LTYPEO.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MAGNETOB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MAIAN.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MATURASC.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MISTRAL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MOD20.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MSUIGHUB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MSUIGHUR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MTCORSVA.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\MTEXTRA.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\NIAGENG.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\NIAGSOL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\OCRAEXT.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\OLDENGL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ONYX.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\OUTLOOK.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PALSCRI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PAPYRUS.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PARCHM.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PER_____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PERB____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PERBI___.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PERI____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PERTIBD.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PERTILI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PLAYBILL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\POORICH.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\PRISTINA.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\RAGE.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\RAVIE.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\REFSAN.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\REFSPCL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ROCC____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ROCCB___.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ROCK.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ROCKB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ROCKBI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ROCKEB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ROCKI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\SCHLBKB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\SCHLBKBI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\SCHLBKI.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\SCRIPTBL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\SHOWG.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\SNAP____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\STENCIL.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\TCB_____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\TCBI____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\TCCB____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\TCCEB.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\TCCM____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\TCM_____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\TCMI____.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\TEMPSITC.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\VINERITC.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\VIVALDII.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\VLADIMIR.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\WINGDNG2.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\WINGDNG3.TTF' -Force
Remove-Item -Path 'C:\Windows\Fonts\ZWAdobeF.TTF' -Force

#####
Remove-PSDrive -Name HKCR
