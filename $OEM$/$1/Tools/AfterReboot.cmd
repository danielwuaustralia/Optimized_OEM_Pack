@echo on
color 0a
start /w C:\TEMP\idman641build17.exe /skipdlgs
start /w C:\Tools\IDM-pawel97.exe
start /w C:\Tools\ColorControl\ColorControl.exe
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'GoogleUpdateTask' } | Unregister-ScheduledTask -Confirm:$false"
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'StartAllBack' } | Unregister-ScheduledTask -Confirm:$false"
pause
