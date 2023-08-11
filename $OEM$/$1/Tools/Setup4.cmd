@echo on
color 0a
start /w C:\TEMP\idman641build18.exe /skipdlgs
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'GoogleUpdateTask' } | Unregister-ScheduledTask -Confirm:$false"
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'StartAllBack' } | Unregister-ScheduledTask -Confirm:$false"
start /w C:\Tools\Startallback.exe
start /w C:\Tools\IDM-pawel97.exe
DISM /online /Cleanup-Image /StartComponentCleanup /ResetBase
del /f /q /s "C:\Tools\Startallback.exe"
del /f /q /s "C:\Tools\IDM-pawel97.exe"
pause
