@echo on
color 0a
:: https://www.seagate.com/au/en/support/software/seachest/
:: "D:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" --scan
:: "D:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --deviceInfo
:: "D:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --showEPCSettings
:: "D:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --checkPowerMode
:: idle_a is dipm timer. idle_b is head parking. idle_c slows down the rpm without stopping it (this I feel is quite neat). Makes the 7200rpm drives consume similar to 5400rpm drives. standby_z is spindown.
:: "D:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --powerBalanceFeature disable
:: "D:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --EPCfeature disable
:: "D:\Tools\SeaChest\SeaChest_PowerControl_x64_windows.exe" -d PD0 --idle_b disable

:: Remove Read Only & archive feature on all files
:: C:\Windows\System32\PowerRun_x64.exe cmd /c attrib -a -s -r +i -h "D:\Games\*.*" /d /s
:: C:\Windows\System32\PowerRun_x64.exe cmd /c attrib -a -s -r +i -h "D:\SteamLibrary\*.*" /d /s

:: SSH Command ---- asus router full clone NAT
:: nvram set nat_type=1
:: nvram kset nat_type=1
:: nvram commit

start /w C:\TEMP\idman641build18.exe /skipdlgs
start /w C:\Tools\IDM-pawel97.exe
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'GoogleUpdateTask' } | Unregister-ScheduledTask -Confirm:$false"
powershell -nop -ep bypass -c "Get-ScheduledTask | Where {$_.TaskName -match 'StartAllBack' } | Unregister-ScheduledTask -Confirm:$false"
del /f /q /s "C:\Tools\Startallback.exe"
del /f /q /s "C:\Tools\IDM-pawel97.exe"
dism.exe /Online /Cleanup-Image /StartComponentCleanup
pause
