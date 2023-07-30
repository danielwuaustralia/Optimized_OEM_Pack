@echo off & title SystemApps Removal Tweaker & color 17
cd %~dp0
echo ======================================================
echo -------------- Ensure Admin Privileges ---------------
echo ======================================================
REM  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\System32\cacls.exe" "%SYSTEMROOT%\System32\config\system"  
REM --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    goto UACPrompt) else ( goto gotAdmin )  
:UACPrompt  
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
"%temp%\getadmin.vbs"  
exit /B
:gotAdmin
echo Got Admin Access
%SystemRoot%\System32\attrib -r "%UserProfile%\Desktop\*.*"
echo ======================================================
echo.
echo ======================================================
echo --- SystemApps Removal Tweaker
PowerShell -Command "Get-AppXProvisionedPackage -Online | Out-GridView -PassThru -Title 'Remove Windows Apps' | Remove-AppXProvisionedPackage -Online -AllUsers -ErrorAction SilentlyContinue -Verbose"
Privacy\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn ace -ace "n:Administrators;p:full"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 4 -Verbose"
Powershell -Command "Stop-Service -Name StateRepository -Force -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
Privacy\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn ace -ace "n:Administrators;p:full"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn ace -ace "n:Administrators;p:full"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn ace -ace "n:Administrators;p:full"
IF EXIST "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb" del /f /s /q /a "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 2 -Verbose"
Powershell -Command "Start-Service -Name StateRepository -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
TASKLIST /svc /fi "services eq StateRepository"
TASKKILL /F /FI "services eq StateRepository" /T
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "DROP TRIGGER TRG_AFTER_UPDATE_Package_SRJournal;"
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "UPDATE Package SET IsInBox=0 WHERE IsInBox=1;"
Powershell -Command "Write-Output ':***********************************************************************:' '' '                               { Urgent SystemApps Removal }' '' ' Pl Do Not Select [ShellExperienceHost] [ImmersiveControlPanel] [VClibs] ' '' '      Pl Dont Worry as it will Show you Critical Error For Start Menu ' '' '                            Drop it Downside Towards Taskbar ' '' '               OpenShell Is the Correct Solution for Start Menu' '' '                       Waiting Time is 10 Min Until You Press OK' | MSG "%username%" /TIME:600 /W"
Powershell -Command "Get-AppxPackage -AllUsers | Out-GridView -PassThru -Title 'Remove System Apps' | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue -Verbose"
echo.
echo ======================================================
echo --- Recheck SystemApps Removal [IF Some Apps Are Left Before This Time They Will be Removed]
Privacy\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn ace -ace "n:Administrators;p:full"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 4 -Verbose"
Powershell -Command "Stop-Service -Name StateRepository -Force -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
Privacy\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn ace -ace "n:Administrators;p:full"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn ace -ace "n:Administrators;p:full"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn setowner -ownr "n:Administrators"
Privacy\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn ace -ace "n:Administrators;p:full"
IF EXIST "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb" del /f /s /q /a "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 2 -Verbose"
Powershell -Command "Start-Service -Name StateRepository -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
TASKLIST /svc /fi "services eq StateRepository"
TASKKILL /F /FI "services eq StateRepository" /T
Privacy\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "UPDATE Package SET IsInBox=0 WHERE IsInBox=1;"
Powershell -Command "Write-Output ':***********************************************************************:' '' '                               { Urgent SystemApps Removal }' '' ' Pl Do Not Select [ShellExperienceHost] [ImmersiveControlPanel] [VClibs] ' '' '      Pl Dont Worry as it will Show you Critical Error For Start Menu ' '' '                            Drop it Downside Towards Taskbar ' '' '               OpenShell Is the Correct Solution for Start Menu' '' '                       Waiting Time is 10 Min Until You Press OK' | MSG "%username%" /TIME:600 /W"
Powershell -Command "Get-AppxPackage -AllUsers | Out-GridView -PassThru -Title 'Remove System Apps' | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue -Verbose"
echo ======================================================
echo ********************** The End ***********************
del %~f0