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
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "DontSearchWindowsUpdate" /t REG_DWORD /d "1" /f
dism /english /Online /Remove-DefaultAppAssociations
dism /english /Online /Set-ReservedStorageState /State:Disabled
reagentc /disable
compact /CompactOS:Never

:: remove OneDrive
taskkill /F /IM OneDrive.exe
del /s /f /q "C:\Windows\System32\OneDriveSetup.exe"
powershell -noprofile -executionpolicy bypass -command "Remove-Item -Path 'C:\Windows\WinSxS\*onedrive*' -Recurse -EA 0 -Verbose"
reg load HKLM\NTUSER C:\Users\Default\NTUSER.DAT
reg delete "HKLM\NTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload HKLM\NTUSER
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
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-edge-webview_31bf3856ad364e35_none_b46fc2274e055603" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-webview2standalone_31bf3856ad364e35_none_cbf5e415acbcb4f4" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoftedge-autologger_31bf3856ad364e35_none_dd39fb9187e61e2e" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-microsoftedgebrowser_31bf3856ad364e35_none_cc4c2155158afa1d" /f
del /s /f /q "C:\Windows\System32\config\systemprofile\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge.lnk"
del /s /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"
del /s /f /q "C:\Users\Public\Desktop\Microsoft Edge.lnk"

:: no GameBarPresenceWriter
taskkill /F /IM GameBarPresenceWriter.exe
del /f /q /s "C:\Windows\SysWOW64\GameBarPresenceWriter.exe"
del /f /q /s "C:\Windows\System32\GameBarPresenceWriter.exe"
del /f /q /s "C:\Windows\System32\GameBarPresenceWriter.proxy.dll"
del /f /q /s "C:\Windows\SysWOW64\GameBarPresenceWriter.proxy.dll"
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-gaming-ga..rnal-presencewriter_31bf3856ad364e35_none_f7b4abb1b457ca9e" /f

:: no wallpaper
rmdir /s /q "C:\Windows\Web"

:: no sleepstudy
del /f /q /s "C:\Windows\System32\microsoft-windows-sleepstudy-events.dll"
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-sleepstudy-events_31bf3856ad364e35_none_c266384d99ccaa04" /f

:: no workplace sync
del /f /q /s "C:\Windows\System32\mobsync.exe"
del /f /q /s "C:\Windows\SysWOW64\mobsync.exe"
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-mobsync.resources_31bf3856ad364e35_zh-cn_aca771c3cf1cda1e" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-mobsync_31bf3856ad364e35_none_91d2430be381600d" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-mobsyncexe_31bf3856ad364e35_none_8f1207df5410ef0b" /f

:: no windows update
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /v "AutoDownload" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWindowsUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /t REG_SZ /d "\" \"" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /t REG_SZ /d "\" \"" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "UpdateServiceUrlAlternate" /t REG_SZ /d "\" \"" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "UseWUServer" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "99" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "99" /f

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
taskkill /F /IM smartscreen.exe
del /s /f /q "C:\Windows\System32\smartscreen.exe"
del /s /f /q "C:\Windows\System32\smartscreen.dll"
del /s /f /q "C:\Windows\System32\smartscreenps.dll"
del /s /f /q "C:\Windows\SysWOW64\smartscreen.exe"
del /s /f /q "C:\Windows\SysWOW64\smartscreenps.dll"
del /s /f /q "C:\Windows\SysWOW64\smartscreen.dll"
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-d..inition-smartscreen_31bf3856ad364e35_none_37141e2f8f021071" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-smartscreen.resources_31bf3856ad364e35_zh-cn_34e74524413090a0" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-smartscreen_31bf3856ad364e35_none_8c6d0eafaf330721" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-smartscreen-adm_31bf3856ad364e35_none_5b54a2aad676e77e" /f
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
rmdir /s /q "C:\ProgramData\Microsoft\Windows Defender"
rmdir /s /q "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection"
rmdir /s /q "C:\ProgramData\Microsoft\Windows Security Health"
rmdir /s /q "C:\Program Files (x86)\Windows Defender"
rmdir /s /q "C:\Program Files\Windows Defender"
rmdir /s /q "C:\Program Files\Windows Defender Advanced Threat Protection"
powershell -noprofile -executionpolicy bypass -command "Remove-Item -Path 'C:\Windows\WinSxS\*defender*' -Recurse -EA 0 -Verbose"
reg delete "HKLM\SOFTWARE\Classes\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}\InprocServer32" /va /f
reg delete "HKCR\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}" /v "InprocServer32" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers" /v "EPP" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers" /v "EPP" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers" /v "EPP" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MRT.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d "0" /f
for /f %%i in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /s /k "webthreatdefusersvc" /f 2^>nul ^| find /i "webthreatdefusersvc" ') do (
  reg delete "%%i" /f
)

:: UWP removal
for %%z in (
Microsoft.MicrosoftEdge
Microsoft.MicrosoftEdgeDevToolsClient
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
) do (
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications' | Where-Object { $_.Name -match '%%z' } | Remove-Item -Recurse -Force -Verbose"
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications' | Where-Object { $_.Name -match '%%z' } | Remove-Item -Recurse -Force -Verbose"
powershell -noprofile -executionpolicy bypass -command "Get-ChildItem -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Config' | Where-Object { $_.Name -match '%%z' } | Remove-Item -Recurse -Force -Verbose"
powershell -noprofile -executionpolicy bypass -command "New-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned' -Name '%%z_cw5n1h2txyewy' -Force -Verbose"
powershell -noprofile -executionpolicy bypass -command "New-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\EndOfLife' -Name '%%z_cw5n1h2txyewy' -Force -Verbose"
)
