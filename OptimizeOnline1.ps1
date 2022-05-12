# Powershell设置
$ErrorActionPreference = "SilentlyContinue"
$ProgressPreference = "SilentlyContinue"
$ConfirmPreference = "None"
$PSModuleAutoloadingPreference = "All"
Start-Transcript -Path c:\OptimizeOnline1.txt -Force
Set-ItemProperty -path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell" EnableScripts 1 -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\PowerShell") -ne $true) { New-Item "HKCU:\Software\Policies\Microsoft\Windows\PowerShell" -force }
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\PowerShell") -ne $true) { New-Item "HKLM:\Software\Policies\Microsoft\Windows\PowerShell" -force }
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell") -ne $true) { New-Item "HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" -force };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell' -Name 'ExecutionPolicy' -Value 'Unrestricted' -PropertyType String -Force

# Defender服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\WdBoot' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\WdFilter' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\Sense' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\WdNisDrv' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\WdNisSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\WinDefend' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\wscsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\ControlSet001\Services\SecurityHealthService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsSense.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
if ((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe") -ne $true) { New-Item "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smartscreen.exe' -Name 'Debugger' -Value '0' -PropertyType String -Force
# 管理此计算机对智能卡的取读访问
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SCardSvr' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ScDeviceEnum' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SCPolicySvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\scfilter' -Name 'Start' -Value 4 -PropertyType DWord -Force
# The service is responsible for registry and drivers virtualization (capturing of "luafv.sys" driver functions)
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\luafv' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 为从 Internet 安装 ActiveX 控件提供用户帐户控制验证
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AxInstSV' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 路由本地 AllJoyn 客户端的 AllJoyn 消息。如果停止此服务，则自身没有捆绑路由器的 AllJoyn 客户端将无法运行。
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AJRouter' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 当用户初次登录到这台电脑和添加新应用时，使应用进入就绪可用的状态。
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppReadiness' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppMgmt' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 确定并验证应用程序的标识。禁用此服务将阻止强制执行 AppLocker
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppIDSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
# 为 Internet 连接共享提供第三方协议插件的支持
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ALG' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 为部署 Microsoft Store 应用程序提供基础结构支持
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppXSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
# 蓝牙音频视频控制传输协议服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BthAvctpSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BTAGService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\bthserv' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 使用空闲网络带宽在后台传送文件
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BITS' -Name 'Start' -Value 3 -PropertyType DWord -Force
# 维护网络上计算机的更新列表，并将列表提供给计算机指定浏览
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Browser' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 承载 BitLocker 驱动器加密服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BDESVC' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Windows 备份
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wbengine' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 缓存来自本地子网上对等方的网络内容
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PeerDistSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 将用户证书和根证书从智能卡复制到当前用户的证书存储
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CertPropSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 提供对 Microsoft Store 的基础结构支持
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ClipSVC' -Name 'Start' -Value 3 -PropertyType DWord -Force
# Connected User Experiences and Telemetry 服务所启用的功能支持应用程序中用户体验和连接的用户体验
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DiagTrack' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 执行内容传递优化任务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DoSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Executes diagnostic actions for troubleshooting support
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\diagsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 诊断策略服务启用了 Windows 组件的问题检测、疑难解答和解决方案
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DPS' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 诊断服务主机被诊断策略服务用来承载需要在本地服务上下文中运行的诊断
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WdiServiceHost' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 诊断系统主机被诊断策略服务用来承载需要在本地系统上下文中运行的诊断
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WdiSystemHost' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 维护某个计算机内或某个网络中的计算机的 NTFS 文件之间的链接
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TrkWks' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 供应用程序访问已下载地图的 Windows 服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MapsBroker' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 提供用于在 NTFS 文件系统卷上存储加密文件的核心文件加密技术
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\EFS' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 启用企业应用程序管理
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\EntAppSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 将用户文件复制到备份位置以防意外丢失
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\fhsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 此服务将监视系统的当前位置并管理地理围栏
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Graphics performance monitor service
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 激活键盘、遥控器和其他多媒体设备上的热按钮并继续使用这些按钮
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\hidserv' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Hyper-V
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\HvHost' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmickvpexchange' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicguestinterface' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicshutdown' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicheartbeat' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicvmsession' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmictimesync' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicvss' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmicrdv' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\gencounter' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\vmgid' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\storflt' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 为家庭和小型办公网络提供网络地址转换、寻址、名称解析和/或入侵保护服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess' -Name 'Start' -Value 4 -PropertyType DWord -Force
# IP v6
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iphlpsvc' -Name 'Start' -Value 2 -PropertyType DWord -Force
# 诊断中心标准收集器服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 支持用户通过 Microsoft 帐户标识服务登录
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wlidsvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
# Manages App-V users and virtual applications
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppVClient' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 管理从这台计算机到远程 iSCSI 目标设备的 Internet SCSI (iSCSI)会话
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MSiSCSI' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Microsoft Passport
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NgcSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
# 管理卷影复制服务制作的基于软件的卷影副本
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\swprv' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Microsoft 存储空间管理提供程序的主机服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\smphost' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 为 Microsoft Store 提供基础结构支持
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\InstallService' -Name 'Start' -Value 3 -PropertyType DWord -Force
# 根据规则将消息路由到相应客户端
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SmsRouter' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 控制击键筛选和映射
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MsKeyboardFilter' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 支持与 Microsoft 云标识服务的集成
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\cloudidsvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
# 允许 Windows 应用商店应用从 Internet 接收通知的代理连接
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NcbService' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 提供 UI 组件的 DirectAccess 状态通知
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NcaSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 脱机文件服务在脱机文件缓存中执行维护活动
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CSC' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CscService' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 通过优化存储驱动器上的文件来帮助计算机更高效地运行
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\defragsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 在设备上管理电话服务状态
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PhoneSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 强制可移动大容量存储设备的组策略
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WPDBusEnum' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 此服务支持查看、发送和删除“问题报告”控制面板的系统级问题报告
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wercplsupport' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 此服务为程序兼容性助手(PCA)提供支持。PCA 监视由用户安装和运行的程序
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PcaSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 优质 Windows 音频视频体验(qWave)是用于 IP 家庭网络上的音频视频(AV)流应用程序的网络平台
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\QWAVE' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\QWAVEdrv' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 使远程用户能修改此计算机上的注册表设置
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 在局域网以及广域网环境中为企业提供路由服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 从各种传感器传送数据
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SensorDataService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SensrSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SensorService' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Shared PC Account Manager
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\shpamsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 为自动播放硬件事件提供通知
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ShellHWDetection' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 验证潜在的文件系统损坏
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\svsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 启动与静态映像获取事件关联的应用程序
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WiaRpc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Disable Memory Compression
Disable-MMAgent -MemoryCompression -PageCombining -ApplicationPreLaunch
# 维护和提高一段时间内的系统性能
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SysMain' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 提供 TCP/IP (NetBT) 服务上的 NetBIOS 和网络上客户端的 NetBIOS 名称解析的支持
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lmhosts' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBIOS' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 提供电话服务 API (TAPI)支持
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TapiSrv' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 协调执行 WinRT 应用程序的后台作业
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
# 为应用程序和 OS 设置漫游提供支持
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\UevAgentService' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 管理并执行用于备份和其它用途的卷影复制
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\VSS' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 电子钱包客户端使用的主机对象
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WalletService' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Web 威胁防御终结点服务通过识别试图获取用户凭据访问权限的未经授权的实体来帮助保护计算机
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\webthreatdefsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Windows 生物识别服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WbioSrvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 允许多个客户端从相机设备访问视频帧
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\FrameServer' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\FrameServerMonitor' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\StiSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Windows 立即连接配置，该配置是 Microsoft 执行的无线保护设置(WPS)协议
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wcncsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Windows Error Reporting Service
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WerSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 使用通用即插即用设备与其他网络播放机和媒体设备共享 Windows Media Player 媒体库
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 启用混合现实 OpenXR 运行时功能
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MixedRealityOpenXRSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 为文件、电子邮件和其他内容提供内容索引、属性缓存和搜索结果
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WSearch' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WSearch' -Name 'DelayedAutoStart' -Value 0 -PropertyType DWord -Force
# Windows 远程管理(WinRM)服务执行 WS-Management 协议来实现远程管理
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WinRM' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 维护在网络上的所有客户端和服务器的时间和日期同步
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\W32Time' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SDRSVC' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 启用空间感知、空间输入和全息绘制
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\spectrum' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\perceptionsimulation' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SharedRealitySvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\VacSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Windows 移动热点服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\icssvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Windows 预览体验成员服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wisvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# WLAN Direct 服务连接管理器服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WFDSConMgrSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 该服务管理移动宽带(GSM 和 CDMA)数据卡/嵌入式模块适配器和自动配置网络的连接
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WwanSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 管理付款和基于近场通信(NFC)的安全元件
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SEMgrSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 家长控制
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WpcMonSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 建议疑难解答服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 连接设备平台服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CDPSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 零售演示服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RetailDemo' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 嵌入模式
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\embeddedmode' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 此服务执行许多系统组件使用的后台系统清单、兼容性评估和维护
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\InventorySvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 路由设备收到的无线应用程序协议 (WAP) 推送消息并同步设备管理会话
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\dmwappushservice' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 此服务基于移动网络中的 NITZ 消息设置时间
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\autotimesvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 网络数据使用量，流量上限，限制背景数据，按流量计费的网络
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DusmSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 自动设置系统时区
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\tzautoupdate' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 自然身份验证
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NaturalAuthentication' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 无线电管理和飞行模式服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RmSvc' -Name 'Start' -Value 2 -PropertyType DWord -Force
# netlogon
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Netlogon' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Performance Logs & Alerts
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\pla' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Remote Procedure Call (RPC) Locator
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RpcLocator' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Secondary Logon
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\seclogon' -Name 'Start' -Value 4 -PropertyType DWord -Force
# SNMP Trap / SNMP 陷阱
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SNMPTrap' -Name 'Start' -Value 4 -PropertyType DWord -Force
# WarpJITSvc
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WarpJITSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# WMI Performance Adapter
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wmiApSrv' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Remote Desktop 远程桌面相关
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\terminpt' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SessionEnv' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TsUsbGD' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TermService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\UmRdpService' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\tsusbhub' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TsUsbFlt' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 管理“网络和拨号连接”文件夹中对象，在其中你可以查看局域网和远程连接
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Netman' -Name 'Start' -Value 2 -PropertyType DWord -Force
# 用于管理显示增强(如亮度控制)的服务
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\DisplayEnhancementService' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Provides apps access to structured user data, including contact info, calendars, messages, and other content.
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\UserDataSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Disable if you don't use or plan to use Bluetooth devices
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BluetoothUserService' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 禁用分用户服务
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *AarSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BcastDVRUserService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *BluetoothUserService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CaptureService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *cbdhsvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CDPUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *ConsentUxUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *CredentialEnrollmentManagerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DeviceAssociationBrokerSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *DevicePickerUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *MessagingService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *OneSyncSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UserDataSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PimIndexMaintenanceSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PrintWorkflowUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UdkUserSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *UnistoreSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *NPSMSvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *PenService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *P9RdrService* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
Get-ChildItem -Path 'HKLM:\SYSTEM\CurrentControlSet\Services' | Where-Object -Property Name -Like *webthreatdefusersvc* | Set-ItemProperty -Name Start -Value 4 -Force -PassThru | Set-ItemProperty -Name UserServiceFlags -Value 0 -Force
# xbox相关
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\XboxGipSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\XblAuthManager' -Name 'Start' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\XblGameSave' -Name 'Start' -Value 3 -PropertyType DWord -Force
# 启用uPnP
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SSDPSRV' -Name 'Start' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\upnphost' -Name 'Start' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\FdPHost' -Name 'Start' -Value 2 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\FDResPub' -Name 'Start' -Value 2 -PropertyType DWord -Force
# 蓝牙
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BthA2dp' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BthEnum' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BthHFEnum' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BthLEEnum' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BthMini' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BTHMODEM' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BTHPORT' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\BTHUSB' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 第三方驱动
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
# TieringEngineService
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\TieringEngineService' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Theme
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Themes' -Name 'Start' -Value 3 -PropertyType DWord -Force
# StorSvc
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\StorSvc' -Name 'Start' -Value 3 -PropertyType DWord -Force
# Remote Access Auto Connection Manager
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RasAuto' -Name 'Start' -Value 4 -PropertyType DWord -Force
# PushToInstall
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PushToInstall' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Web DAV
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MRxDAV' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\WebClient' -Name 'Start' -Value 4 -PropertyType DWord -Force
# File Mapping NetBIOS Over TCP/IP Transport Driver
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT' -Name 'Start' -Value 3 -PropertyType DWord -Force
# Peer Networking Identity Manager
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\p2pimsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\p2psvcc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# NDIS Cap
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NdisCap' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Virtual NIC Enumerator
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NdisVirtualBus' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Microsoft Kernel Debug Network Miniport (NDIS 6.20)
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\kdnic' -Name 'Start' -Value 4 -PropertyType DWord -Force
# PNRPAutoReg
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PNRPAutoReg' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PNRPsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# System Guard
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SgrmAgent' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\SgrmBroker' -Name 'Start' -Value 4 -PropertyType DWord -Force
#nVidia SATA
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvraid' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\nvstor' -Name 'Start' -Value 4 -PropertyType DWord -Force
# 1394ohci
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\1394ohci' -Name 'Start' -Value 4 -PropertyType DWord -Force
# SCSI miniport
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\3ware' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Windows Cloud Files Filter Driver
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CldFlt' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Floppy Disk Controller Driver
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\fdc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Floppy Disk Driver
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\flpydisk' -Name 'Start' -Value 4 -PropertyType DWord -Force
# High-Capacity Floppy Disk Drive
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\sfloppy' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Windows Network Data Usage Monitoring Driver
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Ndu' -Name 'Start' -Value 4 -PropertyType DWord -Force
# lltdsvc
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lltdsvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# print
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Spooler' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\PrintNotify' -Name 'Start' -Value 4 -PropertyType DWord -Force
# RmSvc
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\RmSvc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# NcdAutoSetup
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\NcdAutoSetup' -Name 'Start' -Value 4 -PropertyType DWord -Force
# https://docs.microsoft.com/en-us/windows/compatibility/desktop-activity-moderator
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\dam' -Name 'Start' -Value 4 -PropertyType DWord -Force
# bam.sys
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\bam' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Microsoft Hyper-V VHDPMEM BTT Filter
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\bttflt' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Acx01000
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Acx01000' -Name 'Start' -Value 4 -PropertyType DWord -Force
# amdsata
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\amdsata' -Name 'Start' -Value 4 -PropertyType DWord -Force
# amdsbs
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\amdsbs' -Name 'Start' -Value 4 -PropertyType DWord -Force
# amdxata
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\amdxata' -Name 'Start' -Value 4 -PropertyType DWord -Force
# applockerfltr
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\applockerfltr' -Name 'Start' -Value 4 -PropertyType DWord -Force
# AppvStrm
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppvStrm' -Name 'Start' -Value 4 -PropertyType DWord -Force
# AppvVemgr
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppvVemgr' -Name 'Start' -Value 4 -PropertyType DWord -Force
# AppvVfs
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AppvVfs' -Name 'Start' -Value 4 -PropertyType DWord -Force
# AsyncMac
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\AsyncMac' -Name 'Start' -Value 4 -PropertyType DWord -Force
# atapi
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\atapi' -Name 'Start' -Value 4 -PropertyType DWord -Force
# buttonconverter
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\buttonconverter' -Name 'Start' -Value 4 -PropertyType DWord -Force
# CAD
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CAD' -Name 'Start' -Value 4 -PropertyType DWord -Force
# circlass
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\circlass' -Name 'Start' -Value 4 -PropertyType DWord -Force
# CmBatt
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\CmBatt' -Name 'Start' -Value 4 -PropertyType DWord -Force
# dmvsc - https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831766(v=ws.11)
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\dmvsc' -Name 'Start' -Value 4 -PropertyType DWord -Force
# EhStorTcgDrv - Microsoft driver for storage devices supporting IEEE 1667 and TCG protocols
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\EhStorTcgDrv' -Name 'Start' -Value 4 -PropertyType DWord -Force
# ErrDev - Microsoft Hardware Error Device Driver
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\ErrDev' -Name 'Start' -Value 4 -PropertyType DWord -Force
# exfat
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\exfat' -Name 'Start' -Value 4 -PropertyType DWord -Force
# Filetrace
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\Filetrace' -Name 'Start' -Value 4 -PropertyType DWord -Force
# CD
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\cdrom' -Name 'AutoRun' -Value 0 -PropertyType DWord -Force
# volmgrx
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\volmgrx' -Name 'Start' -Value 4 -PropertyType DWord -Force
# wcifs
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\wcifs' -Name 'Start' -Value 4 -PropertyType DWord -Force
# storqosflt
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\storqosflt' -Name 'Start' -Value 4 -PropertyType DWord -Force
# lltdio
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\lltdio' -Name 'Start' -Value 4 -PropertyType DWord -Force
# MsLldp
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\MsLldp' -Name 'Start' -Value 4 -PropertyType DWord -Force
# rspndr
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\rspndr' -Name 'Start' -Value 4 -PropertyType DWord -Force
# spaceport
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\spaceport' -Name 'Start' -Value 4 -PropertyType DWord -Force

#######################################################################################################################################################################

#  *************Intel平台串行GPIO***************
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
#  *************Intel平台STAT驱动 *************
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaStorAVC' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\iaStorV' -Name 'Start' -Value 4 -PropertyType DWord -Force
#  *************Intel磁盘驱动 *************
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\intelide' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\intelpep' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\intelpmax' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\IntelPMT' -Name 'Start' -Value 4 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Services\intelppm' -Name 'Start' -Value 4 -PropertyType DWord -Force
#  *************AMD缓存*************
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'SecondLevelDataCache' -Value 3072 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'FirstLevelDataCache' -Value 384 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'ThirdLevelDataCache' -Value 32768 -PropertyType DWord -Force

#######################################################################################################################################################################

# 移除计划任务
Get-ScheduledTask -TaskPath '*' | Disable-ScheduledTask
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTask'
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTaskLogon'
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\SoftwareProtectionPlatform' -TaskName 'SvcRestartTaskNetwork'
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\UPnP' -TaskName 'UPnPHostConfig'
Enable-ScheduledTask -TaskPath '\Microsoft\Windows\TextServicesFramework' -TaskName 'MsCtfMonitor'
Enable-ScheduledTask -TaskName 'Process Lasso Core Engine Only'
Enable-ScheduledTask -TaskName 'Process Lasso Management Console (GUI)'
Enable-ScheduledTask -TaskName 'Session agent for Process Lasso'

#######################################################################################################################################################################

# 移除无用的Packages
Set-ItemProperty -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Name Visibility -Value '1' -Force
Remove-Item -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Include *Owner* -Recurse -Force
Get-ChildItem -Path 'REGISTRY::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages\*Windows-Defender*' -Name | ForEach-Object { dism /online /remove-package /PackageName:$_ /NoRestart }

#######################################################################################################################################################################

# 禁用AutoLogger
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener' -Name 'Start' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession' -Name 'Start' -Value 0 -PropertyType DWord -Force

# prevent computer from sending data to microsoft regarding its activation state
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Classes\AppID\slui.exe') -ne $true) { New-Item 'HKLM:\SOFTWARE\Classes\AppID\slui.exe' -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AppID\slui.exe' -Name 'NoGenTicket' -Value 1 -PropertyType DWord -Force
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform') -ne $true) { New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' -Name 'NoGenTicket' -Value 1 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' -Name 'NoAcquireGT' -Value 1 -PropertyType DWord -Force

# DWM Lag
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -Name 'AllowHeadlessExecution' -Value 0 -PropertyType DWord -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\BackgroundModel\BackgroundAudioPolicy' -Name 'InactivityTimeoutMs' -Value 1 -PropertyType DWord -Force

# Game PresenceWriter
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter' -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter' -Name 'ActivationType' -Value 0 -PropertyType DWord -Force

# https://docs.microsoft.com/en-us/windows/win32/wininet/caching?
# https://www.codeproject.com/articles/1158641/windows-continuous-disk-write-plus-webcachev-dat-p
# Disable WinInetCacheServer (WinINet Caching/V01.log/WebCacheV01.dat)
# %LocalAppData%\Microsoft\Windows\WebCache
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}' -Name 'AppID' -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\Classes\WOW6432Node\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\WOW6432Node\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}' -Name 'AppID' -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Classes\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" -force;
Remove-Item -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Classes\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}" -Recurse -force;

# XP图标
if ((Test-Path -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons') -ne $true) { New-Item 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -force }
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '0' -Value '%SystemRoot%\XP_SP2_shell32.dll,0' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '1' -Value '%SystemRoot%\XP_SP2_shell32.dll,1' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '2' -Value '%SystemRoot%\XP_SP2_shell32.dll,2' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '3' -Value '%SystemRoot%\XP_SP2_shell32.dll,3' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '4' -Value '%SystemRoot%\XP_SP2_shell32.dll,4' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '5' -Value '%SystemRoot%\XP_SP2_shell32.dll,5' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '6' -Value '%SystemRoot%\XP_SP2_shell32.dll,6' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '7' -Value '%SystemRoot%\XP_SP2_shell32.dll,7' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '8' -Value '%SystemRoot%\XP_SP2_shell32.dll,8' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '9' -Value '%SystemRoot%\XP_SP2_shell32.dll,9' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '10' -Value '%SystemRoot%\XP_SP2_shell32.dll,10' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '11' -Value '%SystemRoot%\XP_SP2_shell32.dll,11' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '12' -Value '%SystemRoot%\XP_SP2_shell32.dll,12' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '13' -Value '%SystemRoot%\XP_SP2_shell32.dll,13' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '14' -Value '%SystemRoot%\XP_SP2_shell32.dll,14' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '15' -Value '%SystemRoot%\XP_SP2_shell32.dll,15' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '16' -Value '%SystemRoot%\XP_SP2_shell32.dll,16' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '17' -Value '%SystemRoot%\XP_SP2_shell32.dll,17' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '18' -Value '%SystemRoot%\XP_SP2_shell32.dll,18' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '19' -Value '%SystemRoot%\XP_SP2_shell32.dll,19' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '20' -Value '%SystemRoot%\XP_SP2_shell32.dll,20' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '21' -Value '%SystemRoot%\XP_SP2_shell32.dll,21' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '22' -Value '%SystemRoot%\XP_SP2_shell32.dll,22' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '23' -Value '%SystemRoot%\XP_SP2_shell32.dll,23' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '24' -Value '%SystemRoot%\XP_SP2_shell32.dll,24' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '25' -Value '%SystemRoot%\XP_SP2_shell32.dll,25' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '26' -Value '%SystemRoot%\XP_SP2_shell32.dll,26' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '27' -Value '%SystemRoot%\XP_SP2_shell32.dll,27' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '28' -Value '%SystemRoot%\XP_SP2_shell32.dll,28' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '29' -Value '%SystemRoot%\XP_SP2_shell32.dll,29' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '30' -Value '%SystemRoot%\XP_SP2_shell32.dll,30' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '31' -Value '%SystemRoot%\XP_SP2_shell32.dll,31' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '32' -Value '%SystemRoot%\XP_SP2_shell32.dll,32' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '33' -Value '%SystemRoot%\XP_SP2_shell32.dll,33' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '34' -Value '%SystemRoot%\XP_SP2_shell32.dll,34' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '35' -Value '%SystemRoot%\XP_SP2_shell32.dll,35' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '36' -Value '%SystemRoot%\XP_SP2_shell32.dll,36' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '37' -Value '%SystemRoot%\XP_SP2_shell32.dll,37' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '38' -Value '%SystemRoot%\XP_SP2_shell32.dll,38' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '39' -Value '%SystemRoot%\XP_SP2_shell32.dll,39' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '40' -Value '%SystemRoot%\XP_SP2_shell32.dll,40' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '41' -Value '%SystemRoot%\XP_SP2_shell32.dll,41' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '42' -Value '%SystemRoot%\XP_SP2_shell32.dll,42' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '43' -Value '%SystemRoot%\XP_SP2_shell32.dll,43' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '44' -Value '%SystemRoot%\XP_SP2_shell32.dll,44' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '45' -Value '%SystemRoot%\XP_SP2_shell32.dll,45' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '46' -Value '%SystemRoot%\XP_SP2_shell32.dll,46' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '47' -Value '%SystemRoot%\XP_SP2_shell32.dll,47' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '48' -Value '%SystemRoot%\XP_SP2_shell32.dll,48' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '49' -Value '%SystemRoot%\XP_SP2_shell32.dll,49' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '50' -Value '%SystemRoot%\XP_SP2_shell32.dll,50' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '51' -Value '%SystemRoot%\XP_SP2_shell32.dll,51' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '52' -Value '%SystemRoot%\XP_SP2_shell32.dll,52' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '53' -Value '%SystemRoot%\XP_SP2_shell32.dll,53' -PropertyType String -Force
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons' -Name '54' -Value '%SystemRoot%\XP_SP2_shell32.dll,54' -PropertyType String -Force
