@echo on
color 0a
start /b /wait C:\Tools\IDM-pawel97.exe
start /b /wait C:\Tools\ColorControl\ColorControl.exe
DISM /Online /Cleanup-Image /StartComponentCleanup /ResetBase
pause
