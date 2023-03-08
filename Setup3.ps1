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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *defragsvc* | Set-ItemProperty -Name Start -Value 3 -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *luafv* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *Appinfo* | Set-ItemProperty -Name Start -Value 4 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CryptSvc* | Set-ItemProperty -Name Start -Value 3 -Force
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
Remove-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*' -Recurse -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -Name 'AllowHeadlessExecution' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -Name 'AllowMultipleBackgroundTasks' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -Name 'InactivityTimeoutMs' -Value -1 -PropertyType DWord -Force
# https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/
$MSIMode = Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'MessageSignaledInterruptProperties' }
ForEach ($item in $MSIMode) { $path = $item -replace 'HKEY_LOCAL_MACHINE', 'HKLM:'; Set-ItemProperty -Path $path -Name 'MSISupported' -Value 1 -Force }
# Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Enum\PCI' -Recurse -Depth 5 | Where-Object { $_.PSChildName -Like 'Affinity Policy' } | Remove-ItemProperty -Name 'DevicePriority' -Force
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
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name '*EEE' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name '*FlowControl' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name '*LsoV2IPv4' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name '*LsoV2IPv6' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name '*SelectiveSuspend' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name '*WakeOnMagicPacket' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name '*WakeOnPattern' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'PnPCapabilities' -Value 24 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'AdvancedEEE' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'AutoDisableGigabit' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'AutoPowerSaveModeEnabled' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'EnableConnectedPowerGating' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'EnableDynamicPowerGating' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'EnableGreenEthernet' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'EnableModernStandby' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'EnablePME' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'EnablePowerManagement' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'EnableSavePowerNow' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'GigaLite' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'PowerSavingMode' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'ReduceSpeedOnPowerDown' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'ULPMode' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'WakeOnLink' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'WakeOnSlot' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0000' } | Set-ItemProperty -Name 'WakeUpModeCap' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0002' } | Set-ItemProperty -Name 'EnableAdaptivity' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0002' } | Set-ItemProperty -Name 'PnPCapabilities' -Value 24 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0002' } | Set-ItemProperty -Name 'LdpcCap' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Class' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like '0002' } | Set-ItemProperty -Name 'WirelessMode' -Value 256 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' -Recurse -Depth 3 | Where-Object { $_.PSChildName -Like 'Parameters' } | Set-ItemProperty -Name 'DmaRemappingCompatible' -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' -Recurse -Depth 1 | Set-ItemProperty -Name 'SvcHostSplitDisable' -Value 1 -Force
# ForEach ($v in (Get-Command -Name 'Set-ProcessMitigation').Parameters['Disable'].Attributes.ValidValues) { Set-ProcessMitigation -System -Disable $v.ToString().Replace(' ', '').Replace("`n", '') }
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Diagnostics\Performance' -Name 'DisableDiagnosticTracing' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diaglog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCore' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RadioMgr' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter' -Name 'ActivationType' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing' -Name 'DisableWerReporting' -Value 1 -PropertyType DWord -Force
Remove-Item -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules' -Force
New-Item 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules' -Force
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
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting' -Force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting' -Name 'DisableEnhancedNotifications' -Value 1 -PropertyType DWord -Force

<# 计划任务 #>
# Get-ScheduledTask -TaskPath '\Microsoft\Office\' | Disable-ScheduledTask
Disable-ScheduledTask -TaskName '\Microsoft\Windows\ApplicationData\appuriverifierdaily'
Disable-ScheduledTask -TaskName '\Microsoft\Windows\ApplicationData\appuriverifierinstall'
Disable-ScheduledTask -TaskName '\Microsoft\Windows\ApplicationData\DsSvcCleanup'
Disable-ScheduledTask -TaskName '\Microsoft\Windows\Application Experience\PcaPatchDbTask'
Disable-ScheduledTask -TaskName '\Microsoft\Windows\Application Experience\StartupAppTask'
Disable-ScheduledTask -TaskName '\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask'
Disable-ScheduledTask -TaskName '\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon'
Disable-ScheduledTask -TaskName '\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork'
Get-ScheduledTask -TaskPath '\Microsoft\Windows\UpdateOrchestrator\' | Disable-ScheduledTask
Get-ScheduledTask -TaskPath '\Microsoft\Windows\Time Synchronization\' | Disable-ScheduledTask
Get-ScheduledTask -TaskPath '\Microsoft\Windows\UPnP\' | Disable-ScheduledTask
Get-ScheduledTask -TaskPath '\Microsoft\Windows\BrokerInfrastructure\' | Disable-ScheduledTask
Get-ScheduledTask -TaskPath '\Microsoft\Windows\CloudExperienceHost\' | Disable-ScheduledTask

<# 其他 #>
Remove-Item -LiteralPath 'HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}' -Force
Remove-Item -LiteralPath 'HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}' -Force
# Stop-Service -Name 'NVDisplay.ContainerLocalSystem' -Force
Rename-Item -Path 'C:\Windows\System32\DriverStore\FileRepository\*nv_dispig.inf_amd64*\Display.NvContainer\plugins\Session\_NvGSTPlugin.dll' -NewName '_NvGSTPlugin_old.dll' -Force
Rename-Item -Path 'C:\Windows\System32\DriverStore\FileRepository\*nv_dispig.inf_amd64*\Display.NvContainer\plugins\Session\_nvtopps.dll' -NewName '_nvtopps_old.dll' -Force
Invoke-Expression -Command ('taskkill /f /im "smartscreen.exe"')
Rename-Item -Path 'C:\Windows\System32\smartscreen.exe' -NewName 'smartscreen_old.exe' -Force
Invoke-Expression -Command ('taskkill /f /im "mobsync.exe"')
Rename-Item -Path 'C:\Windows\System32\mobsync.exe' -NewName 'mobsync_old.exe' -Force
Rename-Item -Path 'C:\Windows\bcastdvr\KnownGameList.bin' -NewName 'KnownGameList_old.bin' -Force
Invoke-Expression -Command ('taskkill /f /im "explorer.exe"')
Rename-Item -Path 'C:\Users\Administrator\AppData\Local\Microsoft\GameDVR\KnownGameList.bin' -NewName 'KnownGameList_old.bin' -Force

#####
Remove-PSDrive -Name HKCR
