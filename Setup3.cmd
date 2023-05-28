@echo on
color 6
setlocal EnableDelayedExpansion
chcp 65001
title Stage 3

:: Intel Drivers
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iagpio" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iai2c" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_BXT_P" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_CNL" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2_GLK" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_BXT_P" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_CNL" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C_GLK" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSSi_GPIO" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaLPSSi_I2C" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorAVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iaStorV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelide" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpep" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelpmax" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm" /v "Start" /t REG_DWORD /d "4" /f
:: 3rd party driver
reg add "HKLM\SYSTEM\CurrentControlSet\Services\3ware" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ADP80XX" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppleSSD" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\arcsas" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\b06bdrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bcmfn2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cht4iscsi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cht4vbd" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ebdrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ebdrv0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HpSAMD" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ibbus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ItSas35i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IntelPMT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSI_SAS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSI_SAS2i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSI_SAS3i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\megasas2i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\megasas35i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\megasr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mlx4_bus" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpi3drvi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mvumis" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ndfltr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\percsas2i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\percsas3i" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pvscsi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SiSRaid2" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SiSRaid4" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SmartSAMD" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stexstor" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSTXRAID" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinMad" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WacomPen" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinVerbs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnionFS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvraid" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvstor" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Acx01000" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\atapi" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NVHDA" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\i8042prt" /v "Start" /t REG_DWORD /d "4" /f
:: AMD useless drivers
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AmdK8" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdgpio2" /v "Start" /t REG_DWORD /d "4" /f
:: nvidia useless driver
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NVDisplay.ContainerLocalSystem" /v "Start" /t REG_DWORD /d "4" /f
:: normal services
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventLog" /v "Start" /t REG_DWORD /d "4" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "fvevol\0iorate" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msisadrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCardSvr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ScDeviceEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCPolicySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NaturalAuthentication" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DisplayEnhancementService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DispBrokerDesktopSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DmEnrollmentSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\embeddedmode" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VacSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthA2dp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthHFEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthLEEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthMini" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHMODEM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHPORT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTHUSB" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WFDSConMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wisvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SDRSVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\StiSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FrameServerMonitor" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WalletService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorDataService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UmRdpService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\P9RdrService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NPSMSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cloudidsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\swprv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicrdv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicvss" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmictimesync" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicvmsession" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicheartbeat" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicshutdown" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicguestinterface" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmickvpexchange" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EntAppSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wbengine" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AarSvc" /v "Start" /t REG_DWORD /d "4" /f
:: delete services
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\clr_optimization_v4.0.30319_64" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\clr_optimization_v4.0.30319_32" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\clr_optimization_v2.0.50727_64" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\clr_optimization_v2.0.50727_32" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MixedRealityOpenXRSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\perceptionsimulation" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedRealitySvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\spectrum" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SpatialGraphFilter" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PNRPAutoReg" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\p2psvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\p2pimsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PNRPsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PeerDistSvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "LocalServicePeerNet" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "P9RdrService" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "PeerDist" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "WerSvcGroup" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PerfProc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PerfOS" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\pla" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PerfNet" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PerfDisk" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PerfHost" /f
reg delete "HKLM\SOFTWARE\AMDLOG" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AMD External Events Utility" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\luafv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PktMon" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\diagnostics" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\wercplsupport" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\GraphicsPerfSvcGroup" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Psched" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\gencounter" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\FileInfo" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Filetrace" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\NDKPerf" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\NDKPing" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\storqosflt" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\NdisCap" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wercplsupport" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\InventorySvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "rdxgroup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "GraphicsPerfSvcGroup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "autoTimeSvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "NetworkServiceAndNoImpersonation" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\UevAgentDriver" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AppvStrm" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AppvVermgr" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AppvVfs" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AppVClient" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WpcMonSvc" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WacomPen" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\PenService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DusmSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\TermService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\RpcLocator" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WinRM" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\KtmRm" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\smphost" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BDESVC" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AxInstSV" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AJRouter" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Beep" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\CldFlt" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\dam" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\hvcrash" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\RetailDemo" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\CaptureService" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\BcastDVRUserService" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\InvSvcGroup" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\defragsvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "defragsvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "InvSvcGroup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost" /v "BcastDVRUserService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\ALG" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SmsRouter" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SessionEnv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wcncsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\fhsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WPDBusEnum" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\QWAVE" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\CscService" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MSiSCSI" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\QWAVEdrv" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WwanSvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\LMS" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bttflt" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MsKeyboardFilter" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\workfoldersvc" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\workfolderssvc" /f

:: Best Performance
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableLog" /t REG_SZ /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "DisableWerReporting" /t REG_DWORD /d "1" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\{55B3A0BD-4D28-42fe-8CFB-FA3EDFF969B8}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy" /v "AllowHeadlessExecution" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy" /v "AllowMultipleBackgroundTasks" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy" /v "InactivityTimeoutMs" /t REG_DWORD /d "4294967295" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Video\{DEB039CC-B704-4F53-B43E-9DD4432FA2E9}\0000" /v "PerfLevelSrc" /t REG_DWORD /d "13090" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Video\{DEB039CC-B704-4F53-B43E-9DD4432FA2E9}\0000" /v "PowerMizerEnable" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Video\{DEB039CC-B704-4F53-B43E-9DD4432FA2E9}\0000" /v "PowermizerLevel" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Video\{DEB039CC-B704-4F53-B43E-9DD4432FA2E9}\0000" /v "PowermizerLevelAC" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.DataTransfer.CloudClipboard" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Reliability Analysis\WMI" /v "WMIEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer" /v "DisableLoggingFromPackage" /t REG_DWORD /d "1" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\GlobalLogger" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\EventLog\ProtectedEventLogging" /v "EnableProtectedEventLogging" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost" /v "ETWLoggingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Tracing" /v "InstallInfoCheck" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Tracing" /v "ARPInfoCheck" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Tracing" /v "MediaInfoCheck" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Tracing" /v "FileInfoCheck" /t REG_DWORD /d "0" /f
for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Enabled"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Enabled" /t REG_DWORD /d 0 /f
for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Start"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Start" /t REG_DWORD /d "1" /f

:: Reset Firewall
reg delete "HKLM\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f 
reg add "HKLM\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f

:: Reset Image File Execution Options
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ApplicationFrameHost.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ApplicationFrameHost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ApplicationFrameHost.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "4" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe" /v "EAFModules" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csgo.exe" /v "EAFModules" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csgo.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csgo.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ctfmon.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\excel.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\excel.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v "MitigationAuditOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v "MitigationOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fontdrvhost.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\IDMan.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\IDMan.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\IDMan.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\NVDisplay.Container.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\OfficeClickToRun.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\OfficeClickToRun.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RuntimeBroker.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RuntimeBroker.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RuntimeBroker.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ShellExperienceHost.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Steam.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Steam.exe" /v "mpc-hc64.exe" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Steam.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Steam.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\steamwebhelper.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\steamwebhelper.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe" /v "MitigationAuditOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe" /v "MitigationOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winword.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winword.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe" /v "MaxLoaderThreads" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WmiPrvSE.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "1" /f

:: useless files
del /f /q /s "C:\Windows\System32\mcupdate_GenuineIntel.dll"
del /f /q /s "C:\Windows\System32\mcupdate_AuthenticAMD.dll"
del /f /q /s "C:\Windows\System32\mobsync.exe"
del /f /q /s "C:\Windows\SysWOW64\mobsync.exe"
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\GPExtensions\{4D2F9B6F-1E52-4711-A382-6A8B1A003DE6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\GPExtensions\{BA649533-0AAC-4E04-B9BC-4DBAE0325B12}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\GPExtensions\{C34B2751-1CF4-44F5-9262-C3FC39666591}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynAboutDataView" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynBusAttachment" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynBusObject" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynMessageInfo" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynServiceInfo" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynSession" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynStatus" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Devices.AllJoyn.AllJoynWatcherStoppedEventArgs" /f
reg delete "HKCR\WOW6432Node\CLSID\{1fb2a002-4c6c-4de7-85c2-cb8db9a4f728}" /f
reg delete "HKCR\WOW6432Node\CLSID\{7988B571-EC89-11cf-9C00-00AA00A14F56}" /f
reg delete "HKCR\WOW6432Node\CLSID\{7988B573-EC89-11cf-9C00-00AA00A14F56}" /f
reg delete "HKCR\CLSID\{1fb2a002-4c6c-4de7-85c2-cb8db9a4f728}" /f
reg delete "HKCR\CLSID\{7988B571-EC89-11cf-9C00-00AA00A14F56}" /f
reg delete "HKCR\CLSID\{7988B573-EC89-11cf-9C00-00AA00A14F56}" /f
reg delete "HKLM\SOFTWARE\Classes\Microsoft.DiskQuota" /f
reg delete "HKLM\SOFTWARE\Classes\Microsoft.DiskQuota.1" /f
reg delete "HKCR\CLSID\{AD182E17-4754-4742-8529-C11EEEF0C299}" /f
reg delete "HKCR\WOW6432Node\CLSID\{AD182E17-4754-4742-8529-C11EEEF0C299}" /f
reg delete "HKCR\CLSID\{BB0DB60E-FFA0-4756-9F04-A0FCE6A97809}" /f
reg delete "HKCR\CLSID\{BBD5AFE4-1417-40f7-94B3-A10719535CB4}" /f
reg delete "HKCR\CLSID\{4D728E35-16FA-4320-9E8B-BFD7100A8846}" /f
reg delete "HKCR\CLSID\{614C2902-8C8F-4D8F-90A2-FB9017B19FF9}" /f
reg delete "HKCR\CLSID\{6A5FEA5B-BF8F-4EE5-B8C3-44D8A0D7331C}" /f
reg delete "HKCR\CLSID\{A4F2A5C9-979A-4EC6-851F-341F15D3F67D}" /f
reg delete "HKCR\CLSID\{B164BCEE-41B3-4F70-A53C-2ACA322DCCCB}" /f
reg delete "HKCR\CLSID\{98859A6C-02F2-43FC-ADB0-CE6D10F1A1AA}" /f
reg delete "HKCR\CLSID\{C5388469-F816-40D2-9E6B-D6C68986996E}" /f
reg delete "HKCR\CLSID\{7AA809F6-C072-11DF-AC23-18A90531A85A}" /f
reg delete "HKCR\CLSID\{7AA809F7-C072-11DF-AC23-18A90531A85A}" /f
reg delete "HKCR\CLSID\{7AA809F8-C072-11DF-AC23-18A90531A85A}" /f
reg delete "HKCR\CLSID\{E49F7E50-C070-11DF-AC23-18A90531A85A}" /f
reg delete "HKCR\CLSID\{168F4281-EC0D-46D3-951D-FBCB2F7C9079}" /f
reg delete "HKCR\CLSID\{90511715-D0AD-4DAA-A18B-254BD3AE1CF2}" /f
reg delete "HKCR\CLSID\{A7AA4814-7479-4047-BC99-32E757C8B850}" /f
reg delete "HKCR\CLSID\{59C88A5A-702B-4DAB-9FBE-F53140BA899B}" /f
reg delete "HKCR\CLSID\{B5A123C0-3893-4F1C-8599-00F4B82F2C99}" /f
reg delete "HKCR\CLSID\{0F563B5F-8EE2-4516-BA0A-544DE058C75B}" /f
reg delete "HKCR\CLSID\{2F6CE85C-F9EE-43CA-90C7-8A9BD53A2467}" /f
reg delete "HKCR\CLSID\{F6B6E965-E9B2-444B-9286-10C9152EDBC5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{2F6CE85C-F9EE-43CA-90C7-8A9BD53A2467}" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{2F6CE85C-F9EE-43CA-90C7-8A9BD53A2467}" /f
reg delete "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{7EFA68C6-086B-43e1-A2D2-55A113531240}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.CscWorkOfflineOnline" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.CscSync" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FileHistory" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\TurnOffFileHistory" /v "value" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{0F563B5F-8EE2-4516-BA0A-544DE058C75B}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{2F6CE85C-F9EE-43CA-90C7-8A9BD53A2467}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{F6B6E965-E9B2-444B-9286-10C9152EDBC5}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{0F563B5F-8EE2-4516-BA0A-544DE058C75B}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{2F6CE85C-F9EE-43CA-90C7-8A9BD53A2467}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{F6B6E965-E9B2-444B-9286-10C9152EDBC5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{F6B6E965-E9B2-444B-9286-10C9152EDBC5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_41040327" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DeviceUpdateLocations" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.RibbonSync.WorkOfflineOnline" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.RibbonSync.SyncThisFolder" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.RibbonSync.MakeAvailableOffline" /f
reg delete "HKCR\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" /f
reg delete "HKCR\WOW6432Node\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{DEBF2536-E1A8-4c59-B6A2-414586476AEA}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{DEBF2536-E1A8-4c59-B6A2-414586476AEA}" /f
reg delete "HKCR\WOW6432Node\AppID\{cd93979b-c14e-4c29-87a4-75e4f9fa5e0a}" /f
reg delete "HKCR\AppID\{cd93979b-c14e-4c29-87a4-75e4f9fa5e0a}" /f
reg delete "HKCR\WOW6432Node\CLSID\{784BD832-A28C-409A-B440-DAC2028CFA5E}" /f
reg delete "HKCR\WOW6432Node\CLSID\{8ea134cb-1567-4f90-a6d0-7ecbb2ac3f85}" /f
reg delete "HKCR\WOW6432Node\CLSID\{c8367320-6f85-11e0-a1f0-0800200c9a66}" /f
reg delete "HKCR\WOW6432Node\CLSID\{0A56CD6C-B45A-4A6C-A88C-3F42AC7BCED4}" /f
reg delete "HKCR\CLSID\{784BD832-A28C-409A-B440-DAC2028CFA5E}" /f
reg delete "HKCR\CLSID\{8ea134cb-1567-4f90-a6d0-7ecbb2ac3f85}" /f
reg delete "HKCR\CLSID\{c8367320-6f85-11e0-a1f0-0800200c9a66}" /f
reg delete "HKCR\CLSID\{0A56CD6C-B45A-4A6C-A88C-3F42AC7BCED4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsUdk.Services.Iris.IrisService" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsUdk.Services.Iris.IrisCreativeResults" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsUdk.Services.Iris.IrisCreativeError" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsUdk.Services.Iris.IrisCreative" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsUdk.Services.Iris.IdentityProvider" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\NavPane\ShowLibraries" /f
reg delete "HKCR\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{2112AB0A-C86A-4ffe-A368-0DE96E47012E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{491E922F-5643-4af4-A7EB-4E7A138D8174}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7b0db17d-9cd2-4a93-9733-46cc89022e7c}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A302545D-DEFF-464b-ABE8-61C8648D939B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A990AE9F-A03B-4e80-94BC-9912D7504104}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{2B20DF75-1EDA-4039-8097-38798227D5B7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{E25B5812-BE88-4bd9-94B0-29233477B6C3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{2112AB0A-C86A-4ffe-A368-0DE96E47012E}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{2B20DF75-1EDA-4039-8097-38798227D5B7}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{491E922F-5643-4af4-A7EB-4E7A138D8174}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7b0db17d-9cd2-4a93-9733-46cc89022e7c}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A302545D-DEFF-464b-ABE8-61C8648D939B}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{A990AE9F-A03B-4e80-94BC-9912D7504104}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /f
reg delete "HKCR\CLSID\{eea0c191-dda8-4656-8fc4-72bdedba8a78}" /f
reg delete "HKCR\WOW6432Node\CLSID\{eea0c191-dda8-4656-8fc4-72bdedba8a78}" /f
reg delete "HKCR\WOW6432Node\CLSID\{0af96ede-aebf-41ed-a1c8-cf7a685505b6}" /f
reg delete "HKCR\WOW6432Node\CLSID\{a5a3563a-5755-4a6f-854e-afa3230b199f}" /f
reg delete "HKCR\WOW6432Node\CLSID\{C7CA6167-2F46-4C4C-98B2-C92591368971}" /f
reg delete "HKCR\WOW6432Node\CLSID\{f3cc4ca3-22c2-40ec-ac3c-89d8a43373b0}" /f
reg delete "HKCR\WOW6432Node\CLSID\{f8d1da80-9aea-4ca4-ba41-bee6fca037b1}" /f
reg delete "HKCR\WOW6432Node\CLSID\{fe5afcf2-e681-4ada-9703-ef39b8ecb9bf}" /f
reg delete "HKCR\CLSID\{0af96ede-aebf-41ed-a1c8-cf7a685505b6}" /f
reg delete "HKCR\CLSID\{a5a3563a-5755-4a6f-854e-afa3230b199f}" /f
reg delete "HKCR\CLSID\{C7CA6167-2F46-4C4C-98B2-C92591368971}" /f
reg delete "HKCR\CLSID\{f3cc4ca3-22c2-40ec-ac3c-89d8a43373b0}" /f
reg delete "HKCR\CLSID\{f8d1da80-9aea-4ca4-ba41-bee6fca037b1}" /f
reg delete "HKCR\CLSID\{fe5afcf2-e681-4ada-9703-ef39b8ecb9bf}" /f
reg delete "HKCR\CLSID\{8cec58e7-07a1-11d9-b15e-000d56bfe6ee}" /f
reg delete "HKCR\WOW6432Node\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UsersLibraries" /f
reg delete "HKCR\LibraryLocation" /f
reg delete "HKCR\UserLibraryFolder" /f
reg delete "HKCR\LibraryFolder" /f
reg delete "HKCR\.library-ms" /f
reg delete "HKCR\CLSID\{3dad6c5d-2167-4cae-9914-f99e41c12cfa}" /f
reg delete "HKCR\WOW6432Node\CLSID\{3dad6c5d-2167-4cae-9914-f99e41c12cfa}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{fbb3477e-c9e4-4b3b-a2ba-d3f5d3cd46f9}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{C4D98F09-6124-4fe0-9942-826416082DA9}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{978e0ed7-92d6-4cec-9b59-3135b9c49ccf}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{da3f6866-35fe-4229-821a-26553a67fc18}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{c1f8339f-f312-4c97-b1c6-ecdf5910c5c0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{0b2baaeb-0042-4dca-aa4d-3ee8648d03e5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{3f98a740-839c-4af7-8c36-5badfb33d5fd}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{654a1b99-8a4b-4e7b-a4e1-46378ad77a61}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{631958a6-ad0f-4035-a745-28ac066dc6ed}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{524ddb2b-2a4f-43b8-b8fe-e91ef9d8ba69}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{5f4eab9a-6833-4f61-899d-31cf46979d49}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{3f2a72a7-99fa-4ddb-a5a8-c604edf61d6b}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{292108be-88ab-4f33-9a26-7748e62e37ad}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{48daf80b-e6cf-4f4e-b800-0e69d84ee384}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{48daf80b-e6cf-4f4e-b800-0e69d84ee384}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{1A6FDBA2-F42D-4358-A798-B74D745926C5}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{1A6FDBA2-F42D-4358-A798-B74D745926C5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PropertySystem\SystemPropertyHandlers" /v ".library-ms" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\PropertySystem\SystemPropertyHandlers" /v ".library-ms" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryChangeIcon" /f
reg delete "HKCR\CLSID\{6aa17c06-0c75-4006-81a9-57927e77ae87}" /f
reg delete "HKCR\CLSID\WOW6432Node\{6aa17c06-0c75-4006-81a9-57927e77ae87}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryChangeIcon" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryDefaultSaveLocation" /f
reg delete "HKCR\CLSID\{17f418ed-5cd0-4067-be51-4c96d386ebc1}" /f
reg delete "HKCR\CLSID\WOW6432Node\{17f418ed-5cd0-4067-be51-4c96d386ebc1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryIncludeInLibrary" /f
reg delete "HKCR\CLSID\{83472593-4fe6-4f44-a14c-fc8d4b4ff3f5}" /f
reg delete "HKCR\CLSID\WOW6432Node\{83472593-4fe6-4f44-a14c-fc8d4b4ff3f5}" /f
reg delete "HKCR\CLSID\{69a568cf-86d1-4e47-b1fc-a74a110583fb" /f
reg delete "HKCR\CLSID\WOW6432Node\{69a568cf-86d1-4e47-b1fc-a74a110583fb" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryOptimizeLibraryFor" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryOptimizeLibraryFor" /f
reg delete "HKCR\WOW6432Node\CLSID\{9e752621-4573-4308-81c6-9f210db29e85}" /f
reg delete "HKCR\CLSID\{9e752621-4573-4308-81c6-9f210db29e85}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryRestoreDefaults" /f
reg delete "HKCR\CLSID\{9a07804e-7050-41d5-a244-badc038df532}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryRestoreDefaults" /f
reg delete "HKCR\CLSID\{ca3f639a-dc5a-4510-b054-b49fc915fccc}" /f
reg delete "HKCR\WOW6432Node\CLSID\{ca3f639a-dc5a-4510-b054-b49fc915fccc}" /f
reg delete "HKCR\WOW6432Node\CLSID\{9a07804e-7050-41d5-a244-badc038df532}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryShowInNavPane" /f
reg delete "HKCR\CLSID\{a5215b41-4b3b-4bc6-a8da-6509b7e1b861}" /f
reg delete "HKCR\WOW6432Node\CLSID\{a5215b41-4b3b-4bc6-a8da-6509b7e1b861}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryPublicSaveLocation" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryManageLibrary" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelShowInNavPane" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelRestoreDefaults" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelOptimizeLibraryFor" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelChangeIcon" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.NavPaneShowLibraries" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelManageLibrary" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelDefaultSaveLocation" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelPublicSaveLocation" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.includeinlibrary" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryDefaultSaveLocation" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryIncludeInLibrary" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.includeinlibrary" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryManageLibrary" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryPublicSaveLocation" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelChangeIcon" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelDefaultSaveLocation" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelManageLibrary" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelOptimizeLibraryFor" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelPublicSaveLocation" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelRestoreDefaults" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibrarySelShowInNavPane" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.LibraryShowInNavPane" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.NavPaneShowLibraries" /f
reg delete "HKCR\ms-meetnow" /f
reg delete "HKCR\ms-meetnowflyout" /f
reg delete "HKCU\Software\Classes\ms-meetnow" /f
reg delete "HKCU\Software\Classes\ms-meetnowflyout" /f
reg delete "HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\ms-meetnowflyout" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-meetnowflyout" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-meetnowflyout" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\JumpViewUI.TaskbarMeetNowFrame" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\JumpViewUI.TaskbarMeetNow2Frame" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Microsoft.MicrosoftEdge.ContentProcessComponent" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.FamilySafety.AppTimeLimits" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.InverseBooleanConverter" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.JumplistItemControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarContainer.App" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarContainer.MainPage" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarContainer.peoplebarcontainer_XamlTypeInfo.XamlMetaDataProvider" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarFlyout.App" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarFlyout.FlyoutViewModel" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarFlyout.MainPage" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarFlyout.peoplebarflyout_XamlTypeInfo.XamlMetaDataProvider" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarFlyout.PersonContextMenuControlMenuFlyoutItemHost" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarJumpView.App" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarJumpView.peoplebarjumpview_XamlTypeInfo.XamlMetaDataProvider" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarJumpView.PeopleBarJumpViewPage" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleBarJumpView.PeopleBarJumpViewViewModel" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Models.ComponentModel" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Models.PeopleModel" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Models.PersonModel" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Notification.PeopleBarNotificationHandler" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.PeopleBarDragEventArgs" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.ShoulderTapUpdateNotifier" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.ViewModels.PeopleListViewModel" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.ViewModels.PersonItemViewModel" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Views.BadgedPersonPicture" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Views.FlyoutButtonControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Views.PeopleBarControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Views.PeopleListControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Views.PersonContextMenuControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Views.PersonItemControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.PeopleBar.Views.TaskbarRunnableControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.peoplecommoncontrols_XamlTypeInfo.XamlMetaDataProvider" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeopleCommonControls.UnifiedTileModelFactory" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.App" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.EmailPickerControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.EmailPromptControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.ErrorDialog" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.MainPageCollapsed" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.MainPageExpanded" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.MainPageShare" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.peoplepane_XamlTypeInfo.XamlMetaDataProvider" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\PeoplePane.Style" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.BooleanToObjectConverter" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.ButtonControlContent" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.ContactListView" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.GalResultsControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.HighlightedTextBlock" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.peoplepicker_control_XamlTypeInfo.XamlMetaDataProvider" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.PeoplePickerControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.QueryPromptControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.PeoplePicker.SuggestionControl" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.Relevance.Helper.RelevanceHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.Relevance.LoggerInfo" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.Relevance.QueryClient.LoggerInfo" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.Relevance.QueryClient.RelevanceServiceQuery" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.Relevance.QueryClient.RelevanceServiceQueryParameters" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.People.Relevance.RelevanceQuery" /f
reg delete "HKCR\WOW6432Node\AppID\{03837503-098b-11d8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{f4be747e-45c4-4701-90f1-d49d9ac30248}" /f
reg delete "HKCR\WOW6432Node\CLSID\{f4be747e-45c4-4701-90f1-d49d9ac30248}" /f
reg delete "HKCR\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}" /f
reg delete "HKCR\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_36354489" /f
reg delete "HKCR\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" /f
reg delete "HKCR\WOW6432Node\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{323CA680-C24D-4099-B94D-446DD2D7249E}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{323CA680-C24D-4099-B94D-446DD2D7249E}" /f
reg delete "HKCR\AllFilesystemObjects\shell\pintohome" /f
reg delete "HKCR\Drive\shell\pintohome" /f
reg delete "HKCR\Folder\shell\pintohome" /f
reg delete "HKCR\Network\shell\pintohome" /f
reg delete "HKCR\*\shell\pintohomefile" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\BannerStore" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BannerStore" /f
reg delete "HKLM\SOFTWARE\Classes\HomePage.HomePage" /f
reg delete "HKLM\SOFTWARE\Classes\HomePage.HomePage.1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderMobile" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderMSGraph" /f
reg delete "HKLM\SOFTWARE\Microsoft\Tracing" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartPage" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "HubMode" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.PinToHome" /f
reg delete "HKCR\CLSID\{70438d09-456a-4a6f-86fe-1c1a3afc699e}" /f
reg delete "HKLM\WOW6432Node\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.PinToHome" /f
reg delete "HKCR\WOW6432Node\CLSID\{70438d09-456a-4a6f-86fe-1c1a3afc699e}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.PinToHome" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.AddToFavorites" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.Troubleshoot" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonWord" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonVideos" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonPowerPoint" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonPDF" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonImages" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonExcel" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonAllFileTypes" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonExcel" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonImages" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonPDF" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonPowerPoint" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonVideos" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonWord" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.FilterButtonAllFileTypes" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BrowseNewProcess" /v "BrowseNewProcess" /t REG_SZ /d "no" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\BrowseNewProcess" /v "BrowseNewProcess" /t REG_SZ /d "no" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{24ccb8a6-c45a-477d-b940-3382b9225668}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{43FED747-B357-468E-AE70-EE0CB0F46508}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{C45B8BA0-0635-40EF-9661-1C1300669F7B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.AddToFavorites" /f
reg delete "HKCR\MSGraphDocument_38664959" /f
reg delete "HKCR\MSGraphDocument" /f
reg delete "HKCR\MSGraphRecentDocument" /f
reg delete "HKCR\PinnedFrequentPlace" /f
reg delete "HKCR\PinnedRecentDocument" /f
reg delete "HKCR\RecentDocument" /f
reg delete "HKCR\RecommendationsFile" /f
reg delete "HKCR\WOW6432Node\CLSID\{241D7C96-F8BF-4F85-B01F-E2B043341A4B}" /f
reg delete "HKCR\WOW6432Node\CLSID\{BB002029-DC5F-45FC-A8D9-A6BE23A748AB}" /f
reg delete "HKCR\CLSID\{241D7C96-F8BF-4F85-B01F-E2B043341A4B}" /f
reg delete "HKCR\CLSID\{BB002029-DC5F-45FC-A8D9-A6BE23A748AB}" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\RetailDemo" /f
reg delete "HKCR\AppXjj5q94522tr3azgc4pv1grpyk9t831ve" /f
reg delete "HKCR\AppID\{ac793c1d-eb2f-4ffd-b1ec-7af1aaaf3325}" /f
reg delete "HKCR\AppID\{C2EA2356-994C-45AF-BDAE-10796F73BC47}" /f
reg delete "HKCR\CLSID\{1e46246f-b2ad-4a86-9e08-d0f9e01ee05d}" /f
reg delete "HKCR\CLSID\{61f77d5e-afe9-400b-a5e6-e9e80fc8e601}" /f
reg delete "HKCR\CLSID\{94FBC195-CB86-4142-9A6A-8E9CCF0D4F4D}" /f
reg delete "HKCR\CLSID\{a6e02196-c1bf-4989-8a94-144eee4a9bb2}" /f
reg delete "HKCR\CLSID\{FB046C65-10C7-4994-ABE4-E3F7FD710B2E}" /f
reg delete "HKCR\Interface\{15D8726E-26CE-495A-817E-3AD7B022FCFA}" /f
reg delete "HKCR\Interface\{1FD12909-E6DD-4983-A4C6-50B395961110}" /f
reg delete "HKCR\Interface\{8ba5a5ed-e0c5-4ce6-a1e8-9263e099746f}" /f
reg delete "HKCR\Interface\{faedbd4d-20b6-43a9-b67c-577127c8d12b}" /f
reg delete "HKCR\ms-retaildemo-launchbioenrollment" /f
reg delete "HKCR\ms-retaildemo-launchstart" /f
reg delete "HKCR\WOW6432Node\AppID\{ac793c1d-eb2f-4ffd-b1ec-7af1aaaf3325}" /f
reg delete "HKCR\WOW6432Node\AppID\{C2EA2356-994C-45AF-BDAE-10796F73BC47}" /f
reg delete "HKCR\WOW6432Node\CLSID\{FB046C65-10C7-4994-ABE4-E3F7FD710B2E}" /f
reg delete "HKCR\WOW6432Node\Interface\{15D8726E-26CE-495A-817E-3AD7B022FCFA}" /f
reg delete "HKCR\WOW6432Node\Interface\{1FD12909-E6DD-4983-A4C6-50B395961110}" /f
reg delete "HKCR\WOW6432Node\Interface\{8ba5a5ed-e0c5-4ce6-a1e8-9263e099746f}" /f
reg delete "HKCR\WOW6432Node\Interface\{faedbd4d-20b6-43a9-b67c-577127c8d12b}" /f
reg delete "HKLM\SOFTWARE\Classes\AppID\{ac793c1d-eb2f-4ffd-b1ec-7af1aaaf3325}" /f
reg delete "HKLM\SOFTWARE\Classes\AppID\{C2EA2356-994C-45AF-BDAE-10796F73BC47}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{1e46246f-b2ad-4a86-9e08-d0f9e01ee05d}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{61f77d5e-afe9-400b-a5e6-e9e80fc8e601}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{94FBC195-CB86-4142-9A6A-8E9CCF0D4F4D}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{a6e02196-c1bf-4989-8a94-144eee4a9bb2}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{FB046C65-10C7-4994-ABE4-E3F7FD710B2E}" /f
reg delete "HKLM\SOFTWARE\Classes\Interface\{15D8726E-26CE-495A-817E-3AD7B022FCFA}" /f
reg delete "HKLM\SOFTWARE\Classes\Interface\{1FD12909-E6DD-4983-A4C6-50B395961110}" /f
reg delete "HKLM\SOFTWARE\Classes\Interface\{8ba5a5ed-e0c5-4ce6-a1e8-9263e099746f}" /f
reg delete "HKLM\SOFTWARE\Classes\Interface\{faedbd4d-20b6-43a9-b67c-577127c8d12b}" /f
reg delete "HKLM\SOFTWARE\Classes\ms-retaildemo-launchstart" /f
reg delete "HKLM\SOFTWARE\Classes\ms-retaildemo-launchbioenrollment" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\AppID\{ac793c1d-eb2f-4ffd-b1ec-7af1aaaf3325}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\AppID\{C2EA2356-994C-45AF-BDAE-10796F73BC47}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{FB046C65-10C7-4994-ABE4-E3F7FD710B2E}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\Interface\{15D8726E-26CE-495A-817E-3AD7B022FCFA}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\Interface\{1FD12909-E6DD-4983-A4C6-50B395961110}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\Interface\{8ba5a5ed-e0c5-4ce6-a1e8-9263e099746f}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\Interface\{faedbd4d-20b6-43a9-b67c-577127c8d12b}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Internet Explorer\ProtocolExecute\ms-retaildemo-launchbioenrollment" /f
reg delete "HKLM\SOFTWARE\Microsoft\Internet Explorer\ProtocolExecute\ms-retaildemo-launchstart" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{12D4C69E-24AD-4923-BE19-31321C43A767}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\RetailDemo Offline Content" /f
reg delete "HKCR\CLSID\{0886dae5-13ba-49d6-a6ef-d0922e502d96}" /f
reg delete "HKCR\WOW6432Node\CLSID\{0886dae5-13ba-49d6-a6ef-d0922e502d96}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\RetailDemo.Internal.RetailDemoSetup" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\RetailDemo.Internal.RetailInfoSetter" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\RetailDemo.Internal.WindowsHelloHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\CloudExperienceHostBroker.RetailDemo.ConfigureRetailDemo" /f
reg delete "HKCR\WOW6432Node\CLSID\{119b14a0-eb11-40c7-9a3c-e6a8904827d2}" /f
reg delete "HKCR\WOW6432Node\CLSID\{1a9ca6d5-2488-46b1-b439-218f2314a059}" /f
reg delete "HKCR\WOW6432Node\CLSID\{A5890610-900C-4115-BAFF-767E05E10F1F}" /f
reg delete "HKCR\WOW6432Node\CLSID\{CD607C8B-17CA-4D2E-BA26-B748553BB0B2}" /f
reg delete "HKCR\WOW6432Node\CLSID\{DE8DEA9C-CC35-4A6E-8A17-F0C611F249A4}" /f
reg delete "HKCR\WOW6432Node\CLSID\{EBB236B1-F57F-480D-9DE9-B15A87298EEC}" /f
reg delete "HKCR\WOW6432Node\AppID\{0886dae5-13ba-49d6-a6ef-d0922e502d96}" /f
reg delete "HKCR\CLSID\{119b14a0-eb11-40c7-9a3c-e6a8904827d2}" /f
reg delete "HKCR\CLSID\{1a9ca6d5-2488-46b1-b439-218f2314a059}" /f
reg delete "HKCR\CLSID\{A5890610-900C-4115-BAFF-767E05E10F1F}" /f
reg delete "HKCR\CLSID\{CD607C8B-17CA-4D2E-BA26-B748553BB0B2}" /f
reg delete "HKCR\CLSID\{DE8DEA9C-CC35-4A6E-8A17-F0C611F249A4}" /f
reg delete "HKCR\CLSID\{EBB236B1-F57F-480D-9DE9-B15A87298EEC}" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\UEV\Agent" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WorkFolders" /v "AutoProvision" /t REG_DWORD /d "0" /f
reg delete "HKCR\AllSyncRootObjects" /f
reg delete "HKCR\AppID\{1580B7BE-BAC5-42F8-960B-1ED59D905A46}" /f
reg delete "HKCR\AppID\CloudSyncExt" /f
reg delete "HKCR\CloudSyncCom.CloudSyncApp" /f
reg delete "HKCR\CloudSyncCom.CloudSyncApp.1" /f
reg delete "HKCR\CLSID\{4C6470A6-3F91-4f41-850B-DB9BCD074537}" /f
reg delete "HKCR\CLSID\{5914e885-9394-4baf-9cd9-71f57e4f6c90}" /f
reg delete "HKCR\CLSID\{C8059EB6-D2FC-4ecf-A15F-AF427F5E4DB6}" /f
reg delete "HKCR\AppID\{1202DB60-1DAC-42C5-AED5-1ABDD432248E}" /f
reg delete "HKCR\AppID\{69F9CB25-25E2-4BE1-AB8F-07AA7CB535E8}" /f
reg delete "HKCR\AppID\{8D8B8E30-C451-421B-8553-D2976AFA648C}" /f
reg delete "HKCR\AppID\{1A1F4206-0688-4E7F-BE03-D82EC69DF9A5}" /f
reg delete "HKCR\AppID\{6295DF2D-35EE-11D1-8707-00C04FD93327}" /f
reg delete "HKCR\AppID\{B8558612-DF5E-4F95-BB81-8E910B327FB2}" /f
reg delete "HKCR\CLSID\{0CA2640D-5B9C-4c59-A5FB-2DA61A7437CF}" /f
reg delete "HKCR\CLSID\{10d62541-90d0-42fe-848c-0dbc1ac42eda}" /f
reg delete "HKCR\CLSID\{0A30F902-8398-4ee8-86F7-4CFB589F04D1}" /f
reg delete "HKCR\CLSID\{1202DB60-1DAC-42C5-AED5-1ABDD432248E}" /f
reg delete "HKCR\CLSID\{0C11C759-23B0-4731-8D48-5FE3EA62051F}" /f
reg delete "HKCR\AppID\{C947D50F-378E-4FF6-8835-FCB50305244D}" /f
reg delete "HKCR\CLSID\{1A1F4206-0688-4E7F-BE03-D82EC69DF9A5}" /f
reg delete "HKCR\AppID\{D63AA156-D534-4BAC-9BF1-55359CF5EC30}" /f
reg delete "HKCR\AppID\{EEABD3A3-784D-4334-AAFC-BB13234F17CF}" /f
reg delete "HKCR\CLSID\{297EE78C-BA95-4E94-81D3-D6E7F089C7B5}" /f
reg delete "HKCR\CLSID\{31b231f6-546d-4f9b-ac95-0f963d72559c}" /f
reg delete "HKCR\CLSID\{370BF38C-0451-42e8-9B03-0CAFA95081B6}" /f
reg delete "HKCR\CLSID\{51CAFEF2-C040-4022-A152-53033EE9A02B}" /f
reg delete "HKCR\CLSID\{96AC7453-0B2A-451e-9A1A-203CA034AF96}" /f
reg delete "HKCR\CLSID\{9aa46009-3ce0-458a-a354-715610a075e6}" /f
reg delete "HKCR\CLSID\{B8558612-DF5E-4F95-BB81-8E910B327FB2}" /f
reg delete "HKCR\WOW6432Node\CLSID\{289978AC-A101-4341-A817-21EBA7FD046D}" /f
reg delete "HKCR\WOW6432Node\CLSID\{2E9E59C0-B437-4981-A647-9C34B9B90891}" /f
reg delete "HKCR\WOW6432Node\CLSID\{4B534112-3AF6-4697-A77C-D62CE9B9E7CF}" /f
reg delete "HKCR\WOW6432Node\CLSID\{3734FF83-6764-44B7-A1B9-55F56183CDB0}" /f
reg delete "HKCR\WOW6432Node\CLSID\{576C9E85-1300-4EF5-BF6B-D00509F4EDCD}" /f
reg delete "HKCR\WOW6432Node\CLSID\{6295DF27-35EE-11D1-8707-00C04FD93327}" /f
reg delete "HKCR\WOW6432Node\CLSID\{71D99464-3B6B-475C-B241-E15883207529}" /f
reg delete "HKCR\WOW6432Node\CLSID\{7A0F6AB7-ED84-46B6-B47E-02AA159A152B}" /f
reg delete "HKCR\WOW6432Node\CLSID\{9C73F5E5-7AE7-4E32-A8E8-8D23B85255BF}" /f
reg delete "HKCR\WOW6432Node\CLSID\{B32D3949-ED98-4DBB-B347-17A144969BBA}" /f
reg delete "HKCR\WOW6432Node\CLSID\{BC48B32F-5910-47F5-8570-5074A8A5636A}" /f
reg delete "HKCR\WOW6432Node\CLSID\{D63AA156-D534-4BAC-9BF1-55359CF5EC30}" /f
reg delete "HKCR\WOW6432Node\CLSID\{E413D040-6788-4C22-957E-175D1C513A34}" /f
reg delete "HKCR\WOW6432Node\CLSID\{F04CC277-03A2-4277-96A9-77967471BDFF}" /f
reg delete "HKCR\WOW6432Node\CLSID\{F1390A9A-A3F4-4E5D-9C5F-98F3BD8D935C}" /f
reg delete "HKCR\WOW6432Node\CLSID\{F20487CC-FC04-4B1E-863F-D9801796130B}" /f
reg delete "HKCR\CLSID\{8D8B8E30-C451-421B-8553-D2976AFA648C}" /f
reg delete "HKCR\CLSID\{69F9CB25-25E2-4BE1-AB8F-07AA7CB535E8}" /f
reg delete "HKCR\CLSID\{69375D35-B310-40fd-A7DC-9548E1DBC3B5}" /f
reg delete "HKCR\CLSID\{5A8A3AAB-D614-46B9-B814-18D168A4B838}" /f
reg delete "HKCR\CLSID\{5A8A3AAC-D614-46B9-B814-18D168A4B838}" /f
reg delete "HKCR\CLSID\{6295DF2D-35EE-11D1-8707-00C04FD93327}" /f
reg delete "HKCR\CLSID\{6BC752F7-9721-49F8-873B-9FECB6215DE3}" /f
reg delete "HKCR\CLSID\{750fdf10-2a26-11d1-a3ea-080036587f03}" /f
reg delete "HKCR\CLSID\{815509B5-2940-4287-83DD-13EA06E181DD}" /f
reg delete "HKCR\Local Settings\ImmutableMuiCache\Strings\52C64B7E" /v "@%%SystemRoot%%\System32\SyncCenter.dll,-3000#immutable1" /f
reg delete "HKCR\Local Settings\ImmutableMuiCache\Strings\52C64B7E" /v "@C:\WINDOWS\System32\SyncCenter.dll,-3000#immutable1" /f
reg delete "HKCR\Local Settings\ImmutableMuiCache\Strings\52C64B7E" /v "@C:\WINDOWS\System32\SyncCenter.dll,-3001#immutable1" /f
reg add "HKCR\Local Settings\ImmutableMuiCache\Strings\52C64B7E" /f
reg delete "HKCR\Local Settings\MuiCache\10\52C64B7E" /v "@SyncCenter.dll,-6315" /f
reg delete "HKCR\Local Settings\MuiCache\10\52C64B7E" /v "@SyncCenter.dll,-6320" /f
reg delete "HKCR\Local Settings\MuiCache\10\52C64B7E" /v "@SyncCenter.dll,-6325" /f
reg delete "HKCR\Local Settings\MuiCache\10\52C64B7E" /v "@SyncCenter.dll,-6350" /f
reg delete "HKCR\Local Settings\MuiCache\10\52C64B7E" /v "@SyncCenter.dll,-6355" /f
reg delete "HKCR\Local Settings\MuiCache\10\52C64B7E" /v "@SyncCenter.dll,-6395" /f
reg delete "HKCR\Local Settings\MuiCache\10\52C64B7E" /v "@SyncCenter.dll,-6405" /f
reg add "HKCR\Local Settings\MuiCache\10\52C64B7E" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{289978AC-A101-4341-A817-21EBA7FD046D}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{2E9E59C0-B437-4981-A647-9C34B9B90891}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{4B534112-3AF6-4697-A77C-D62CE9B9E7CF}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{3734FF83-6764-44B7-A1B9-55F56183CDB0}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{576C9E85-1300-4EF5-BF6B-D00509F4EDCD}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{6295DF27-35EE-11D1-8707-00C04FD93327}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{71D99464-3B6B-475C-B241-E15883207529}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{7A0F6AB7-ED84-46B6-B47E-02AA159A152B}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{9C73F5E5-7AE7-4E32-A8E8-8D23B85255BF}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{B32D3949-ED98-4DBB-B347-17A144969BBA}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{BC48B32F-5910-47F5-8570-5074A8A5636A}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{D63AA156-D534-4BAC-9BF1-55359CF5EC30}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{E413D040-6788-4C22-957E-175D1C513A34}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{F04CC277-03A2-4277-96A9-77967471BDFF}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{F1390A9A-A3F4-4E5D-9C5F-98F3BD8D935C}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{F20487CC-FC04-4B1E-863F-D9801796130B}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{289978AC-A101-4341-A817-21EBA7FD046D}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{2E9E59C0-B437-4981-A647-9C34B9B90891}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{4B534112-3AF6-4697-A77C-D62CE9B9E7CF}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{3734FF83-6764-44B7-A1B9-55F56183CDB0}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{576C9E85-1300-4EF5-BF6B-D00509F4EDCD}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{6295DF27-35EE-11D1-8707-00C04FD93327}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{71D99464-3B6B-475C-B241-E15883207529}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{7A0F6AB7-ED84-46B6-B47E-02AA159A152B}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{9C73F5E5-7AE7-4E32-A8E8-8D23B85255BF}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{B32D3949-ED98-4DBB-B347-17A144969BBA}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{BC48B32F-5910-47F5-8570-5074A8A5636A}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{D63AA156-D534-4BAC-9BF1-55359CF5EC30}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{E413D040-6788-4C22-957E-175D1C513A34}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{F04CC277-03A2-4277-96A9-77967471BDFF}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{F1390A9A-A3F4-4E5D-9C5F-98F3BD8D935C}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{F20487CC-FC04-4B1E-863F-D9801796130B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{43668BF8-C14E-49B2-97C9-747784D784B7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{289A9A43-BE44-4057-A41B-587A76D7E7F9}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileNotification\SyncCenter" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Syncmgr" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{43668BF8-C14E-49B2-97C9-747784D784B7}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\ProfileNotification\SyncCenter" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OpenContainingFolderHiddenList" /v "Microsoft Outlook" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OpenContainingFolderHiddenList" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OSSyncStatusProviders" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SyncRootManager" /f
reg delete "HKCR\CLSID\{289978AC-A101-4341-A817-21EBA7FD046D}" /f
reg delete "HKCR\CLSID\{2E9E59C0-B437-4981-A647-9C34B9B90891}" /f
reg delete "HKCR\CLSID\{3734FF83-6764-44B7-A1B9-55F56183CDB0}" /f
reg delete "HKCR\CLSID\{4B534112-3AF6-4697-A77C-D62CE9B9E7CF}" /f
reg delete "HKCR\CLSID\{576C9E85-1300-4EF5-BF6B-D00509F4EDCD}" /f
reg delete "HKCR\CLSID\{6295DF27-35EE-11D1-8707-00C04FD93327}" /f
reg delete "HKCR\CLSID\{71D99464-3B6B-475C-B241-E15883207529}" /f
reg delete "HKCR\CLSID\{7A0F6AB7-ED84-46B6-B47E-02AA159A152B}" /f
reg delete "HKCR\CLSID\{9C73F5E5-7AE7-4E32-A8E8-8D23B85255BF}" /f
reg delete "HKCR\CLSID\{B32D3949-ED98-4DBB-B347-17A144969BBA}" /f
reg delete "HKCR\CLSID\{BC48B32F-5910-47F5-8570-5074A8A5636A}" /f
reg delete "HKCR\CLSID\{D63AA156-D534-4BAC-9BF1-55359CF5EC30}" /f
reg delete "HKCR\CLSID\{E413D040-6788-4C22-957E-175D1C513A34}" /f
reg delete "HKCR\CLSID\{F04CC277-03A2-4277-96A9-77967471BDFF}" /f
reg delete "HKCR\CLSID\{F1390A9A-A3F4-4E5D-9C5F-98F3BD8D935C}" /f
reg delete "HKCR\CLSID\{F20487CC-FC04-4B1E-863F-D9801796130B}" /f
reg delete "HKCR\AllFileSystemObjects\shell\OfflineFilesLaunchSyncCenter" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\Offline Files" /f
reg delete "HKCR\Folder\ShellEx\ContextMenuHandlers\Offline Files" /f
reg delete "HKCR\CLSID\{09017262-fdb4-4ff2-9013-26332c926ee7}" /f
reg delete "HKCR\WOW6432Node\CLSID\{09017262-fdb4-4ff2-9013-26332c926ee7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\cleanuppath" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivitySource" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivitySessionInfo" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivityRequestForTab" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivityPayload" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivityMonitor" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivityHistoryPayload" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivityChannelInternal" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivityBroker" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.UserActivityAppId" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.Internal.UserActivities.BrokeredUserActivityBroker" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.System.Diagnostics.Telemetry.PlatformTelemetryClient" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationSettings" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActions" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.System.Power.Diagnostics.ForegroundEnergyDiagnostics" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.System.Power.Diagnostics.BackgroundEnergyDiagnostics" /f
reg delete "HKCR\AppUserModelId\Windows.SystemToast.Compat" /f
reg delete "HKCR\AppXbemgape21yns3k5pd4ah40jz06yq6xrk" /f
reg delete "HKCR\AppXpzkxgsbx9mzsg8kedsrg63eqxykxrtcx" /f
reg delete "HKCR\CLSID\{767E6811-49CB-4273-87C2-20F355E1085B}" /f
reg delete "HKCR\WOW6432Node\CLSID\{767E6811-49CB-4273-87C2-20F355E1085B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{767E6811-49CB-4273-87C2-20F355E1085B}" /f
reg delete "HKCR\AppXkndb5xvk0v1ka1efnjajnamxcd3sfae1" /f
reg delete "HKCR\ms-desktopsearchbox" /f
reg delete "HKCR\ms-stickereditor" /f
reg delete "HKCR\AppXy37j8m4r12mkyg6recvrn8r32ean0kjm" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppXy37j8m4r12mkyg6recvrn8r32ean0kjm" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppXkndb5xvk0v1ka1efnjajnamxcd3sfae1" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppXy37j8m4r12mkyg6recvrn8r32ean0kjm" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppXkndb5xvk0v1ka1efnjajnamxcd3sfae1" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-desktopsearchbox" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-stickereditor" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-desktopsearchbox" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-stickereditor" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Protocol\Data\17" /f
reg delete "HKCR\DesktopBackground\Shell\EditStickers" /f
reg delete "HKCR\DesktopBackground\Shell\ShowDesktopSearch" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{5CE4A5E9-E4EB-479D-B89F-130C02886155}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{5CE4A5E9-E4EB-479D-B89F-130C02886155}" /f
reg delete "HKCR\CLSID\{1677ABA1-4346-442F-A74A-D8B9A713B964}" /f
reg delete "HKCR\WOW6432Node\CLSID\{1677ABA1-4346-442F-A74A-D8B9A713B964}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{1677ABA1-4346-442F-A74A-D8B9A713B964}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{1677ABA1-4346-442F-A74A-D8B9A713B964}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Graphics.Capture.Direct3D11CaptureFramePool" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Graphics.Capture.GraphicsCaptureAccess" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Graphics.Capture.GraphicsCaptureItem" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Graphics.Capture.GraphicsCapturePicker" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Graphics.Capture.GraphicsCaptureSession" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Graphics.Capture.Server.CapturableItem" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Graphics.Capture.Server.CaptureServerAccess" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Graphics.Capture.Server.CaptureSession" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\Server\BcastDVRUserService" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\Server\CaptureService" /f
reg delete "HKCR\CLSID\{053C9CB8-5BA1-4F47-A6F1-D1D748C7DA93}" /f
reg delete "HKCR\WOW6432Node\CLSID\{053C9CB8-5BA1-4F47-A6F1-D1D748C7DA93}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{053C9CB8-5BA1-4F47-A6F1-D1D748C7DA93}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{053C9CB8-5BA1-4F47-A6F1-D1D748C7DA93}" /f
reg delete "HKCR\WOW6432Node\AppID\{2C256447-3F0D-4CBB-9D12-575BB20CDA0A}" /f
reg delete "HKCR\WOW6432Node\AppID\{4BC67F23-D805-4384-BCA3-6F1EDFF50E2C}" /f
reg delete "HKCR\AppID\{2C256447-3F0D-4CBB-9D12-575BB20CDA0A}" /f
reg delete "HKCR\AppID\{4BC67F23-D805-4384-BCA3-6F1EDFF50E2C}" /f
reg delete "HKCR\AppID\{B34F88D1-F26B-42D5-8DD5-A442303A05D7}" /f
reg delete "HKCR\AppUserModelId\Microsoft.Windows.ParentalControls" /f
reg delete "HKCR\CLSID\{1050489C-0702-493F-94AB-58A9C5BE620C}" /f
reg delete "HKCR\CLSID\{38fbe75f-57ac-4c15-8988-7c5284c51508}" /f
reg delete "HKCR\CLSID\{B3AADFEA-8404-4CBE-A62E-B0B715412C9E}" /f
reg delete "HKCR\CLSID\{C844C79D-AED8-4DCE-AB25-4D359BED84F8}" /f
reg delete "HKCR\CLSID\{DD783C90-F9A6-41D5-A635-DA5DBBB87D75}" /f
reg delete "HKCR\CLSID\{D2ED260C-38F1-4ABE-8B2B-D4A088C54416}" /f
reg delete "HKCR\Interface\{593D1748-1BE4-4CD8-959C-57672CD5B11A}" /f
reg delete "HKCR\Interface\{5D0D3D28-D388-4773-90B5-7D509CBBE251}" /f
reg delete "HKCR\Interface\{887CE38B-642C-401C-B9EE-EBF7FC9919C6}" /f
reg delete "HKCR\WOW6432Node\CLSID\{DD783C90-F9A6-41D5-A635-DA5DBBB87D75}" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-wpc" /f
reg delete "HKCR\ms-wpc" /f
reg delete "HKCR\WOW6432Node\AppID\{B34F88D1-F26B-42D5-8DD5-A442303A05D7}" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\Repository\Packages\Microsoft.Windows.ParentalControls_1000.25128.1000.0_neutral_neutral_cw5n1h2txyewy" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.FamilySafety.Internal.FamilySettings" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.FamilySafety.Internal.RatingManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.FamilySafety.Internal.UserInterface" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.FamilySafety.Internal.UserSettings" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.SyncMembersPolicy" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.SyncMembersManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.SyncMembersHandler" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.PendingMembersLocalAccountResolverResult" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.PendingMembersLocalAccountResolver" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.PendingMemberLocalAccount" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.MembersLocalAccountResolverResult" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.MembersLocalAccountResolver" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.MemberLocalAccount" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.LocalAccountStore" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.SyncEngine.LocalAccount" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.Client.FamilyHttpClientConfig" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.Client.FamilyHttpClient" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.Cache.LocalMemberStoreBroker" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.Cache.LocalMemberStore" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.Cache.LocalMember" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.Cache.EmailLocalMember" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.Cache.EmailLocalMemberStore" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Family.Authentication.FamilyUserAuthenticator" /f
reg delete "HKCR\WOW6432Node\AppID\{C844C79D-AED8-4DCE-AB25-4D359BED84F8}" /f
reg delete "HKCR\AppID\{C844C79D-AED8-4DCE-AB25-4D359BED84F8}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.fax" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.fax" /f
reg delete "HKCR\WOW6432Node\CLSID\{07FFDD7A-0300-4FDC-B113-1C5364E61F54}" /f
reg delete "HKCR\CLSID\{07FFDD7A-0300-4FDC-B113-1C5364E61F54}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Feedback.FeedbackBroker" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Feedback.StringFeedback.StringFeedbackEngine" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.FeedbackHub.FeedbackHubInternal" /f
reg delete "HKCR\CLSID\{0b6d74fe-ad29-4c92-ac06-f06bc2f238a7}" /f
reg delete "HKCR\CLSID\{34e6abfe-e9f4-4ddf-895a-7350e198f26e}" /f
reg delete "HKCR\CLSID\{a7c922a0-a197-4ae4-8fcd-2236bb4cf515}" /f
reg delete "HKCR\CLSID\{F4D36777-EAED-4cc5-9FE7-827BE5190B20}" /f
reg delete "HKCR\CLSID\{faeb54c4-f66f-4806-83a0-805299f5e3ad}" /f
reg delete "HKCR\CLSID\{FE6B11C3-C72E-4061-86C6-9D163121F229}" /f
reg delete "HKCR\WOW6432Node\CLSID\{0b6d74fe-ad29-4c92-ac06-f06bc2f238a7}" /f
reg delete "HKCR\WOW6432Node\CLSID\{34e6abfe-e9f4-4ddf-895a-7350e198f26e}" /f
reg delete "HKCR\WOW6432Node\CLSID\{a7c922a0-a197-4ae4-8fcd-2236bb4cf515}" /f
reg delete "HKCR\WOW6432Node\CLSID\{F4D36777-EAED-4cc5-9FE7-827BE5190B20}" /f
reg delete "HKCR\WOW6432Node\CLSID\{faeb54c4-f66f-4806-83a0-805299f5e3ad}" /f
reg delete "HKCR\WOW6432Node\CLSID\{FE6B11C3-C72E-4061-86C6-9D163121F229}" /f
reg delete "HKLM\SOFTWARE\Classes\Microsoft.FeedsManager" /f
reg delete "HKCR\TypeLib\{9CDCD9C9-BC40-41C6-89C5-230466DB0BD0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_FEEDS" /f
reg delete "HKCR\WOW6432Node\TypeLib\{9CDCD9C9-BC40-41C6-89C5-230466DB0BD0}" /f
reg delete "HKCR\WOW6432Node\CLSID\{4C6470A6-3F91-4f41-850B-DB9BCD074537}" /f
reg delete "HKCR\WOW6432Node\CLSID\{55b70dec-4b3b-4e26-ae9c-9e8d131843a1}" /f
reg delete "HKCR\WOW6432Node\CLSID\{C8059EB6-D2FC-4ecf-A15F-AF427F5E4DB6}" /f
reg delete "HKCR\CLSID\{0316BBC2-92D9-4E2E-8345-3609C6B5C167}" /f
reg delete "HKCR\TypeLib\{56D04F5D-964F-4DBF-8D23-B97989E53418}" /f
reg delete "HKCR\TypeLib\{7D868ACD-1A5D-4A47-A247-F39741353012}" /f
reg delete "HKCR\TypeLib\{D7CA032C-B7D0-429E-9FD7-82241C356B4A}" /f
reg delete "HKCR\WOW6432Node\TypeLib\{56D04F5D-964F-4DBF-8D23-B97989E53418}" /f
reg delete "HKCR\WOW6432Node\TypeLib\{7D868ACD-1A5D-4A47-A247-F39741353012}" /f
reg delete "HKCR\WOW6432Node\TypeLib\{D7CA032C-B7D0-429E-9FD7-82241C356B4A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.SocialFeedChildItem" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.SocialFeedItem" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.Provider.SocialInfoProviderManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.SocialItemThumbnail" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.ApplicationModel.SocialInfo.SocialInfoContract" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.System.Profile.ProfileRetailInfoContract" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Lock Screen\FeedManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\FeedManager" /f
reg delete "HKCR\CLSID\{3E73C6F7-8937-4C07-85D9-D4447A4BE072}" /f
reg delete "HKCR\WOW6432Node\CLSID\{3E73C6F7-8937-4C07-85D9-D4447A4BE072}" /f
reg delete "HKLM\SOFTWARE\Microsoft\GameOverlay" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\GameOverlay" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameBar_LearnMore" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameBar_NexusButton" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameBar_Toggle" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameDVR_HardwareEncoder" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameDVRHeader_LearnMore" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameDVRHeader_OpenFolder" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.UI.GameBar" /v "ActivationType" /t REG_DWORD /d "0" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsUdk.Gaming.UI.GameMru" /f
reg delete "HKCR\TypeLib\{8cec5857-07a1-11d9-b15e-000d56bfe6ee" /f
reg delete "HKCR\WOW6432Node\CLSID\{8cec58e7-07a1-11d9-b15e-000d56bfe6ee}" /f
reg delete "HKCR\WOW6432Node\TypeLib\{8cec5857-07a1-11d9-b15e-000d56bfe6ee}" /f
reg delete "HKCR\WOW6432Node\CLSID\{E5B8E079-EE6D-4E33-A438-C87F2E959254}" /f
reg delete "HKCR\CLSID\{B9033E87-33CF-4D77-BC9B-895AFBBA72E4}" /f
reg delete "HKCR\WOW6432Node\CLSID\{B9033E87-33CF-4D77-BC9B-895AFBBA72E4}" /f
reg delete "HKCR\CLSID\{9885AEF2-BD9F-41E0-B15E-B3141395E803}" /f
reg delete "HKCR\WOW6432Node\CLSID\{9885AEF2-BD9F-41E0-B15E-B3141395E803}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{27016870-8E02-11D1-924E-00C04FBBBFB3}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{754A73E3-B0A5-4305-A45A-428186716507}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\AppID\{EB521D7D-4095-4E61-88FB-BF25700F142A}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{241D7C96-F8BF-4F85-B01F-E2B043341A4B}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{27016870-8E02-11D1-924E-00C04FBBBFB3}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{754A73E3-B0A5-4305-A45A-428186716507}" /f
reg delete "HKLM\SOFTWARE\Classes\AppID\{EB521D7D-4095-4E61-88FB-BF25700F142A}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{241D7C96-F8BF-4F85-B01F-E2B043341A4B}" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxa.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxc.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxd.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxe.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxf.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxh.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxi.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxk.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxq.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxr.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxs.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxt.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxv.2.5" /f
reg delete "HKLM\SOFTWARE\Classes\MSHelp.hxw.2.5" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\HelpAndSupport" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Hints" /f
reg delete "HKLM\SOFTWAR\Microsoft\Windows\CurrentVersion\HelpAndSupport" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Hints" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.help" /f
reg delete "HKCR\CLSID\{9127081a-04b5-4044-b4c5-c7a9718e8795}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.help" /f
reg delete "HKCR\WOW6432Node\CLSID\{9127081a-04b5-4044-b4c5-c7a9718e8795}" /f
reg delete "HKCR\WOW6432Node\CLSID\{06946266-393A-456E-92BC-91DDDBF6893C}" /f
reg delete "HKCR\WOW6432Node\CLSID\{07DC68FA-A15D-4E44-93DE-645060C7B469}" /f
reg delete "HKCR\CLSID\{06946266-393A-456E-92BC-91DDDBF6893C}" /f
reg delete "HKCR\CLSID\{07DC68FA-A15D-4E44-93DE-645060C7B469}" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Auto_Update_Setting" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_CopyrightAttribution" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_DeleteAll" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Download_Add_Package" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Download_Available_Packages_Collection" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Download_User_Packages_Collection" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Downloads_Activation" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_MapDataOld_Update" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Manage" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Service_Error" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Migration" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Migration_Cancel" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Migration_Error" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Options" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Updates_Actions" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Updates_State_Installing" /f
reg delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Wifi_Only_Setting" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.EnhancedWaypoint" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.Guidance.GuidanceNavigator" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.Guidance.GuidanceRoute" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.Guidance.GuidanceTelemetryCollector" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.LocalSearch.LocalCategories" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.LocalSearch.LocalLocationFinder" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.LocalSearch.PlaceInfoHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.MapLocationFinder" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.MapManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.MapRouteDrivingOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.MapRouteFinder" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.MapService" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.OfflineMaps.OfflineMapPackage" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.PlaceInfo" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Maps.PlaceInfoCreateOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Services.Maps.GuidanceContract" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Services.Maps.LocalSearchContract" /f
reg delete "HKCR\WOW6432Node\AppID\{5C03E1B1-EB13-4DF1-8943-2FE8E7D5F309}" /f
reg delete "HKCR\AppID\{5C03E1B1-EB13-4DF1-8943-2FE8E7D5F309}" /f
reg delete "HKCR\CLSID\{03837511-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837513-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{0383751C-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837521-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837525-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837526-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837527-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837528-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837529-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837530-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837531-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837532-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837538-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837539-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837546-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{03837547-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\CLSID\{ff679da1-8ff2-4474-9c9e-52bbd409b557}" /f
reg delete "HKCR\TypeLib\{03837500-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837511-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837513-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{0383751C-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837521-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837525-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837527-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837526-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837528-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837529-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837530-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837531-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837532-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837538-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837539-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837546-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{03837547-098B-11D8-9414-505054503030}" /f
reg delete "HKCR\WOW6432Node\CLSID\{ff679da1-8ff2-4474-9c9e-52bbd409b557}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{ff679da1-8ff2-4474-9c9e-52bbd409b557}" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.BootTraceSession" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.BootTraceSession.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.BootTraceSessionCollection" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.BootTraceSessionCollection.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.DataCollectorSet" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.DataCollectorSet.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.DataCollectorSetCollection" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.DataCollectorSetCollection.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.LegacyDataCollectorSet" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.LegacyDataCollectorSet.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.LegacyDataCollectorSetCollection" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.LegacyDataCollectorSetCollection.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.LegacyTraceSession" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.LegacyTraceSession.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.LegacyTraceSessionCollection" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.LegacyTraceSessionCollection.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.ServerDataCollectorSet" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.ServerDataCollectorSet.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.ServerDataCollectorSetCollection" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.ServerDataCollectorSetCollection.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.SystemDataCollectorSet" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.SystemDataCollectorSet.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.SystemDataCollectorSetCollection" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.SystemDataCollectorSetCollection.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.TraceDataProvider" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.TraceDataProvider.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.TraceDataProviderCollection" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.TraceDataProviderCollection.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.TraceSession" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.TraceSession.1" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.TraceSessionCollection" /f
reg delete "HKLM\SOFTWARE\Classes\PLA.TraceSessionCollection.1" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\AppID\{6de5dc63-3c0c-4dda-9220-1028a37298ba}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{c1f85ef8-bcc2-4606-bb39-70c523715eb3}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{C424F25A-6774-48BC-9F1E-02CCA8C1BE62}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{C58C4893-3BE0-4B45-ABB5-A63E4B8C8651}" /f
reg delete "HKLM\SOFTWARE\Classes\AppID\{6de5dc63-3c0c-4dda-9220-1028a37298ba}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{c1f85ef8-bcc2-4606-bb39-70c523715eb3}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{C424F25A-6774-48BC-9F1E-02CCA8C1BE62}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{C58C4893-3BE0-4B45-ABB5-A63E4B8C8651}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{58E3C745-D971-4081-9034-86E34B30836A}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{58E3C745-D971-4081-9034-86E34B30836A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Foundation.Diagnostics.ErrorDetails" /f
reg delete "HKCR\WOW6432Node\CLSID\{053D33FD-D0D4-44BF-B84E-99478DC343CD}" /f
reg delete "HKCR\WOW6432Node\CLSID\{3DBFEF35-6F15-4453-BC19-D7AD5CC04756}" /f
reg delete "HKCR\CLSID\{053D33FD-D0D4-44BF-B84E-99478DC343CD}" /f
reg delete "HKCR\CLSID\{3DBFEF35-6F15-4453-BC19-D7AD5CC04756}" /f
reg delete "HKCR\WOW6432Node\CLSID\{76be8257-c4c0-4d37-90c0-a23372254d27}" /f
reg delete "HKCR\WOW6432Node\CLSID\{96B9DAE3-CF15-45e9-9719-57285348225E}" /f
reg delete "HKCR\WOW6432Node\CLSID\{A5270F6C-19EC-4E17-9EA1-A7074276B9B9}" /f
reg delete "HKCR\WOW6432Node\CLSID\{a76de978-f3eb-4a4f-9f99-304ad619e2ab}" /f
reg delete "HKCR\WOW6432Node\CLSID\{A9B5F443-FE02-4C19-859D-E9B5C5A1B6C6}" /f
reg delete "HKCR\CLSID\{76be8257-c4c0-4d37-90c0-a23372254d27}" /f
reg delete "HKCR\CLSID\{96B9DAE3-CF15-45e9-9719-57285348225E}" /f
reg delete "HKCR\CLSID\{A5270F6C-19EC-4E17-9EA1-A7074276B9B9}" /f
reg delete "HKCR\CLSID\{a76de978-f3eb-4a4f-9f99-304ad619e2ab}" /f
reg delete "HKCR\CLSID\{A9B5F443-FE02-4C19-859D-E9B5C5A1B6C6}" /f
reg delete "HKCR\WOW6432Node\CLSID\{6D48E7F7-8ECD-404C-8E30-81C49E8E36EE}" /f
reg delete "HKCR\WOW6432Node\CLSID\{70804ECC-7272-4dc8-AFFC-97CD66AAA282}" /f
reg delete "HKCR\WOW6432Node\CLSID\{7210D183-F81E-4CEA-A2B9-E73C4ECB067A}" /f
reg delete "HKCR\WOW6432Node\CLSID\{896664F7-12E1-490f-8782-C0835AFD98FC}" /f
reg delete "HKCR\WOW6432Node\CLSID\{A373F500-7A87-11D3-B1C1-00C04F68155C}" /f
reg delete "HKCR\CLSID\{6D48E7F7-8ECD-404C-8E30-81C49E8E36EE}" /f
reg delete "HKCR\CLSID\{70804ECC-7272-4dc8-AFFC-97CD66AAA282}" /f
reg delete "HKCR\CLSID\{7210D183-F81E-4CEA-A2B9-E73C4ECB067A}" /f
reg delete "HKCR\CLSID\{896664F7-12E1-490f-8782-C0835AFD98FC}" /f
reg delete "HKCR\CLSID\{A373F500-7A87-11D3-B1C1-00C04F68155C}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{06254B9D-05E9-4FBE-968D-F46DBDC91AF9}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{1d64637d-31e9-4b06-9124-e83fb178ac6e}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{D26165CD-5994-4614-976D-CB45750C5F80}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{1d64637d-31e9-4b06-9124-e83fb178ac6e}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{06254B9D-05E9-4FBE-968D-F46DBDC91AF9}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{D26165CD-5994-4614-976D-CB45750C5F80}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{8B7FBFE0-5CD7-494a-AF8C-283A65707506}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{8B7FBFE0-5CD7-494a-AF8C-283A65707506}" /f
reg delete "HKCR\Extensions\ContractId\Windows.Search" /f
reg delete "HKCU\Software\Classes\bingnews" /f
reg delete "HKCU\Software\Classes\bingweather" /f
reg delete "HKLM\SOFTWARE\Microsoft\Internet Explorer\Extension Compatibility" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Diagnostics" /f
reg delete "HKLM\SOFTWARE\Clients\Contacts" /f
reg delete "HKLM\SOFTWARE\Classes\CEIPLuaElevationHelper" /f
reg delete "HKLM\SOFTWARE\Classes\RecentDocument\shell\remove" /f
reg add "HKLM\SOFTWARE\Classes\RecentDocument\shell\remove" /v "SkipCloudDownload" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{DA67B8AD-E81B-4c70-9B91-B417B5E33527}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{DA67B8AD-E81B-4c70-9B91-B417B5E33527}" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Troubleshooting\AllowRecommendations" /v "TroubleshootingAllowRecommendations" /t REG_DWORD /d "0" /f
reg delete "HKCR\AppUserModelId\Windows.SystemToast.AudioTroubleshooter" /f
reg delete "HKCR\DeviceDisplayObject\AllItems\Commands\Shell\Windows.Troubleshoot" /f
reg delete "HKCR\DeviceDisplayObject\AllItems\Shell\Windows.Troubleshoot" /f
reg delete "HKCR\CLSID\{55b70dec-4b3b-4e26-ae9c-9e8d131843a1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\DiagnosticLogCSP" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.Troubleshoot" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{C58C4893-3BE0-4B45-ABB5-A63E4B8C8651}" /f
reg delete "HKCR\WOW6432Node\CLSID\{266EEE41-6C63-11cf-8A03-00AA006ECB65}" /f
reg delete "HKCR\CLSID\{266EEE41-6C63-11cf-8A03-00AA006ECB65}" /f
reg delete "HKCR\AllFileSystemObjects\shell\LaunchWorkfoldersControl" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\WorkFolders" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\WorkFolders" /f
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\WorkFolders" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\EnhancedStorageShell" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{05DF8D13-C355-47f4-A11E-851B338CEFB8}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{489331DC-F5E0-4528-9FDA-45331BF4A571}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{6e18f9c6-a3eb-495a-89b7-956482e19f7a}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{9F377D7E-E551-44f8-9F94-9DB392B03B7B}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{A3C97737-76D9-4f5f-B917-4DE47FE023C8}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{A9A33436-678B-4c9c-A211-7CC38785E79D}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{C47A41B7-B729-424f-9AF9-5CB3934F2DFA}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{F3BDFAD3-F276-49e9-9B17-C474F48F0764}" /f
reg delete "HKLM\SOFTWARE\Classes\QueryAllWinSAT" /f
reg delete "HKLM\SOFTWARE\Classes\QueryWinSAT" /f
reg delete "HKLM\SOFTWARE\Classes\TypeLib\{15AE3A36-E53B-454d-A816-A7C61CBAB8A4}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{05DF8D13-C355-47f4-A11E-851B338CEFB8}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{489331DC-F5E0-4528-9FDA-45331BF4A571}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{6e18f9c6-a3eb-495a-89b7-956482e19f7a}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{9F377D7E-E551-44f8-9F94-9DB392B03B7B}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{A3C97737-76D9-4f5f-B917-4DE47FE023C8}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{A9A33436-678B-4c9c-A211-7CC38785E79D}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{C47A41B7-B729-424f-9AF9-5CB3934F2DFA}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{F3BDFAD3-F276-49e9-9B17-C474F48F0764}" /f
reg delete "HKCR\WOW6432Node\CLSID\{05DF8D13-C355-47f4-A11E-851B338CEFB8}" /f
reg delete "HKCR\WOW6432Node\CLSID\{489331DC-F5E0-4528-9FDA-45331BF4A571}" /f
reg delete "HKCR\WOW6432Node\CLSID\{6e18f9c6-a3eb-495a-89b7-956482e19f7a}" /f
reg delete "HKCR\WOW6432Node\CLSID\{9F377D7E-E551-44f8-9F94-9DB392B03B7B}" /f
reg delete "HKCR\WOW6432Node\CLSID\{A3C97737-76D9-4f5f-B917-4DE47FE023C8}" /f
reg delete "HKCR\WOW6432Node\CLSID\{A9A33436-678B-4c9c-A211-7CC38785E79D}" /f
reg delete "HKCR\WOW6432Node\CLSID\{C47A41B7-B729-424f-9AF9-5CB3934F2DFA}" /f
reg delete "HKCR\WOW6432Node\CLSID\{F3BDFAD3-F276-49e9-9B17-C474F48F0764}" /f
reg delete "HKCR\QueryAllWinSAT" /f
reg delete "HKCR\QueryWinSAT" /f
reg delete "HKCR\TypeLib\{15AE3A36-E53B-454d-A816-A7C61CBAB8A4}" /f
reg delete "HKCR\CLSID\{05DF8D13-C355-47f4-A11E-851B338CEFB8}" /f
reg delete "HKCR\CLSID\{489331DC-F5E0-4528-9FDA-45331BF4A571}" /f
reg delete "HKCR\CLSID\{6e18f9c6-a3eb-495a-89b7-956482e19f7a}" /f
reg delete "HKCR\CLSID\{9F377D7E-E551-44f8-9F94-9DB392B03B7B}" /f
reg delete "HKCR\CLSID\{A3C97737-76D9-4f5f-B917-4DE47FE023C8}" /f
reg delete "HKCR\CLSID\{A9A33436-678B-4c9c-A211-7CC38785E79D}" /f
reg delete "HKCR\CLSID\{C47A41B7-B729-424f-9AF9-5CB3934F2DFA}" /f
reg delete "HKCR\CLSID\{F3BDFAD3-F276-49e9-9B17-C474F48F0764}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.AppBroadcasting.AppBroadcastingContract" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.AppRecording.AppRecordingContract" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.Capture.AppBroadcastContract" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.Capture.AppCaptureContract" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.Capture.AppCaptureMetadataContract" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.Capture.GameBarContract" /f
reg delete "HKCR\WOW6432Node\CLSID\{A3BC03A0-041D-42E3-AD22-882B7865C9C5}" /f
reg delete "HKCR\WOW6432Node\CLSID\{115e13cf-cfe8-4821-b0da-e06aa4d51426}" /f
reg delete "HKCR\WOW6432Node\CLSID\{1B462D7B-72D8-4544-ACC1-D84E5B9A8A14}" /f
reg delete "HKCR\WOW6432Node\CLSID\{1DF7C823-B2D4-4B54-975A-F2AC5D7CF8B8}" /f
reg delete "HKCR\WOW6432Node\CLSID\{22A7E88C-5BF5-4DE6-B687-60F7331DF190}" /f
reg delete "HKCR\WOW6432Node\CLSID\{301B94BA-5D25-4A12-BFFE-3B6E7A616585}" /f
reg delete "HKCR\WOW6432Node\CLSID\{32be5ed2-5c86-480f-a914-0ff8885a1b3f}" /f
reg delete "HKCR\WOW6432Node\CLSID\{3523c2fb-4031-44e4-9a3b-f1e94986ee7f}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\WebCheck" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WebCheck" /f
reg delete "HKCR\CLSID\{8BE38B01-5124-478D-BF64-B487D2FC79C0}" /f
reg delete "HKCR\WOW6432Node\CLSID\{8BE38B01-5124-478D-BF64-B487D2FC79C0}" /f
reg delete "HKCR\CLSID\{3A57CB65-1857-4239-B130-FA0F8F06522A}" /f
reg delete "HKCR\WOW6432Node\CLSID\{3A57CB65-1857-4239-B130-FA0F8F06522A}" /f
reg delete "HKCR\CLSID\{78317482-5b49-4093-9c34-2758fc63bef0}" /f
reg delete "HKCR\WOW6432Node\CLSID\{78317482-5b49-4093-9c34-2758fc63bef0}" /f
reg delete "HKCR\CLSID\{8DDA2943-4787-4B48-9336-CAE6746DF276}" /f
reg delete "HKCR\WOW6432Node\CLSID\{8DDA2943-4787-4B48-9336-CAE6746DF276}" /f
reg delete "HKCR\CLSID\{EED01FD5-42B6-4846-A81F-9C40D219197F}" /f
reg delete "HKCR\WOW6432Node\CLSID\{EED01FD5-42B6-4846-A81F-9C40D219197F}" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg delete "HKCR\CLSID\{09A5DFC5-8BA2-47DD-BF84-FFD7E0B24481}" /f
reg delete "HKCR\CLSID\{0DFA72F0-D26C-4987-A128-E3A5641C5568}" /f
reg delete "HKCR\CLSID\{10493933-661B-4083-9CE0-EFE48ADD0770}" /f
reg delete "HKCR\CLSID\{24AC8F2B-4D4A-4C17-9607-6A4B14068F97}" /f
reg delete "HKCR\CLSID\{3957a5ba-4448-bec4-24ac-16c4f5784ef5}" /f
reg delete "HKCR\CLSID\{3C925F4E-F236-4BCF-9330-F15B8AD8765B}" /f
reg delete "HKCR\CLSID\{C2D67532-D0FA-4022-89F7-8C1DF8A0C412}" /f
reg delete "HKCR\CLSID\{FF2F95A4-C6A1-4B48-BC87-8709250E0D03}" /f
reg delete "HKCR\WOW6432Node\CLSID\{09A5DFC5-8BA2-47DD-BF84-FFD7E0B24481}" /f
reg delete "HKCR\WOW6432Node\CLSID\{0DFA72F0-D26C-4987-A128-E3A5641C5568}" /f
reg delete "HKCR\WOW6432Node\CLSID\{10493933-661B-4083-9CE0-EFE48ADD0770}" /f
reg delete "HKCR\WOW6432Node\CLSID\{24AC8F2B-4D4A-4C17-9607-6A4B14068F97}" /f
reg delete "HKCR\WOW6432Node\CLSID\{3957a5ba-4448-bec4-24ac-16c4f5784ef5}" /f
reg delete "HKCR\WOW6432Node\CLSID\{3C925F4E-F236-4BCF-9330-F15B8AD8765B}" /f
reg delete "HKCR\WOW6432Node\CLSID\{C2D67532-D0FA-4022-89F7-8C1DF8A0C412}" /f
reg delete "HKCR\WOW6432Node\CLSID\{FF2F95A4-C6A1-4B48-BC87-8709250E0D03}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.AppsInfo" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.AudioHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.BrowserManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.ContextMenuManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.CortanaSettings" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.DesktopItem" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.DesktopLaunchersBrokered" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.DeviceAccessHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.FileSystemAccessHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.HostedFlowManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.InputsHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.LaunchersBrokered" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.MapiHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.MediaControlManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.MSAManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.OutlookHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.PathCommanding" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.PersonaHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.PowerHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.ProcessHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.SearchFolders" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.Speech.SpeechSettings" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.SpeechLanguageManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.SystemCommands" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.TaskbarNotificationManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.VisionHelper" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Services.Cortana.CortanaPermissionsAppServiceManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.Shell.UnifiedTile.Private.CortanaActivationBroker" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\CloudExperienceHostBroker.Cortana.OOBECortanaManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\CloudExperienceHostBroker.Cortana.OOBECortanaManagerCore" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\CloudExperienceHostBroker.Cortana.OOBECortanaManagerCoreForUser" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Media.Speech.Pal.CortanaAppManagement" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.CSGSuggestion.CSGSuggester" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.ConstraintIndexDownloader" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.QueryFactory" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.SessionTelemetry" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.SettingsConstraintIndexRefresher" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.SettingsJsonGenerator" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\CLSID\{C91D3A4B-AB17-498A-967E-E72A877F3428}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Cortana.CortanaActionableInsights" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Cortana.CortanaActionableInsightsOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Cortana.CortanaPermissionsManager" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Cortana.CortanaSettings" /f
reg delete "HKCR\AppXq0pwa73vfcn2qdexp8cexcc6qk87xh1r" /f
reg delete "HKCR\AppID\{24AC8F2B-4D4A-4C17-9607-6A4B14068F97}" /f
reg delete "HKCR\WOW6432Node\AppID\{24AC8F2B-4D4A-4C17-9607-6A4B14068F97}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{900c0763-5cad-4a34-bc1f-40cd513679d5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{900c0763-5cad-4a34-bc1f-40cd513679d5}" /f
reg delete "HKLM\SOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{68ddbb56-9d1d-4fd9-89c5-c0da2a625392}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{68ddbb56-9d1d-4fd9-89c5-c0da2a625392}" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\PreviousVersions" /v "DisableLocalPage" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PreviousVersions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /t REG_DWORD /d "1" /f
rmdir "C:\Program Files (x86)\Microsoft" /s /q
reg delete "HKLM\SOFTWARE\Classes\CLSID\{2C256447-3F0D-4CBB-9D12-575BB20CDA0A}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{6E3D2E94-E6D8-4afd-AFDE-ABD26CA88BF5}" /f
reg delete "HKLM\SOFTWARE\Classes\CLSID\{FFCDB781-D71C-4D10-BD5F-0492EAFFD90A}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{2C256447-3F0D-4CBB-9D12-575BB20CDA0A}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{6E3D2E94-E6D8-4afd-AFDE-ABD26CA88BF5}" /f
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{FFCDB781-D71C-4D10-BD5F-0492EAFFD90A}" /f

:: 移除计划任务
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Location" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F63F032A-B1F2-4C61-85BE-A7EA41682489}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "WakeUp" /t REG_DWORD /d "0" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskStateFlags" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maintenance" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{D8041C60-5E6F-4290-9E8D-E5EA50669A05}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{D8041C60-5E6F-4290-9E8D-E5EA50669A05}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{D8041C60-5E6F-4290-9E8D-E5EA50669A05}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskCleanup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C1692FA0-130E-40EE-B858-E586325055D4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{C1692FA0-130E-40EE-B858-E586325055D4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C1692FA0-130E-40EE-B858-E586325055D4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsBackup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Data Integrity Scan" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2AC87143-4F04-451B-A3C4-273D0313029A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5B854AF7-FF3C-4801-828A-9DBF6561A883}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{70AA91B8-7218-42D3-B416-49959D18E7E8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A08367E5-27D7-47CB-ABCC-ED0ADF21D472}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{AF55360C-61AE-4AEA-B1FB-46B24385B460}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C567CF9E-1DF9-4D39-A7CC-7752A88A160E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F2495FC2-A06A-42D0-BAB8-343D5134ADDB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{2AC87143-4F04-451B-A3C4-273D0313029A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{2AC87143-4F04-451B-A3C4-273D0313029A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{5B854AF7-FF3C-4801-828A-9DBF6561A883}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5B854AF7-FF3C-4801-828A-9DBF6561A883}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{70AA91B8-7218-42D3-B416-49959D18E7E8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{70AA91B8-7218-42D3-B416-49959D18E7E8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A08367E5-27D7-47CB-ABCC-ED0ADF21D472}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A08367E5-27D7-47CB-ABCC-ED0ADF21D472}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{AF55360C-61AE-4AEA-B1FB-46B24385B460}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{AF55360C-61AE-4AEA-B1FB-46B24385B460}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{C567CF9E-1DF9-4D39-A7CC-7752A88A160E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C567CF9E-1DF9-4D39-A7CC-7752A88A160E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F2495FC2-A06A-42D0-BAB8-343D5134ADDB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F2495FC2-A06A-42D0-BAB8-343D5134ADDB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Power Efficiency Diagnostics" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{57955FAC-E7E3-403C-AAD2-EAF4C1CC6D69}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Setup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E87A4AC3-1613-4853-B7BF-40A2BF58226C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E87A4AC3-1613-4853-B7BF-40A2BF58226C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{E87A4AC3-1613-4853-B7BF-40A2BF58226C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WOF" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B605371B-86F7-4F95-8E78-1FC028140C24}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{EF6662AC-4856-4E1A-83EA-6765ED6B2F7C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B605371B-86F7-4F95-8E78-1FC028140C24}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B605371B-86F7-4F95-8E78-1FC028140C24}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{EF6662AC-4856-4E1A-83EA-6765ED6B2F7C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{EF6662AC-4856-4E1A-83EA-6765ED6B2F7C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\USB" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{9E1E5175-8678-49EA-90BE-604365D7BD5E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{9E1E5175-8678-49EA-90BE-604365D7BD5E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9E1E5175-8678-49EA-90BE-604365D7BD5E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Storage Tiers Management" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{BF41FB28-0BB4-4029-AEE9-561184B4A6B6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{BF41FB28-0BB4-4029-AEE9-561184B4A6B6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{9840408F-DF7E-4838-8580-BD1EEB75796A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{9840408F-DF7E-4838-8580-BD1EEB75796A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9840408F-DF7E-4838-8580-BD1EEB75796A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BF41FB28-0BB4-4029-AEE9-561184B4A6B6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Boot" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppxDeploymentClient\Pre-staged app cleanup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A8250646-BA40-4C81-A5B9-C6D6D1EE858A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A8250646-BA40-4C81-A5B9-C6D6D1EE858A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A8250646-BA40-4C81-A5B9-C6D6D1EE858A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Live" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Aiseesoft Studio" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\VisualStudio" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office\Office Automatic Updates 2.0" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office\Office Feature Updates" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office\Office Feature Updates Logon" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Office\Office Performance Monitor" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5A7B58AB-DA50-4771-874A-455DBC383AA4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5BC662AA-7158-4A2E-BD09-4AE2DDDA66A7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8624126E-B8F0-41B9-A802-4D60082495F8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{DB4D5859-6455-4202-A9F6-D2DBB50E392D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Time Zone" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{283DCF87-F75B-4207-8769-88637C1723EB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Active Directory Rights Management Services Client" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3519F8E3-0A5D-42B8-9A96-E6A6C9320B76}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BD63D260-DF71-455F-90BF-2C3CFA933DD7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{3519F8E3-0A5D-42B8-9A96-E6A6C9320B76}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3519F8E3-0A5D-42B8-9A96-E6A6C9320B76}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{BD63D260-DF71-455F-90BF-2C3CFA933DD7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{BD63D260-DF71-455F-90BF-2C3CFA933DD7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Application Experience" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4332EE7B-777D-425A-9014-F9791D779A50}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4692A6EB-80B1-440E-B0FD-CEA59ECFC04B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{695A6FB4-47A6-44A1-B156-6EF18862BD6B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E72AD6CC-496F-4C07-A11C-4730E7017A09}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{FBD2A392-D8D5-47C6-B956-654DB9865BC5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{4332EE7B-777D-425A-9014-F9791D779A50}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{4332EE7B-777D-425A-9014-F9791D779A50}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{4692A6EB-80B1-440E-B0FD-CEA59ECFC04B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{4692A6EB-80B1-440E-B0FD-CEA59ECFC04B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{695A6FB4-47A6-44A1-B156-6EF18862BD6B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{695A6FB4-47A6-44A1-B156-6EF18862BD6B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E72AD6CC-496F-4C07-A11C-4730E7017A09}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{E72AD6CC-496F-4C07-A11C-4730E7017A09}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{FBD2A392-D8D5-47C6-B956-654DB9865BC5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{FBD2A392-D8D5-47C6-B956-654DB9865BC5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\BitLocker" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4C63C196-31DA-48BB-AF82-2A3AD7A89C1C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6069653E-1574-4D99-8917-2E5D993C8013}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{6069653E-1574-4D99-8917-2E5D993C8013}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6069653E-1574-4D99-8917-2E5D993C8013}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{4C63C196-31DA-48BB-AF82-2A3AD7A89C1C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{4C63C196-31DA-48BB-AF82-2A3AD7A89C1C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Bluetooth" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1B32CB82-5CDE-4113-AC75-E826BDFEE21C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{1B32CB82-5CDE-4113-AC75-E826BDFEE21C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{1B32CB82-5CDE-4113-AC75-E826BDFEE21C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Defrag" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B5644C60-C73F-4DD3-BA88-601B81C2003B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B5644C60-C73F-4DD3-BA88-601B81C2003B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B5644C60-C73F-4DD3-BA88-601B81C2003B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Diagnosis" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0C504050-6DEE-432A-A00C-92464C0AC3CE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{13EA56F1-F3D0-45CC-BC92-3DAF3C9302F5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{758ED09F-C7BC-4DEC-B9B6-FA6936E1A486}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{77BD5819-1698-4665-89D0-BC97E59A8A01}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8CE14700-48B4-4B6E-852D-F6485711132A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C6A68D4D-E2CC-49E3-AC15-A4AC966BFADD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{0C504050-6DEE-432A-A00C-92464C0AC3CE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0C504050-6DEE-432A-A00C-92464C0AC3CE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{13EA56F1-F3D0-45CC-BC92-3DAF3C9302F5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{13EA56F1-F3D0-45CC-BC92-3DAF3C9302F5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{758ED09F-C7BC-4DEC-B9B6-FA6936E1A486}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{758ED09F-C7BC-4DEC-B9B6-FA6936E1A486}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{77BD5819-1698-4665-89D0-BC97E59A8A01}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{77BD5819-1698-4665-89D0-BC97E59A8A01}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{8CE14700-48B4-4B6E-852D-F6485711132A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8CE14700-48B4-4B6E-852D-F6485711132A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{C6A68D4D-E2CC-49E3-AC15-A4AC966BFADD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C6A68D4D-E2CC-49E3-AC15-A4AC966BFADD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskFootprint" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{51268699-2883-4E06-97B3-0FC406705B9A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{51268699-2883-4E06-97B3-0FC406705B9A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{51268699-2883-4E06-97B3-0FC406705B9A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BD024514-8867-435C-9243-F09AA34A2ED4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{BD024514-8867-435C-9243-F09AA34A2ED4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{BD024514-8867-435C-9243-F09AA34A2ED4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DirectX" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{309621DB-6CFF-4358-840C-C85FA686942D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A25C8105-0A1D-44AD-8AF4-BB4CB52DF2C4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{ABCAA465-CB32-46C8-8F0B-3320377A7195}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BCCD6EF8-B446-4F6D-8667-FA62CAC08837}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{DEFBFA25-0D07-4BBD-95A2-56BD93426E00}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E78545BE-13A0-47D6-8FC0-2BCC1BABC22C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{309621DB-6CFF-4358-840C-C85FA686942D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{309621DB-6CFF-4358-840C-C85FA686942D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A25C8105-0A1D-44AD-8AF4-BB4CB52DF2C4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A25C8105-0A1D-44AD-8AF4-BB4CB52DF2C4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{ABCAA465-CB32-46C8-8F0B-3320377A7195}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{ABCAA465-CB32-46C8-8F0B-3320377A7195}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{BCCD6EF8-B446-4F6D-8667-FA62CAC08837}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{BCCD6EF8-B446-4F6D-8667-FA62CAC08837}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{DEFBFA25-0D07-4BBD-95A2-56BD93426E00}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{DEFBFA25-0D07-4BBD-95A2-56BD93426E00}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E78545BE-13A0-47D6-8FC0-2BCC1BABC22C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{E78545BE-13A0-47D6-8FC0-2BCC1BABC22C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Chkdsk" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Autochk" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1352F52C-92DF-4446-9244-B3658CE3743F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7802674C-0626-4ECC-B6C8-59A119ECAC54}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0E9785EC-D690-48E8-A599-CEE9CEBFCCE9}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0F30D4C3-4B05-461B-B730-804A948C8760}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1A6976F5-DACB-4940-81E1-EFF70F2E999F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4B83C3B8-5EEB-4A4F-B44D-88C7F5CF9889}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BF943182-91E2-46D9-A15C-E41CD25CEFFE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{1352F52C-92DF-4446-9244-B3658CE3743F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{1352F52C-92DF-4446-9244-B3658CE3743F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{7802674C-0626-4ECC-B6C8-59A119ECAC54}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{7802674C-0626-4ECC-B6C8-59A119ECAC54}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{0E9785EC-D690-48E8-A599-CEE9CEBFCCE9}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0E9785EC-D690-48E8-A599-CEE9CEBFCCE9}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{0F30D4C3-4B05-461B-B730-804A948C8760}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0F30D4C3-4B05-461B-B730-804A948C8760}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{1A6976F5-DACB-4940-81E1-EFF70F2E999F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{1A6976F5-DACB-4940-81E1-EFF70F2E999F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{4B83C3B8-5EEB-4A4F-B44D-88C7F5CF9889}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{4B83C3B8-5EEB-4A4F-B44D-88C7F5CF9889}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{BF943182-91E2-46D9-A15C-E41CD25CEFFE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{BF943182-91E2-46D9-A15C-E41CD25CEFFE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\.NET Framework" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{37830DDA-ED65-4EA7-95F3-45A29C9BC432}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{545F172B-C14D-4B1B-9CB2-EC797F6C69EB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{71966BBF-1C65-457C-B176-3DD8B284A641}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8435A481-3051-48E2-BE6A-62D15D002EF6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{37830DDA-ED65-4EA7-95F3-45A29C9BC432}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{37830DDA-ED65-4EA7-95F3-45A29C9BC432}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{545F172B-C14D-4B1B-9CB2-EC797F6C69EB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{545F172B-C14D-4B1B-9CB2-EC797F6C69EB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{71966BBF-1C65-457C-B176-3DD8B284A641}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{71966BBF-1C65-457C-B176-3DD8B284A641}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{8435A481-3051-48E2-BE6A-62D15D002EF6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8435A481-3051-48E2-BE6A-62D15D002EF6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DUSM" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C1091AF5-B68D-4170-8129-4013EEF9CF23}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{C1091AF5-B68D-4170-8129-4013EEF9CF23}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C1091AF5-B68D-4170-8129-4013EEF9CF23}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\memreductSkipUac" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\EnterpriseMgmt" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{08DECB7F-3DFC-47E5-9217-EAB4F1C58D31}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{08DECB7F-3DFC-47E5-9217-EAB4F1C58D31}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{08DECB7F-3DFC-47E5-9217-EAB4F1C58D31}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{411BEC68-70D3-4999-A417-1F8453ED23A0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{411BEC68-70D3-4999-A417-1F8453ED23A0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{411BEC68-70D3-4999-A417-1F8453ED23A0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{16183D64-F54D-4A86-B3B5-3385508E8169}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{16183D64-F54D-4A86-B3B5-3385508E8169}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{16183D64-F54D-4A86-B3B5-3385508E8169}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4437F105-0DFA-4FB1-AA37-38366FCD86F3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{4437F105-0DFA-4FB1-AA37-38366FCD86F3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{4437F105-0DFA-4FB1-AA37-38366FCD86F3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5247DB78-DF6F-4E23-9832-C9179C6A9116}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{5247DB78-DF6F-4E23-9832-C9179C6A9116}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5247DB78-DF6F-4E23-9832-C9179C6A9116}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{88260CB4-9B51-463D-A7FF-E72C315C8BB6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{88260CB4-9B51-463D-A7FF-E72C315C8BB6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{88260CB4-9B51-463D-A7FF-E72C315C8BB6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{93BDF36A-6B49-456F-BC13-B82DA0A8298A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{93BDF36A-6B49-456F-BC13-B82DA0A8298A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{93BDF36A-6B49-456F-BC13-B82DA0A8298A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C74ED9DF-3269-411A-9D6C-0A121991F9A8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{C74ED9DF-3269-411A-9D6C-0A121991F9A8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C74ED9DF-3269-411A-9D6C-0A121991F9A8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CE403C4E-122F-4FAC-9248-634A6FA63BA7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{CE403C4E-122F-4FAC-9248-634A6FA63BA7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{CE403C4E-122F-4FAC-9248-634A6FA63BA7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\FileHistory" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E61FEADD-31CB-4052-8A16-1F4336764D10}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E61FEADD-31CB-4052-8A16-1F4336764D10}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{E61FEADD-31CB-4052-8A16-1F4336764D10}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\FamilySafetyMonitor" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\PushToInstall" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\OneCore" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppID" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2AC62367-145D-4AA3-ADF0-7870082DD9AF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{AD9C4262-90AD-48A3-8445-CBE18B8AD4F3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CF735215-0278-43E2-B1CF-C1296D80C983}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{D0060B22-73E5-41F0-BA17-D1F94DC1A923}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0DB7C11D-D91B-4539-8AB5-EFF5E779655E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0E39D62D-5BFD-448B-9C9D-D2D0832531A1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7072B339-31D0-4D7E-9266-849075F9F3BD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{86A50741-F7DE-47BC-B82C-2B83D823CECE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8ACB8A1B-E3B5-407F-9BD4-CEDD4C7D8A0A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{AE6573ED-72DB-423D-B56E-FA6926EA2D93}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B332AFD2-C48A-4280-A5C0-477019A19F03}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F20896CA-3192-4A79-8B6F-8F38AEEA3FAF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F5D773DD-D0AF-4151-9674-3FC94924AEC2}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{2AC62367-145D-4AA3-ADF0-7870082DD9AF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{2AC62367-145D-4AA3-ADF0-7870082DD9AF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{AD9C4262-90AD-48A3-8445-CBE18B8AD4F3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{AD9C4262-90AD-48A3-8445-CBE18B8AD4F3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{CF735215-0278-43E2-B1CF-C1296D80C983}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{CF735215-0278-43E2-B1CF-C1296D80C983}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{D0060B22-73E5-41F0-BA17-D1F94DC1A923}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{D0060B22-73E5-41F0-BA17-D1F94DC1A923}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{0DB7C11D-D91B-4539-8AB5-EFF5E779655E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0DB7C11D-D91B-4539-8AB5-EFF5E779655E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{0E39D62D-5BFD-448B-9C9D-D2D0832531A1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0E39D62D-5BFD-448B-9C9D-D2D0832531A1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{7072B339-31D0-4D7E-9266-849075F9F3BD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{7072B339-31D0-4D7E-9266-849075F9F3BD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{86A50741-F7DE-47BC-B82C-2B83D823CECE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{86A50741-F7DE-47BC-B82C-2B83D823CECE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{8ACB8A1B-E3B5-407F-9BD4-CEDD4C7D8A0A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8ACB8A1B-E3B5-407F-9BD4-CEDD4C7D8A0A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{AE6573ED-72DB-423D-B56E-FA6926EA2D93}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{AE6573ED-72DB-423D-B56E-FA6926EA2D93}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B332AFD2-C48A-4280-A5C0-477019A19F03}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B332AFD2-C48A-4280-A5C0-477019A19F03}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F20896CA-3192-4A79-8B6F-8F38AEEA3FAF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F20896CA-3192-4A79-8B6F-8F38AEEA3FAF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F5D773DD-D0AF-4151-9674-3FC94924AEC2}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F5D773DD-D0AF-4151-9674-3FC94924AEC2}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\ApplicationData" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SettingSync" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\CloudExperienceHost" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Management" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\NetTrace" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Offline Files" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\PI" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\PLA" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Kernel" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppListBackup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6A2C0ADF-62CD-43D1-A9B9-E1F2E643667A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8FD47A24-92BC-4561-BECB-075FE38D79A5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F5E2FDAA-D274-485C-8399-72BD838B7851}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{FDC1B8BF-0477-4227-A5F8-2E6EC9359E5F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6AB4140A-1E23-404B-8959-99900CD60638}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{02DD8AE9-96D0-4A54-8D0E-302DEE5A6A2E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{08CAAB80-18B0-4946-AFEF-98D028E35590}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1B83AB17-C1B9-47D4-9F5B-055B4CCC3FDE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1FF486D6-7873-4015-B44A-2820EDE5823F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{29B91919-E138-4539-AA48-F971D0912D2D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2B7BFA7F-454A-430E-B9DF-C7AAE0D9FCCA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2C7871CD-3511-421D-A439-968C1E0DD59E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{458C0EC7-FEBD-4239-B23D-82EA914D0864}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{54F67D4C-7A3E-4F32-84E8-CB9D9468AE56}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{659BF56C-F262-4E20-8380-2A2CAEFC3EA3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6AF5EC4A-417F-46A7-9C37-1F5B72F37ABF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6CEBC6F0-2B74-4648-BEBF-7E71EC1DAEB1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7814B495-B815-4B24-86F7-E60447E095B0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{952DB50D-5D44-4CFA-A4DB-41C7E4E5EC8C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B29AD67D-9A61-4400-A0E7-74465BDE1EE3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B3FAC187-0427-477F-9D45-77F0EA36EA39}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B52C6920-800E-4C77-947B-A52968CFA0CB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B7E34533-5E7E-4876-9139-607EB8BF6632}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CBC2580C-154B-471E-A625-4554CC1115A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CC951A0F-B210-4082-86E1-00915D4B86B4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{DD59EFBD-763C-4311-BFB1-5C507CD9A905}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{FBECEF26-37F8-4AE0-B543-F04BA576D8C6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{FF149A56-F6EA-4CC7-83DC-44678953B284}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{6A2C0ADF-62CD-43D1-A9B9-E1F2E643667A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6A2C0ADF-62CD-43D1-A9B9-E1F2E643667A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{8FD47A24-92BC-4561-BECB-075FE38D79A5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8FD47A24-92BC-4561-BECB-075FE38D79A5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F5E2FDAA-D274-485C-8399-72BD838B7851}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F5E2FDAA-D274-485C-8399-72BD838B7851}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{FDC1B8BF-0477-4227-A5F8-2E6EC9359E5F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{FDC1B8BF-0477-4227-A5F8-2E6EC9359E5F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{6AB4140A-1E23-404B-8959-99900CD60638}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6AB4140A-1E23-404B-8959-99900CD60638}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{02DD8AE9-96D0-4A54-8D0E-302DEE5A6A2E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{02DD8AE9-96D0-4A54-8D0E-302DEE5A6A2E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{08CAAB80-18B0-4946-AFEF-98D028E35590}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{08CAAB80-18B0-4946-AFEF-98D028E35590}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{1B83AB17-C1B9-47D4-9F5B-055B4CCC3FDE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{1B83AB17-C1B9-47D4-9F5B-055B4CCC3FDE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{1FF486D6-7873-4015-B44A-2820EDE5823F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{1FF486D6-7873-4015-B44A-2820EDE5823F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{29B91919-E138-4539-AA48-F971D0912D2D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{29B91919-E138-4539-AA48-F971D0912D2D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{2B7BFA7F-454A-430E-B9DF-C7AAE0D9FCCA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{2B7BFA7F-454A-430E-B9DF-C7AAE0D9FCCA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{2C7871CD-3511-421D-A439-968C1E0DD59E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{2C7871CD-3511-421D-A439-968C1E0DD59E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{458C0EC7-FEBD-4239-B23D-82EA914D0864}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{458C0EC7-FEBD-4239-B23D-82EA914D0864}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{54F67D4C-7A3E-4F32-84E8-CB9D9468AE56}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{54F67D4C-7A3E-4F32-84E8-CB9D9468AE56}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{659BF56C-F262-4E20-8380-2A2CAEFC3EA3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{659BF56C-F262-4E20-8380-2A2CAEFC3EA3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{6AF5EC4A-417F-46A7-9C37-1F5B72F37ABF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6AF5EC4A-417F-46A7-9C37-1F5B72F37ABF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{6CEBC6F0-2B74-4648-BEBF-7E71EC1DAEB1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6CEBC6F0-2B74-4648-BEBF-7E71EC1DAEB1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{7814B495-B815-4B24-86F7-E60447E095B0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{7814B495-B815-4B24-86F7-E60447E095B0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{952DB50D-5D44-4CFA-A4DB-41C7E4E5EC8C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{952DB50D-5D44-4CFA-A4DB-41C7E4E5EC8C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B29AD67D-9A61-4400-A0E7-74465BDE1EE3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B29AD67D-9A61-4400-A0E7-74465BDE1EE3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B52C6920-800E-4C77-947B-A52968CFA0CB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B52C6920-800E-4C77-947B-A52968CFA0CB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B3FAC187-0427-477F-9D45-77F0EA36EA39}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B3FAC187-0427-477F-9D45-77F0EA36EA39}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B7E34533-5E7E-4876-9139-607EB8BF6632}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B7E34533-5E7E-4876-9139-607EB8BF6632}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{CBC2580C-154B-471E-A625-4554CC1115A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{CBC2580C-154B-471E-A625-4554CC1115A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{CC951A0F-B210-4082-86E1-00915D4B86B4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{CC951A0F-B210-4082-86E1-00915D4B86B4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{DD59EFBD-763C-4311-BFB1-5C507CD9A905}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{DD59EFBD-763C-4311-BFB1-5C507CD9A905}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{FBECEF26-37F8-4AE0-B543-F04BA576D8C6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{FBECEF26-37F8-4AE0-B543-F04BA576D8C6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{FF149A56-F6EA-4CC7-83DC-44678953B284}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{FF149A56-F6EA-4CC7-83DC-44678953B284}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\InstallService" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{059D9331-5A51-4402-9307-4C683B0D1147}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0EB8D77C-C9FD-4883-934F-0132A8E4A49D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1C2BD020-AC72-41B2-9361-70B162292163}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{26E56E2C-DC7E-4991-973E-955E88AC589F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{473F6ACA-11C3-4B73-836A-FF87091747CC}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{799B2EE5-F65B-4D43-B7DA-46F8FFC2FCFF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7D4C7538-4C7A-4163-A727-8784301B765E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9B15F69A-D0FD-4174-968A-90FC1AC0E99D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{EDCBA1CA-C34E-4EE6-9C72-691B30E1CCF5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{059D9331-5A51-4402-9307-4C683B0D1147}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{059D9331-5A51-4402-9307-4C683B0D1147}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{0EB8D77C-C9FD-4883-934F-0132A8E4A49D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0EB8D77C-C9FD-4883-934F-0132A8E4A49D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{1C2BD020-AC72-41B2-9361-70B162292163}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{1C2BD020-AC72-41B2-9361-70B162292163}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{26E56E2C-DC7E-4991-973E-955E88AC589F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{26E56E2C-DC7E-4991-973E-955E88AC589F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{473F6ACA-11C3-4B73-836A-FF87091747CC}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{473F6ACA-11C3-4B73-836A-FF87091747CC}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{799B2EE5-F65B-4D43-B7DA-46F8FFC2FCFF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{799B2EE5-F65B-4D43-B7DA-46F8FFC2FCFF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{7D4C7538-4C7A-4163-A727-8784301B765E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{7D4C7538-4C7A-4163-A727-8784301B765E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{9B15F69A-D0FD-4174-968A-90FC1AC0E99D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{9B15F69A-D0FD-4174-968A-90FC1AC0E99D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{EDCBA1CA-C34E-4EE6-9C72-691B30E1CCF5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{EDCBA1CA-C34E-4EE6-9C72-691B30E1CCF5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\International" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B45A6FA1-6FF9-44C5-9509-900DDCD019D8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\MUI" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{D7BC4C35-F712-400B-ACD8-866B14B32CBF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{D7BC4C35-F712-400B-ACD8-866B14B32CBF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{D7BC4C35-F712-400B-ACD8-866B14B32CBF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Network Connectivity Status Indicator" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8BC77E51-DEFE-4306-8D8D-81B9F7F58FC8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{8BC77E51-DEFE-4306-8D8D-81B9F7F58FC8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8BC77E51-DEFE-4306-8D8D-81B9F7F58FC8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\NlaSvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5B699D15-1566-4BEA-8966-BC4D450DD0A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{5B699D15-1566-4BEA-8966-BC4D450DD0A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5B699D15-1566-4BEA-8966-BC4D450DD0A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Printing" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5B0D81E9-2EB2-4CFF-B839-20355C7AC366}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6163D23D-39B3-467D-97B5-7A2CA31C1D67}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A34F4CC3-E653-4FF0-ADA8-873940648DAB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{5B0D81E9-2EB2-4CFF-B839-20355C7AC366}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6163D23D-39B3-467D-97B5-7A2CA31C1D67}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{6163D23D-39B3-467D-97B5-7A2CA31C1D67}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A34F4CC3-E653-4FF0-ADA8-873940648DAB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A34F4CC3-E653-4FF0-ADA8-873940648DAB}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5B0D81E9-2EB2-4CFF-B839-20355C7AC366}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsUpdate\RetailDemo" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\RetailDemo" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{880B9D61-BF97-4850-97D8-CD9EBFC4488A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{880B9D61-BF97-4850-97D8-CD9EBFC4488A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{880B9D61-BF97-4850-97D8-CD9EBFC4488A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SharedPC" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{53506B8F-99E9-4145-9CCC-50B04154D098}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{53506B8F-99E9-4145-9CCC-50B04154D098}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{53506B8F-99E9-4145-9CCC-50B04154D098}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SpacePort" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{14E63E1B-AD96-437E-BFEE-F59FF747F268}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{30EE6476-17BC-44E5-86E4-95D829CCE9D8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6975671E-AFEA-4A61-AEA1-2B47540A6662}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{808E1D53-36A3-4490-96DE-185D2CA70024}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{94BB63B5-6CF8-4A0C-8B2E-B3E8DFC00382}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9D689248-5A57-4396-B1CB-089CEA51E1FA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A68EC7F0-7931-4D9B-A56C-D187F77B389D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A77E5D0B-1773-4E38-A8EE-AD2315E4DC54}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B888ED23-17A6-439D-BA69-87D31C101150}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BD575A76-6A43-4968-827C-9959C27B7340}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{14E63E1B-AD96-437E-BFEE-F59FF747F268}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{14E63E1B-AD96-437E-BFEE-F59FF747F268}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{30EE6476-17BC-44E5-86E4-95D829CCE9D8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{30EE6476-17BC-44E5-86E4-95D829CCE9D8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{6975671E-AFEA-4A61-AEA1-2B47540A6662}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6975671E-AFEA-4A61-AEA1-2B47540A6662}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{808E1D53-36A3-4490-96DE-185D2CA70024}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{808E1D53-36A3-4490-96DE-185D2CA70024}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{94BB63B5-6CF8-4A0C-8B2E-B3E8DFC00382}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{94BB63B5-6CF8-4A0C-8B2E-B3E8DFC00382}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{9D689248-5A57-4396-B1CB-089CEA51E1FA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{9D689248-5A57-4396-B1CB-089CEA51E1FA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A68EC7F0-7931-4D9B-A56C-D187F77B389D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A68EC7F0-7931-4D9B-A56C-D187F77B389D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A77E5D0B-1773-4E38-A8EE-AD2315E4DC54}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A77E5D0B-1773-4E38-A8EE-AD2315E4DC54}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B888ED23-17A6-439D-BA69-87D31C101150}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B888ED23-17A6-439D-BA69-87D31C101150}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{BD575A76-6A43-4968-827C-9959C27B7340}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{BD575A76-6A43-4968-827C-9959C27B7340}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Sysmain" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{36D29716-1602-4241-B54A-2CF33DFAE58E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3BC0EB9C-2E9A-4384-B801-EFB0461B2A3F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{651FC681-73DD-484E-ADD8-9A8734B6E823}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{781FFA90-8F87-42A8-8A0B-BD32D2DC2B0F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{781FFA90-8F87-42A8-8A0B-BD32D2DC2B0F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{781FFA90-8F87-42A8-8A0B-BD32D2DC2B0F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{36D29716-1602-4241-B54A-2CF33DFAE58E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{36D29716-1602-4241-B54A-2CF33DFAE58E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{3BC0EB9C-2E9A-4384-B801-EFB0461B2A3F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3BC0EB9C-2E9A-4384-B801-EFB0461B2A3F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{651FC681-73DD-484E-ADD8-9A8734B6E823}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{651FC681-73DD-484E-ADD8-9A8734B6E823}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SystemRestore" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{67FE7B93-E5C8-44B5-B56D-26C964775D05}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{67FE7B93-E5C8-44B5-B56D-26C964775D05}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{67FE7B93-E5C8-44B5-B56D-26C964775D05}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Task Manager" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{07A7F046-F3DC-46EB-A704-B937C235A279}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{07A7F046-F3DC-46EB-A704-B937C235A279}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{07A7F046-F3DC-46EB-A704-B937C235A279}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TPM" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{06EDBAC4-E340-456F-B575-D896199F3A1A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2DB99A37-9E45-4AF9-B601-0D451054EE70}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{06EDBAC4-E340-456F-B575-D896199F3A1A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{06EDBAC4-E340-456F-B575-D896199F3A1A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{2DB99A37-9E45-4AF9-B601-0D451054EE70}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{2DB99A37-9E45-4AF9-B601-0D451054EE70}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UNP" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A7825AD3-0163-48D7-89A1-03C4CAC8915F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A7825AD3-0163-48D7-89A1-03C4CAC8915F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A7825AD3-0163-48D7-89A1-03C4CAC8915F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\User Profile Service" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7700D85D-2831-4793-9926-AB8F0B48B5A2}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{7700D85D-2831-4793-9926-AB8F0B48B5A2}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{7700D85D-2831-4793-9926-AB8F0B48B5A2}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WCM" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F032903F-05B5-4155-A9CA-2A95C87A60D6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F032903F-05B5-4155-A9CA-2A95C87A60D6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F032903F-05B5-4155-A9CA-2A95C87A60D6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WlanSvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1F958D85-ED56-4ADC-A5CB-02B06925582C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{1F958D85-ED56-4ADC-A5CB-02B06925582C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{1F958D85-ED56-4ADC-A5CB-02B06925582C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2369D9CD-4681-433A-83FB-4C7EA7B55CEA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{2369D9CD-4681-433A-83FB-4C7EA7B55CEA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{2369D9CD-4681-433A-83FB-4C7EA7B55CEA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Error Reporting" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{197042B4-98BF-450C-B130-C7F5325F44C5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3C07BEF8-D0D8-4BF9-BE8C-CC1C9238D075}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3C733B76-F13E-4CE4-8AA2-64650EE1CEEE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8C92481A-408C-4DB3-A573-58356C50031D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{98CF8FDA-D33E-48ED-9DE8-1F412E0AA1F5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{197042B4-98BF-450C-B130-C7F5325F44C5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{197042B4-98BF-450C-B130-C7F5325F44C5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{3C07BEF8-D0D8-4BF9-BE8C-CC1C9238D075}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3C07BEF8-D0D8-4BF9-BE8C-CC1C9238D075}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{3C733B76-F13E-4CE4-8AA2-64650EE1CEEE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3C733B76-F13E-4CE4-8AA2-64650EE1CEEE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{8C92481A-408C-4DB3-A573-58356C50031D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8C92481A-408C-4DB3-A573-58356C50031D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{98CF8FDA-D33E-48ED-9DE8-1F412E0AA1F5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{98CF8FDA-D33E-48ED-9DE8-1F412E0AA1F5}s" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Customer Experience Improvement Program" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7E6898CA-8BD1-47B8-B340-DFB97C0BE8A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E3F34A51-72D2-43BA-BEF7-F16A3B95B4F8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E3F34A51-72D2-43BA-BEF7-F16A3B95B4F8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{7E6898CA-8BD1-47B8-B340-DFB97C0BE8A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{E3F34A51-72D2-43BA-BEF7-F16A3B95B4F8}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{7E6898CA-8BD1-47B8-B340-DFB97C0BE8A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsColorSystem" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{53243377-CA1A-4ED1-AF0D-3666FF7DE358}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{53243377-CA1A-4ED1-AF0D-3666FF7DE358}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{53243377-CA1A-4ED1-AF0D-3666FF7DE358}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{791266D0-A150-495D-9093-E1CFF53B1FFE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\ExploitGuard" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{139345D4-2D59-4079-B4D1-A071822FD49D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{26E36B29-4572-442E-87C5-401298030DBF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5920CD13-02C2-4EE1-8E9A-E926843C5844}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{75C4B784-C428-402E-B1A5-277A0B6BA92C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{92365EFA-609E-4C23-BCA2-CAD09D743059}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{139345D4-2D59-4079-B4D1-A071822FD49D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{139345D4-2D59-4079-B4D1-A071822FD49D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{26E36B29-4572-442E-87C5-401298030DBF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{26E36B29-4572-442E-87C5-401298030DBF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{5920CD13-02C2-4EE1-8E9A-E926843C5844}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5920CD13-02C2-4EE1-8E9A-E926843C5844}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{75C4B784-C428-402E-B1A5-277A0B6BA92C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{75C4B784-C428-402E-B1A5-277A0B6BA92C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{92365EFA-609E-4C23-BCA2-CAD09D743059}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{92365EFA-609E-4C23-BCA2-CAD09D743059}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Defender" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1D8833F5-C30F-46AA-93D7-EC2D59695F0C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{26B856E6-8B78-4574-81D7-834F8CB4D405}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{465D71B0-41EB-4EA6-9F6A-2DE7B69D735E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{93D43726-EE9D-4ADB-B475-585D1B354F1C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{1D8833F5-C30F-46AA-93D7-EC2D59695F0C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{1D8833F5-C30F-46AA-93D7-EC2D59695F0C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{26B856E6-8B78-4574-81D7-834F8CB4D405}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{26B856E6-8B78-4574-81D7-834F8CB4D405}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{465D71B0-41EB-4EA6-9F6A-2DE7B69D735E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{465D71B0-41EB-4EA6-9F6A-2DE7B69D735E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{93D43726-EE9D-4ADB-B475-585D1B354F1C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{93D43726-EE9D-4ADB-B475-585D1B354F1C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskDiagnostic" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7F2DA095-D54F-4B13-B246-9B6F33A50E83}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CDF54DC6-6DCD-410E-A3F0-003BB1289F40}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{CDF54DC6-6DCD-410E-A3F0-003BB1289F40}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{7F2DA095-D54F-4B13-B246-9B6F33A50E83}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{CDF54DC6-6DCD-410E-A3F0-003BB1289F40}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{7F2DA095-D54F-4B13-B246-9B6F33A50E83}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Input" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{091B719C-CF94-4362-82FF-8D45F58374B6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{30A8D71D-CEB2-44EF-8055-D0FF7DE966EA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4B0C2734-F122-4E42-ABA0-E76454CCD09E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8418A974-2519-4417-9AE6-6C274E376592}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9229E37C-4ED6-471F-9CF5-49C3FEC14C5D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F33D149E-A3FA-442B-AFA5-25A71A2B6B9A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{091B719C-CF94-4362-82FF-8D45F58374B6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{30A8D71D-CEB2-44EF-8055-D0FF7DE966EA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{4B0C2734-F122-4E42-ABA0-E76454CCD09E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8418A974-2519-4417-9AE6-6C274E376592}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{9229E37C-4ED6-471F-9CF5-49C3FEC14C5D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F33D149E-A3FA-442B-AFA5-25A71A2B6B9A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maps" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{379B1D81-1A85-4464-9388-7C9B04BC0533}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{899D2275-7F52-4728-A805-7DFD2063D163}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CDEF0487-03DA-4CA0-B937-03C67651D8BD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{379B1D81-1A85-4464-9388-7C9B04BC0533}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{899D2275-7F52-4728-A805-7DFD2063D163}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{899D2275-7F52-4728-A805-7DFD2063D163}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{CDEF0487-03DA-4CA0-B937-03C67651D8BD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{CDEF0487-03DA-4CA0-B937-03C67651D8BD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2409B88C-473B-428B-8795-4C32D7822C9F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C9D09D2D-8C0A-4A0F-A699-4125AD19EF9C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Media Sharing" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0A91F0B0-8E9B-42DC-BECA-5141371BD67C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{0A91F0B0-8E9B-42DC-BECA-5141371BD67C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0A91F0B0-8E9B-42DC-BECA-5141371BD67C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\MemoryDiagnostic" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{74F6069B-3D81-479E-AA67-42CE80F16799}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B97E9B4F-4348-4D52-8204-5EB3B9E3351C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{74F6069B-3D81-479E-AA67-42CE80F16799}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{74F6069B-3D81-479E-AA67-42CE80F16799}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B97E9B4F-4348-4D52-8204-5EB3B9E3351C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B97E9B4F-4348-4D52-8204-5EB3B9E3351C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Registry" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F4B93C4D-2F97-4306-92A2-B7E5252DD68F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F4B93C4D-2F97-4306-92A2-B7E5252DD68F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F4B93C4D-2F97-4306-92A2-B7E5252DD68F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\RemoteApp and Desktop Connections Update" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\RemoteAssistance" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{10B3DD77-3048-41E7-A34D-5FF120D33FA4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{10B3DD77-3048-41E7-A34D-5FF120D33FA4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{10B3DD77-3048-41E7-A34D-5FF120D33FA4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Speech" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{DFB39A70-09AC-40E7-BFFE-5798161E3900}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{DFB39A70-09AC-40E7-BFFE-5798161E3900}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{DFB39A70-09AC-40E7-BFFE-5798161E3900}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SyncCenter" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Device Setup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DeviceDirectoryClient" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Device Information" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Feedback" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WDI" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Servicing" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4C5BCB25-2C1D-40F3-A779-FDE6280DB867}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Management\Provisioning" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0E511F8F-D1BF-49C8-B1B9-A6C784A17EDA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1D3D9B10-30A4-459E-8B32-248CAD0EB7EF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3EFB737D-965A-4364-8CBA-CCDA345B1C71}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{76300FA9-9EB5-4A2C-8087-029276F64728}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{825F76D6-EA34-4133-BF96-B416888766A3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8D567D13-E3B8-4273-84F4-C743E60872CC}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BAE9F0C3-0DB3-494E-BC0B-42703170C272}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C6D0FF06-5886-4924-93EB-851D6F3CBD06}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{81272F44-D745-4699-8216-955865606EAC}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9FFC9FC7-ACE3-434F-A78C-43BBD0C1B871}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8B551B42-E746-49C9-A6F3-D9B988AE0914}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BE7B1C85-5B05-49EE-A887-1F23FF59A1EA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{68AB1C40-FB5C-490E-9513-733CCED864C1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{FB9EE28D-D0CA-4B6E-B47A-201C830C7006}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CD3A454B-E619-4AA6-85B5-B2D98ABC43A1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsUpdate\Automatic App Update" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsUpdate\Scheduled Start" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\ASUS Update Checker 2.0" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\AsusSystemAnalysis_754F3273-0563-4F20-B12F-826510B07474" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4581D3A7-E88E-4295-8698-BA17286D3D6D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsUpdate\Orchestrator\USOShared\RegPathsInHKLMToDump" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsUpdate\Orchestrator\USOShared\StaticFilePathsToDump" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsUpdate\Orchestrator\UScheduler_Oobe\EdgeUpdate" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{4581D3A7-E88E-4295-8698-BA17286D3D6D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{4581D3A7-E88E-4295-8698-BA17286D3D6D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Flighting" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1B4392D0-9525-42D2-8F4E-C86468EFDA3B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7E4DEF66-1FE8-4A84-BB69-6738B1A13902}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{7E4DEF66-1FE8-4A84-BB69-6738B1A13902}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{7E4DEF66-1FE8-4A84-BB69-6738B1A13902}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E3603BFB-5B2A-4961-8B82-438B4A83130E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E3603BFB-5B2A-4961-8B82-438B4A83130E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{E3603BFB-5B2A-4961-8B82-438B4A83130E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F86D701D-CFA0-4D72-A67C-71300DD04452}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F86D701D-CFA0-4D72-A67C-71300DD04452}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F86D701D-CFA0-4D72-A67C-71300DD04452}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\VisualStudio" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Wininet" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CFB2886F-8D31-4DF9-97BA-43F5D3456BBE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{CFB2886F-8D31-4DF9-97BA-43F5D3456BBE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{CFB2886F-8D31-4DF9-97BA-43F5D3456BBE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Work Folders" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6F5823AE-7D6E-4663-9DEB-7D17F2429755}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{6F5823AE-7D6E-4663-9DEB-7D17F2429755}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6F5823AE-7D6E-4663-9DEB-7D17F2429755}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{D4B7A230-0FD3-41A6-B968-17AEB78BF8CD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{D4B7A230-0FD3-41A6-B968-17AEB78BF8CD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{D4B7A230-0FD3-41A6-B968-17AEB78BF8CD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{18DD70F6-955A-4C21-B488-6F64842B9D27}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4D08C585-943D-4FD8-985F-6D5465FDCABA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Workplace Join" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{36EDEAE9-3523-4DB9-90FA-EAFD5892761E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{36EDEAE9-3523-4DB9-90FA-EAFD5892761E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{36EDEAE9-3523-4DB9-90FA-EAFD5892761E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C353DD88-F73D-41EB-A69F-6861EF1B17F7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{C353DD88-F73D-41EB-A69F-6861EF1B17F7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C353DD88-F73D-41EB-A69F-6861EF1B17F7}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E4DA6F9E-146A-4377-ACA2-2606C352C0D6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E4DA6F9E-146A-4377-ACA2-2606C352C0D6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{E4DA6F9E-146A-4377-ACA2-2606C352C0D6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Subsystem For Linux" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WwanSvc" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{54E16AC7-CC9B-45F9-B4AA-A546557821AD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{AC22CD13-D602-4CD6-8437-525BFB062DEA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{54E16AC7-CC9B-45F9-B4AA-A546557821AD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{54E16AC7-CC9B-45F9-B4AA-A546557821AD}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{AC22CD13-D602-4CD6-8437-525BFB062DEA" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{AC22CD13-D602-4CD6-8437-525BFB062DEA" /f

:: no windows update dll
del /f /q /s "C:\Windows\System32\wuaueng.dll"