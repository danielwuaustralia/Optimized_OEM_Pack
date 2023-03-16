@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion

rem CleanUp
ipconfig /flushdns
rmdir /s /q "C:\TEMP\"
rmdir /s /q "C:\Users\Administrator\AppData\Local\NVIDIA\"
rmdir /s /q "C:\Users\Administrator\AppData\Local\Google\Chrome Dev\User Data\Default\Service Worker\CacheStorage\"

rem https://learn.microsoft.com/en-us/windows/win32/cimwin32prov/setpriority-method-in-class-win32-process
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="csrss.exe" CALL setpriority 128
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="dwm.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="ChsIME.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="ctfmon.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="fontdrvhost.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="lsass.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="NVDisplay.Container.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="NVDisplay.Container.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="OfficeClickToRun.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="RuntimeBroker.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="ShellExperienceHost.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="spoolsv.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="TextInputHost.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="TrustedInstaller.exe" CALL setpriority 64
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged wmic process where name="WmiPrvSE.exe" CALL setpriority 64

rem logman -ets
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets SleepStudyTraceSession
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets Circular Kernel Context Logger
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets CloudExperienceHostOobe
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets DefenderApiLogger
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets DefenderAuditLogger
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets Diagtrack-Listener
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets Diaglog
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets LwtNetLog
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets NetCore
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets NtfsLog
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets RadioMgr
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets RdrLog
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets ReadyBoot
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets SpoolerLogger
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets UBPM
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets WdiContextLog
"C:\Windows\System32\MinSudo.exe" --NoLogo --TrustedInstaller --Privileged logman stop -ets WiFiSession

rem Time Sync
w32tm /config /syncfromflags:manual /manualpeerlist:"pool.ntp.org"
net start w32time
w32tm /config /update
w32tm /resync
net stop w32time

rem CleanMgr.exe
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\BranchCache" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Content Indexer Cleaner" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\D3D Shader Cache" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Delivery Optimization Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Device Driver Packages" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Diagnostic Data Viewer database files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Feedback Hub Archive log files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Language Pack" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Offline Pages Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\RetailDemo Offline Content" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Setup Log Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error minidump files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Sync Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Upgrade Discarded Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\User file versions" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Defender" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows ESD installation files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Reset Log Files" /v "StateFlags0001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files" /v "StateFlags0001" /f

timeout /t 2 /nobreak

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\BranchCache" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Content Indexer Cleaner" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\D3D Shader Cache" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Delivery Optimization Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Device Driver Packages" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Diagnostic Data Viewer database files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Feedback Hub Archive log files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Language Pack" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Offline Pages Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\RetailDemo Offline Content" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Setup Log Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error minidump files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Sync Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Upgrade Discarded Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\User file versions" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Defender" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows ESD installation files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Reset Log Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files" /v "StateFlags0001" /t REG_DWORD /d "2" /f
start /high CLEANMGR /sagerun:1

exit
