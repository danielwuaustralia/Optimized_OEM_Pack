@echo on
color 0a

:: install drivers
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\PnPUnattend\DriverPaths\1" /f /v "Path" /t REG_SZ /d "C:\TEMP\Drivers"
"C:\Windows\System32\pnpunattend.exe" AuditSystem /L

:: pre config
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "TEMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "TMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg add "HKLM\SOFTWARE\DefaultUserEnvironment" /v "TEMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg add "HKLM\SOFTWARE\DefaultUserEnvironment" /v "TMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg add "HKEY_USERS\.DEFAULT\Environment" /v "TEMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg add "HKEY_USERS\.DEFAULT\Environment" /v "TMP" /t REG_EXPAND_SZ /d "C:\TEMP" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell" /v "EnableScripts" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell" /v "ExecutionPolicy" /t REG_SZ /d "Bypass" /f
reg add "HKLM\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t REG_SZ /d "Bypass" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableSR" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableConfig" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableSR" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Update" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate" /v "value" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "DontSearchWindowsUpdate" /t REG_DWORD /d "1" /f
dism /english /Online /Remove-DefaultAppAssociations
dism /english /Online /Set-ReservedStorageState /State:Disabled
reagentc /disable
compact /CompactOS:Never

:: remove OneDrive
taskkill /F /IM OneDrive.exe
del /f /q "C:\Windows\System32\OneDriveSetup.exe"
powershell -noprofile -executionpolicy bypass -command "Remove-Item -Path 'C:\Windows\WinSxS\*onedrive*' -Recurse -EA 0 -Verbose"
reg load HKCU C:\Users\Default\NTUSER.DAT
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload HKCU
reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /d "0" /t REG_DWORD /f
reg add "HKCR\Wow6432Node\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /d "0" /t REG_DWORD /f

:: no MS Edge
taskkill /F /IM msedge.exe
rmdir /s /q "C:\Program Files (x86)\Microsoft\Edge"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeCore"
rmdir /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView"
rmdir /s /q "C:\Windows\System32\Microsoft-Edge-WebView"
reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{9459C573-B17A-45AE-9F64-1857B5D58CEE}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\EdgeUpdate" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\edgeupdate" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\edgeupdatem" /f
del /f /q "C:\Windows\System32\config\systemprofile\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge.lnk"
del /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"
del /f /q "C:\Users\Public\Desktop\Microsoft Edge.lnk"

:: no wallpaper
rmdir /s /q "C:\Windows\Web"

:: no workplace sync
del /f /q /s "C:\Windows\System32\mobsync.exe"
del /f /q /s "C:\Windows\SysWOW64\mobsync.exe"

:: no defender & smartscreen & firewall
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\IPSec\ICFv4" /v "BypassFirewall" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging" /v "LogDroppedPackets" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging" /v "LogSuccessfulConnections" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging" /v "LogDroppedPackets" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging" /v "LogSuccessfulConnections" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "EnableFirewall" /t REG_DWORD /d "0" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\MsSecFlt" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\SecurityHealthService" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\Sense" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WdBoot" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WdFilter" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WdNisDrv" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WdNisSvc" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\WinDefend" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\SgrmAgent" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\SgrmBroker" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\wscsvc" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\webthreatdefsvc" /f
taskkill /F /IM GameBarPresenceWriter.exe
taskkill /F /IM smartscreen.exe
del /f /q "C:\Windows\SysWOW64\CompatTelRunner.exe"
del /f /q "C:\Windows\SysWOW64\DeviceCensus.exe"
del /f /q "C:\Windows\SysWOW64\GameBarPresenceWriter.exe"
del /f /q "C:\Windows\SysWOW64\smartscreen.dll"
del /f /q "C:\Windows\SysWOW64\smartscreen.exe"
del /f /q "C:\Windows\System32\DWWIN.EXE"
del /f /q "C:\Windows\System32\GameBarPresenceWriter.exe"
del /f /q "C:\Windows\System32\SecurityAndMaintenance.png"
del /f /q "C:\Windows\System32\SecurityAndMaintenance_Error.png"
del /f /q "C:\Windows\System32\SecurityHealthAgent.dll"
del /f /q "C:\Windows\System32\SecurityHealthCore.dll"
del /f /q "C:\Windows\System32\SecurityHealthHost.exe"
del /f /q "C:\Windows\System32\SecurityHealthProxyStub.dll"
del /f /q "C:\Windows\System32\SecurityHealthService.exe"
del /f /q "C:\Windows\System32\SecurityHealthSsoUdk.dll"
del /f /q "C:\Windows\System32\SecurityHealthSystray.exe"
del /f /q "C:\Windows\System32\SecurityHealthUdk.dll"
del /f /q "C:\Windows\System32\drivers\SgrmAgent.sys"
del /f /q "C:\Windows\System32\drivers\WdBoot.sys"
del /f /q "C:\Windows\System32\drivers\WdDevFlt.sys"
del /f /q "C:\Windows\System32\drivers\WdFilter.sys"
del /f /q "C:\Windows\System32\drivers\WdNisDrv.sys"
del /f /q "C:\Windows\system32\drivers\msseccore.sys"
del /f /q "C:\Windows\System32\smartscreen.dll"
del /f /q "C:\Windows\System32\smartscreen.exe"
del /f /q "C:\Windows\System32\wscadminui.exe"
del /f /q "C:\Windows\System32\wscapi.dll"
del /f /q "C:\Windows\System32\wscisvif.dll"
del /f /q "C:\Windows\System32\wscproxystub.dll"
del /f /q "C:\Windows\System32\wscsvc.dll"
del /f /q "C:\Windows\Containers\WindowsDefenderApplicationGuard.wim"
del /f /q "C:\Windows\Containers\serviced\WindowsDefenderApplicationGuard.wim"
del /f /q "C:\Windows\WinSxS\FileMaps\amd64_windows-defender*.manifest"
rmdir /s /q "C:\ProgramData\Microsoft\Windows Defender"
rmdir /s /q "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection"
rmdir /s /q "C:\ProgramData\Microsoft\Windows Security Health"
rmdir /s /q "C:\Program Files (x86)\Windows Defender"
rmdir /s /q "C:\Program Files (x86)\Windows Defender Advanced Threat Protection"
rmdir /s /q "C:\Program Files\Windows Defender"
rmdir /s /q "C:\Program Files\Windows Defender Advanced Threat Protection"
rmdir /s /q "C:\WINDOWS\System32\drivers\wd"
rmdir /s /q "C:\Windows\GameBarPresenceWriter"
rmdir /s /q "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\Defender"
rmdir /s /q "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\DefenderPerformance"
rmdir /s /q "C:\Windows\System32\HealthAttestationClient"
rmdir /s /q "C:\Windows\System32\SecurityHealth"
rmdir /s /q "C:\Windows\System32\Sgrm"
rmdir /s /q "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender"
rmdir /s /q "C:\Windows\System32\Tasks_Migrated\Microsoft\Windows\Windows Defender"
rmdir /s /q "C:\Windows\System32\WebThreatDefSvc"
rmdir /s /q "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\Defender"
rmdir /s /q "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\DefenderPerformance"
rmdir /s /q "C:\Windows\WinSxS\amd64_security-octagon*"
rmdir /s /q "C:\Windows\WinSxS\amd64_windows-defender*"
rmdir /s /q "C:\Windows\WinSxS\wow64_windows-defender*"
rmdir /s /q "C:\Windows\WinSxS\x86_windows-defender*"
rmdir /s /q "C:\Windows\bcastdvr"
reg delete "HKLM\SOFTWARE\Classes\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}\InprocServer32" /va /f
reg delete "HKCR\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}" /v "InprocServer32" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers" /v "EPP" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers" /v "EPP" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers" /v "EPP" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MRT.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg add "HKLM\SOFTWAVE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender" /v "PUAProtection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "LocalSettingOverrideDisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Reporting" /v "WppTracingLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericRePorts" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Spynet" /v "LocalSettingOverrideSpynetReporting" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Spynet" /v "SpynetReporting" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Spynet" /v "DisableBlockAtFirstSeen" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection" /v "EnableNetworkProtection" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWAVE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Windows Defender/Operational" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender Security Center\Systray" /v "HideSystray" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWAVE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f
for /f %%i in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /s /k "webthreatdefusersvc" /f 2^>nul ^| find /i "webthreatdefusersvc" ') do (
  reg delete "%%i" /f
)

:: UWP removal
for %%z in (
Microsoft.MicrosoftEdge
Microsoft.MicrosoftEdgeDevToolsClient
Microsoft.Windows.AppRep.ChxApp_cw5n1h2txyewy
Microsoft.Windows.ContentDeliveryManager
Microsoft.XboxGameCallableUI
Microsoft.Win32WebViewHost
Microsoft.Windows.SecureAssessmentBrowser
Microsoft.CredDialogHost
Microsoft.Windows.ParentalControls
Microsoft.Windows.PeopleExperienceHost
Microsoft.Windows.NarratorQuickStart
Microsoft.Windows.XGpuEjectDialog
Windows.PrintDialog
Microsoft.549981C3F5F10
Microsoft.OneConnect
Microsoft.Paint
Microsoft.ScreenSketch
Microsoft.Windows.Cortana
Microsoft.Windows.Photos
Microsoft.Windows.Search
Microsoft.Windows.TabExperienceHost
Microsoft.WindowsCamera
microsoft.windowscommunicationsapps
Microsoft.WindowsNotepad
Microsoft.WindowsStore
Microsoft.XboxIdentityProvider
Microsoft.ZuneMusic
SimSecUX
MicrosoftWindows.Client.CBS
) do (
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications' | Where-Object { $_.Name -match '%%z' } | Remove-Item -Recurse -Force -Verbose"
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | Where-Object { $_.Name -match '%%z' } | Remove-Item -Recurse -Force -Verbose"
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Config' | Where-Object { $_.Name -match '%%z' } | Remove-Item -Recurse -Force -Verbose"
powershell -noprofile -executionpolicy bypass -command "New-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned' -Name '%%z_cw5n1h2txyewy' -Force -Verbose"
powershell -noprofile -executionpolicy bypass -command "New-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\EndOfLife' -Name '%%z_cw5n1h2txyewy' -Force -Verbose"
)
