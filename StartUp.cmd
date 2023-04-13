setlocal enabledelayedexpansion

rem CleanUp
ipconfig /flushdns
rmdir /s /q "C:\TEMP\"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Users\Administrator\AppData\Local\NVIDIA\"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Users\Administrator\AppData\Local\Google\Chrome Dev\User Data\Default\Service Worker\CacheStorage\"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\System32\LogFiles"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\Logs\NetSetup"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\System32\WDI"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\ProgramData\Microsoft\Diagnosis\ETLLogs"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\Logs\WindowsUpdate"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\SoftwareDistribution\download"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Users\Administrator\AppData\Local\Temp"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\System32\SleepStudy"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\ProgramData\USOShared\Logs\System"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\Logs\waasmedic"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\System32\winevt\Logs"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c rmdir /s /q "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c del /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c del /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\ExplorerStartupLog_RunOnce.etl"
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c del /q "C:\Windows\System32\SleepStudy\SleepStudyControlTraceSession.etl"

rem logman -ets
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets SleepStudyTraceSession
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets Circular Kernel Context Logger
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets CloudExperienceHostOobe
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets DefenderApiLogger
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets DefenderAuditLogger
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets Diagtrack-Listener
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets Diaglog
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets LwtNetLog
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets NetCore
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets NtfsLog
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets RadioMgr
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets RdrLog
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets ReadyBoot
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets SpoolerLogger
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets UBPM
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets WdiContextLog
"C:\Windows\System32\PowerRun.exe" /SW:0 cmd.exe /c logman stop -ets WiFiSession

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
