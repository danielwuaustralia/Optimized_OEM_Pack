@echo on
color 0a

for /f %%i in ('REG QUERY "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /s /f Scaling ^|findstr /ri "Configuration"') do reg add "%%i" /v "Scaling" /t REG_DWORD /d "1" /f
rmdir /s /q "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations"
C:\Windows\System32\PowerRun_x64.exe /SW:0 cmd /c rmdir /s /q "C:\Program Files (x86)\Microsoft"
C:\Windows\System32\PowerRun_x64.exe /SW:0 cmd /c rmdir /s /q "C:\Windows\Prefetch"
dism.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase
del /f /q /s "C:\Tools\IDMcrack.exe"
del /f /q /s "C:\Tools\idman642build3.exe"
schtasks /delete /tn "StartAllBack Update" /f
