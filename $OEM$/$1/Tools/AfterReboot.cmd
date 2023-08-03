@echo on
color 0a
start /b /wait C:\Tools\IDM-pawel97.exe
start /b /wait C:\Tools\ColorControl\ColorControl.exe
start /b /wait C:\Tools\NVidiaProfileInspector\nvidiaProfileInspector.exe
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'GoogleUpdate' } | Unregister-ScheduledTask -Confirm:$false"
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'StartAllBack' } | Unregister-ScheduledTask -Confirm:$false"
DISM /Online /Cleanup-Image /StartComponentCleanup /ResetBase
pause
