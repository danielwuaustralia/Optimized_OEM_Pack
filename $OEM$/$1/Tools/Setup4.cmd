@echo on
color 0a

start /w C:\Tools\idman641build22.exe /onsilentsetup /s /q
dism.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase
start /w C:\Tools\IDM_6.4x_Crack_v18.2.exe
del /f /q /s "C:\Tools\IDM_6.4x_Crack_v18.2.exe"
del /f /q /s "C:\Tools\idman641build22.exe"
pause
