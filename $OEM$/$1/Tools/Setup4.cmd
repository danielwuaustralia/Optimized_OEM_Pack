@echo on
color 0a

for /f "usebackq tokens=1*" %%a in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration" /s /f "Scaling"^| findstr "HKEY"`) do reg add "%%a %%b" /v "Scaling" /t REG_DWORD /d "2" /f
start /w C:\Tools\idman642build2.exe /onsilentsetup /s /q
dism.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase
start /w C:\Tools\IDM_6.4x_Crack_v18.2.exe
del /f /q /s "C:\Tools\IDM_6.4x_Crack_v18.2.exe"
del /f /q /s "C:\Tools\idman642build2.exe"
pause
