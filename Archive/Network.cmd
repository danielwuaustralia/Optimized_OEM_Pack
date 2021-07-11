@echo off
echo --- Reset Network Profiles
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures" /f
echo.
echo --- Disconnect Wireless Lan
netsh wlan disconnect
pause