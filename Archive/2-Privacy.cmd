@echo off & title Win10 Tweaker & color 17
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
echo ======================================================
echo.
echo ======================================================
echo ---- Add Run as TrustedInstaller to Context Menu -----
echo ======================================================
echo Add RunAsTI to Context Menu
reg add "HKCR\*\shell\RunAsTI"
reg add "HKCR\*\shell\RunAsTI" /v "Icon" /t reg_SZ /d "imageres.dll,73" /f
reg add "HKCR\*\shell\RunAsTI\command" /v "" /t reg_SZ /d "PowerRun.exe \"%%1\"" /f
echo.
echo Add Unlocker to Contect Menu
reg add "HKLM\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\UnlockerShellExtension" /ve /t reg_SZ /d "{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /f
reg add "HKLM\SOFTWARE\Classes\CLSID\UnlockerShellExtension" /ve /t reg_SZ /d "{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /f
reg add "HKLM\SOFTWARE\Classes\CLSID\{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /ve /t reg_SZ /d "UnlockerShellExtension" /f
reg add "HKLM\SOFTWARE\Classes\CLSID\{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}\InProcServer32" /ve /t reg_SZ /d "%SystemRoot%\System32\Unlocker\UnlockerCOM.dll" /f
reg add "HKLM\SOFTWARE\Classes\CLSID\{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}\InProcServer32" /v "ThreadingModel" /t reg_SZ /d "Apartment" /f
reg add "HKLM\SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\UnlockerShellExtension" /ve /t reg_SZ /d "{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Unlocker.exe" /ve /t reg_SZ /d "%SystemRoot%\System32\Unlocker\Unlocker.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{DDE4BEEB-DDE6-48fd-8EB5-035C09923F83}" /t reg_SZ /d "UnlockerShellExtension" /f
echo ======================================================
echo.
echo ======================================================
echo ---------- Configure Power Plan Settings -------------
echo ======================================================
powercfg -h off
powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 02f815b5-a5cf-4c84-bf20-649d1f75d3d8 4c793e7d-a264-42e1-87d3-7a0d2f523ccd 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 02f815b5-a5cf-4c84-bf20-649d1f75d3d8 4c793e7d-a264-42e1-87d3-7a0d2f523ccd 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0d7dbae2-4294-402a-ba8e-26777e8488cd 309dce9b-bef4-4119-9921-a851fb12f0f4 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 0d7dbae2-4294-402a-ba8e-26777e8488cd 309dce9b-bef4-4119-9921-a851fb12f0f4 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 2
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 2
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 94d3a615-a899-4ac5-ae2b-e4d8f634367f 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 54533251-82be-4824-96c1-47b60b740d00 94d3a615-a899-4ac5-ae2b-e4d8f634367f 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 fbd9aa66-9553-4097-ba44-ed6e9d65eab8 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 fbd9aa66-9553-4097-ba44-ed6e9d65eab8 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 100
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 100
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 03680956-93bc-4294-bba6-4e0f09bb717f 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 03680956-93bc-4294-bba6-4e0f09bb717f 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 34c7b99f-9a6d-4b3c-8dc7-b6693b78cef4 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 34c7b99f-9a6d-4b3c-8dc7-b6693b78cef4 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 3
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 3
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 9a66d8d7-4ff7-4ef9-b5a2-5a326ca2a469 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 9a66d8d7-4ff7-4ef9-b5a2-5a326ca2a469 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 8183ba9a-e910-48da-8769-14ae6dc1170a 5
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f 8183ba9a-e910-48da-8769-14ae6dc1170a 5
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f bcded951-187b-4d05-bccc-f7e51960c258 1
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f bcded951-187b-4d05-bccc-f7e51960c258 1
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 0
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f f3c5027d-cd16-4930-aa6b-90db844a8f00 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e e73a048d-bf27-4f12-9731-8b2076e8891f f3c5027d-cd16-4930-aa6b-90db844a8f00 0
echo Your Power Plan has been configured.
echo ======================================================
echo.
echo ======================================================
echo ------ Add This PC And Control Panel to Desktop ------
echo ======================================================
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t reg_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t reg_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t reg_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t reg_DWORD /d "0" /f
echo ======================================================
echo.
echo ======================================================
echo ------------ Remove This PC Libraries ----------------
echo ======================================================
REM ; Desktop
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
REM ; Documents
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
REM ; Downloads
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
REM ; Music
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
REM ; Pictures
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
REM ; Videos
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
REM ; 3D Objects
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
REM ; Video
reg add "HKCU\Software\Classes\CLSID\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
REM ; Documents
reg add "HKCU\Software\Classes\CLSID\{d3162b92-9365-467a-956b-92703aca08af}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{d3162b92-9365-467a-956b-92703aca08af}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{d3162b92-9365-467a-956b-92703aca08af}" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
REM ; Downloads
reg add "HKCU\Software\Classes\CLSID\{088e3905-0323-4b02-9826-5d99428e115f}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{088e3905-0323-4b02-9826-5d99428e115f}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{088e3905-0323-4b02-9826-5d99428e115f}" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
REM ; Images
reg add "HKCU\Software\Classes\CLSID\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
REM ; Music
reg add "HKCU\Software\Classes\CLSID\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
REM ; Desktop
reg add "HKCU\Software\Classes\CLSID\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /t REG_DWORD /d 1 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /f
REM ; 3d objects
reg add "HKCU\Software\Classes\CLSID\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Classes\Wow6432Node\CLSID\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideMyComputerIcons" /v "{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /t REG_DWORD /d 1 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /f
REM ; Quick Access
reg add "HKCU\Software\Classes\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder" /v "Attributes" /t REG_DWORD /d 0xa0600000 /f
reg add "HKCU\Software\Classes\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder" /v "Attributes" /t REG_DWORD /d 0xa0600000 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder" /v "Attributes" /t REG_DWORD /d 0xa0100000 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}" /v "System.IsPinnedtoNameSpaceTree" /t REG_DWORD /d 1 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}\ShellFolder" /v "Attributes" /t REG_DWORD /d 0xa0100000 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{679f85cb-0220-4080-b29b-5540cc05aab6}" /v "System.IsPinnedtoNameSpaceTree" /t REG_DWORD /d 1 /f
echo ======================================================
echo.
echo ======================================================
echo ---------- Set User TEMP to Windows TEMP -------------
echo ======================================================
reg add "HKCU\Environment" /v "TEMP" /t reg_SZ /d "%SystemRoot%\Temp" /f
reg add "HKCU\Environment" /v "TMP" /t reg_SZ /d "%SystemRoot%\Temp" /f
reg delete "HKCU\Environment" /v "OneDrive" /f
attrib -r "%UserProfile%\Desktop\*.*"
net user defaultuser0 /delete
echo.
echo --- Uninstall Edge Chromium
CALL "Privacy/EdgeChromium.cmd"
echo.
echo --- Apply Best W10Privacy Settings
START /WAIT Privacy\W10Privacy.exe /s 1
echo.
echo --- Apply Best Windows Privacy Dashboard Settings
START /WAIT Privacy\WPD.exe -defender "off" -wfp "off" -privacy " CEIPEnable  DisableCustomerImprovementProgram  CEIP  AllowCortana  AllowSearchToUseLocation  WindowsErrorReporting  DisableUAR  DisableInventory  AllowTelemetry  RestrictImplicitCollection  AllowInputPersonalization  AllowLinguisticDataCollection  ScenarioExecutionEnabled  DisableQueryRemoteServer  AdvertisingInfo  DisableContentFileUpdates  DisableWindowsConsumerFeatures  DiagTrack  dhscs  dmwappushservice  Consolidator  MCA  DeviceCensus  PublishUserActivities  UploadUserActivities  EnableActivityFeed  AllowClipboardHistory  AllowCrossDeviceClipboard  AllowDeviceNameInTelemetry  DisableSettingSync  DisableFileSyncNGSC  DisableAntiSpyware  EnableSmartScreen  LetAppsAccessAccountInfo  LetAppsAccessCalendar  LetAppsAccessCallHistory  LetAppsAccessCamera  LetAppsAccessContacts  LetAppsAccessEmail  LetAppsAccessGazeInput  LetAppsAccessLocation  LetAppsAccessMessaging  LetAppsAccessMicrophone  LetAppsAccessMotion  LetAppsAccessNotifications  LetAppsAccessPhone  LetAppsAccessRadios  LetAppsAccessTasks  LetAppsAccessTrustedDevices  LetAppsGetDiagnosticInfo  LetAppsRunInBackground  LetAppsSyncWithDevices  LetAppsActivateWithVoice  LetAppsActivateWithVoiceAboveLock  LetAppsAccessBackgroundSpatialPerception  CDPUserSvc  PimIndexMaintenanceSvc  UnistoreSvc  UserDataSvc  MessagingService  WpnUserService  ShowSyncProviderNotifications  TailoredExperiencesWithDiagnosticDataEnabled  StartTrackProgs  HttpAcceptLanguageOptOut  WaaSMedicSvc  Rule1 Rule2 Rule3" -revert " WUGP  wuauserv  UsoSvc " -includeAdv -nosplash -nowarnOS -noappx -nofw -pro -security -close
echo.
echo --- Apply Best OO Shutup Settings
START /WAIT Privacy\OOSU10.exe Privacy\OOSU10.cfg /quiet
echo.
echo --- Disable Win10 Game Explorer
Privacy\blackbird -s -g
echo ======================================================
echo.
echo ======================================================
echo ----------- Disable administrative shares ------------
echo ======================================================
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareServer" /t REG_DWORD /d 0 /f
echo ======================================================
echo.
echo ======================================================
echo ----- Enable Reset Base in Dism Component Store ------
echo ======================================================
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Configuration" /v "DisableResetbase" /t "reg_DWORD" /d 0 /f
echo ======================================================
echo.
echo ======================================================
echo ----------- Disable Reserved Storage -----------------
echo ======================================================
DISM /online /Set-ReservedStorageState /State:Disabled
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "MiscPolicyInfo" /t reg_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "PassedPolicy" /t reg_DWORD /d 0 /f
echo ======================================================
echo.
echo ======================================================
echo ------------ Set Mobo Company and Model --------------
echo ======================================================
FOR /F "tokens=3* delims= " %%i in ('reg query HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer') DO (SET BaseBoardManufacturer=%%i %%j)
FOR /F "tokens=3* delims= " %%i in ('reg query HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardProduct') DO (SET BaseBoardProduct=%%i %%j)
ECHO Manufacturer="%BaseBoardManufacturer%"
ECHO Product="%BaseBoardProduct%"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /t reg_SZ /v Manufacturer /d "%BaseBoardManufacturer%" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /t reg_SZ /v Model /d "%BaseBoardProduct%" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /t reg_SZ /v Logo /d "%Windir%\System32\logo.bmp" /f
echo ======================================================
echo.
echo ======================================================
echo ---------- Disable Defender and Smartscreen ----------
echo ======================================================

%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\MsSecFlt" /v "Start" /t REG_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\Sense" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WdBoot" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WdFilter" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WdNisDrv" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WdNisSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WinDefend" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\wscsvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\SecurityHealthService" /v "Start" /t reg_DWORD /d "4" /f

%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MsSecFlt" /v "Start" /t REG_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v "Start" /t reg_DWORD /d "4" /f

%Windir%\System32\SetACL -on "HKLM\SOFTWARE\Microsoft\Windows Defender" -ot reg -actn setowner -ownr "n:Administrators"
%Windir%\System32\SetACL -on "HKLM\SOFTWARE\Microsoft\Windows Defender" -ot reg -actn ace -ace "n:Administrators;p:full"
%Windir%\System32\SetACL -on "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn setowner -ownr "n:Administrators"
%Windir%\System32\SetACL -on "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" -ot reg -actn ace -ace "n:Administrators;p:full"
%Windir%\System32\SetACL -on "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" -ot reg -actn setowner -ownr "n:Administrators"
%Windir%\System32\SetACL -on "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" -ot reg -actn ace -ace "n:Administrators;p:full"
%Windir%\System32\SetACL -on "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" -ot reg -actn setowner -ownr "n:Administrators"
%Windir%\System32\SetACL -on "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" -ot reg -actn ace -ace "n:Administrators;p:full"

reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" /v "DisablePrivacyMode" /t reg_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t reg_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\RemovalTools\MpGears" /v "SpyNetReportingLocation" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\RemovalTools\MpGears" /v "HeartbeatTrackingIndex" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "PreventOverride" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t reg_SZ /d "Off" /f
reg add "HKCU\Software\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "SmartScreenEnabled" /t reg_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t reg_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t reg_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t reg_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows Security Health\State" /v "AppAndBrowser_EdgeSmartScreenOff" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows Security Health\State" /v "AppAndBrowser_StoreAppsSmartScreenOff" /t reg_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows Security Health\State" /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "RandomizeScheduleTaskTimes" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "PUAProtection" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "AllowFastServiceStartup" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "ServiceKeepAlive" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" /v "DisableAutoExclusions" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" /v "MpEnablePus" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" /v "PurgeItemsAfterDelay" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" /v "LocalSettingOverridePurgeItemsAfterDelay" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRoutinelyTakingAction" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DpaDisabled" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScriptScanning" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBlockAtFirstSeen" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "LocalSettingOverrideDisableRealtimeMonitoring" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "LocalSettingOverrideDisableBehaviorMonitoring" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "LocalSettingOverrideDisableIOAVProtection" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" /v "Scan_ScheduleDay" /t reg_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" /v "Scan_ScheduleTime" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "AdditionalActionTimeOut" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "CriticalFailureTimeOut" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "NonCriticalTimeOut" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericRePorts" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "AvgCPULoadFactor" /t reg_DWORD /d 10 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableArchiveScanning" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableCatchupFullScan" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableCatchupQuickScan" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableRemovableDriveScanning" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableRestorePoint" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningMappedNetworkDrivesForFullScan" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningNetworkFiles" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "PurgeItemsAfterDelay" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScheduleDay" /t reg_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScheduleTime" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScanOnlyIfIdle" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScanParameters" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" /v "FirstAuGracePeriod" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "DisableUpdateOnStartupWithoutEngine" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "DisableScanOnUpdate" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "UpdateOnStartUp" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "ScheduleDay" /t reg_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "ScheduleTime" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "SignatureUpdateCatchupInterval" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t reg_SZ /d "Anywhere" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" /v "DisableBlockAtFirstSeen" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" /v "SpynetReporting" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReportingLocation" /t reg_MULTI_SZ /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" /v "SubmitSamplesConsent" /t reg_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "LocalSettingOverrideSpynetReporting" /t reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" /v "HideSystray" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{09A47860-11B0-4DA5-AFA5-26D86198A780}" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\AutorunsDisabled" /v "SecurityHealth" /t REG_EXPAND_SZ /d "%windir%\system32\SecurityHealthSystray.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /f

echo ======================================================
echo.
echo ======================================================
echo ---------------- Disable Services --------------------
echo ======================================================

for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "AarSvc_*" ^| find "AarSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "BcastDVRUserService_*" ^| find "BcastDVRUserService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "CaptureService_*" ^| find "CaptureService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "cbdhsvc_*" ^| find "cbdhsvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "CDPUserSvc_*" ^| find "CDPUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "ConsentUxUserSvc_*" ^| find "ConsentUxUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "CredentialEnrollmentManagerUserSvc_*" ^| find "CredentialEnrollmentManagerUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "DeviceAssociationBrokerSvc_*" ^| find "DeviceAssociationBrokerSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "DevicePickerUserSvc_*" ^| find "DevicePickerUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "MessagingService_*" ^| find "MessagingService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "OneSyncSvc_*" ^| find "OneSyncSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "PimIndexMaintenanceSvc_*" ^| find "PimIndexMaintenanceSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "PrintWorkflowUserSvc_*" ^| find "PrintWorkflowUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "UdkUserSvc_*" ^| find "UdkUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "UnistoreSvc_*" ^| find "UnistoreSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "UserDataSvc_*" ^| find "UserDataSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\ControlSet001\Services" /k /f "WpnUserService_*" ^| find "WpnUserService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f

for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "AarSvc_*" ^| find "AarSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "BcastDVRUserService_*" ^| find "BcastDVRUserService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "BluetoothUserService_*" ^| find "BluetoothUserService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "CaptureService_*" ^| find "CaptureService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "cbdhsvc_*" ^| find "cbdhsvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "CDPUserSvc_*" ^| find "CDPUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "ConsentUxUserSvc_*" ^| find "ConsentUxUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "CredentialEnrollmentManagerUserSvc_*" ^| find "CredentialEnrollmentManagerUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "DeviceAssociationBrokerSvc_*" ^| find "DeviceAssociationBrokerSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "DevicesFlowUserSvc_*" ^| find "DevicesFlowUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "DevicePickerUserSvc_*" ^| find "DevicePickerUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "MessagingService_*" ^| find "MessagingService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "OneSyncSvc_*" ^| find "OneSyncSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "PimIndexMaintenanceSvc_*" ^| find "PimIndexMaintenanceSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "PrintWorkflowUserSvc_*" ^| find "PrintWorkflowUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UdkUserSvc_*" ^| find "UdkUserSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UnistoreSvc_*" ^| find "UnistoreSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UserDataSvc_*" ^| find "UserDataSvc"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f
for /f "delims=" %%S in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "WpnUserService_*" ^| find "WpnUserService"') do reg add "%%S" /v "Start" /t REG_DWORD /d "4" /f

%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\CSC" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\CscService" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\CredentialEnrollmentManagerUserSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\DeviceAssociationBrokerSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\diagnosticshub.standardcollector.service" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\DmWapPushService" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\iphlpsvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\MessagingService" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\PimIndexMaintenanceSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\PrintWorkflowUserSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\sgrmbroker" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\UnistoreSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\UserDataSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WinHttpAutoProxySvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WMPNetworkSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WpnUserService" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WaaSMedicSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WSearch" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BITS" /v "Start" /t REG_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\UsoSvc" /v "Start" /t REG_DWORD /d "2" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\Appinfo" /v "Start" /t REG_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\luafv" /v "Start" /t REG_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\tzautoupdate" /v "Start" /t reg_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Services\W32Time\Parameters" /v "Type" /t reg_SZ /d "NTP" /f

%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Appinfo" /v "Start" /t REG_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CSC" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t reg_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService" /v "Start" /t REG_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t reg_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "DelayedAutostart" /t reg_DWORD /d "0" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc\TriggerInfo\0" /v "Action" /t reg_DWORD /d "0" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc\TriggerInfo\1" /v "Action" /t reg_DWORD /d "0" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DmWapPushService" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\luafv" /v "Start" /t REG_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\sgrmbroker" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t reg_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" /v "Type" /t reg_SZ /d "NTP" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "2" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t reg_DWORD /d "4" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t reg_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv\TriggerInfo\0" /v "Action" /t reg_DWORD /d "0" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv\TriggerInfo\1" /v "Action" /t reg_DWORD /d "0" /f

sc stop AarSvc & sc config AarSvc start=disabled
sc stop AJRouter & sc config AJRouter start=disabled
sc stop ALG & sc config ALG start=disabled
sc stop AppMgmt & sc config AppMgmt start=disabled
sc stop AppReadiness & sc config AppReadiness start=disabled
sc stop BcastDVRUserService & sc config BcastDVRUserService start=disabled
sc stop BDESVC & sc config BDESVC start=disabled
sc stop CaptureService & sc config CaptureService start=disabled
sc stop cbdhsvc & sc config cbdhsvc start=disabled
sc stop CDPSvc & sc config CDPSvc start=disabled
sc stop CDPUserSvc & sc config CDPUserSvc start=disabled
sc stop CertPropSvc & sc config CertPropSvc start=disabled
sc stop cldflt & sc config cldflt start=disabled
sc stop ConsentUxUserSvc & sc config ConsentUxUserSvc start=disabled
sc stop DevicePickerUserSvc & sc config DevicePickerUserSvc start=disabled
sc stop diagsvc & sc config diagsvc start=disabled
sc stop DPS & sc config DPS start=disabled
sc stop DsSvc & sc config DsSvc start=disabled
sc stop DusmSvc & sc config DusmSvc start=disabled
sc stop fhsvc & sc config fhsvc start=disabled
sc stop FrameServer & sc config FrameServer start=disabled
sc stop HvHost & sc config HvHost start=disabled
sc stop icssvc & sc config icssvc start=disabled
sc stop InstallService & sc config InstallService start=disabled
sc stop LicenseManager & sc config LicenseManager start=disabled
sc stop lfsvc & sc config lfsvc start=disabled
sc stop lmhosts & sc config lmhosts start=disabled
sc stop LxpSvc & sc config LxpSvc start=disabled
sc stop MessagingService & sc config MessagingService start=disabled
sc stop MapsBroker & sc config MapsBroker start=disabled
sc stop MRxDAV & sc config MRxDAV start=disabled
sc stop MSiSCSI & sc config MSiSCSI start=disabled
sc stop NaturalAuthentication & sc config NaturalAuthentication start=disabled
sc stop NcaSvc & sc config NcaSvc start=disabled
sc stop NcdAutoSetup & sc config NcdAutoSetup start=disabled
sc stop NetBT & sc config NetBT start=disabled
sc stop Netlogon & sc config Netlogon start=disabled
sc stop OneSyncSvc & sc config OneSyncSvc start=disabled
sc stop PcaSvc & sc config PcaSvc start=disabled
sc stop PeerDistSvc & sc config PeerDistSvc start=disabled
sc stop PhoneSvc & sc config PhoneSvc start=disabled
sc stop PimIndexMaintenanceSvc & sc config PimIndexMaintenanceSvc start=disabled
sc stop PushToInstall & sc config PushToInstall start=disabled
sc stop RetailDemo & sc config RetailDemo start=disabled
sc stop RpcLocator & sc config RpcLocator start=disabled
sc stop SharedAccess & sc config SharedAccess start=disabled
sc stop SEMgrSvc & sc config SEMgrSvc start=disabled
sc stop SessionEnv & sc config SessionEnv start=disabled
sc stop SensorDataService & sc config SensorDataService start=disabled
sc stop SensrSvc & sc config SensrSvc start=disabled
sc stop SensorService & sc config SensorService start=disabled
sc stop SCardSvr & sc config SCardSvr start=disabled
sc stop ScDeviceEnum & sc config ScDeviceEnum start=disabled
sc stop SCPolicySvc & sc config SCPolicySvc start=disabled
sc stop SmsRouter & sc config SmsRouter start=disabled
sc stop SNMPTRAP & sc config SNMPTRAP start=disabled
sc stop SSDPSRV & sc config SSDPSRV start=disabled
sc stop StorSvc & sc config StorSvc start=disabled
sc stop SysMain & sc config SysMain start=disabled
sc stop TabletInputService & sc config TabletInputService start=disabled
sc stop TermService & sc config TermService start=disabled
sc stop tunnel & sc config tunnel start=disabled
sc stop UmRdpService & sc config UmRdpService start=disabled
sc stop UnistoreSvc & sc config UnistoreSvc start=disabled
sc stop upnphost & sc config upnphost start=disabled
sc stop UserDataSvc & sc config UserDataSvc start=disabled
sc stop vmicguestinterface & sc config vmicguestinterface start=disabled
sc stop vmicheartbeat & sc config vmicheartbeat start=disabled
sc stop vmickvpexchange & sc config vmickvpexchange start=disabled
sc stop vmicrdv & sc config vmicrdv start=disabled
sc stop vmicshutdown & sc config vmicshutdown start=disabled
sc stop vmictimesync & sc config vmictimesync start=disabled
sc stop vmicvmsession & sc config vmicvmsession start=disabled
sc stop vmicvss & sc config vmicvss start=disabled
sc stop wcncsvc & sc config wcncsvc start=disabled
sc stop WdiServiceHost & sc config WdiServiceHost start=disabled
sc stop WdiSystemHost & sc config WdiSystemHost start=disabled
sc stop WebClient & sc config WebClient start=disabled
sc stop wercplsupport & sc config wercplsupport start=disabled
sc stop WerSvc & sc config WerSvc start=disabled
sc stop WinRM & sc config WinRM start=disabled
sc stop wisvc & sc config wisvc start=disabled
sc stop wlidsvc & sc config wlidsvc start=disabled
sc stop WpcMonSvc & sc config WpcMonSvc start=disabled
sc stop WpnService & sc config WpnService start=disabled
sc stop WSearch & sc config WSearch start=disabled
sc stop WwanSvc & sc config WwanSvc start=disabled
sc stop XblAuthManager & sc config XblAuthManager start=disabled
sc stop XblGameSave & sc config XblGameSave start=disabled
sc stop XboxGipSvc & sc config XboxGipSvc start=disabled
sc stop XboxNetApiSvc & sc config XboxNetApiSvc start=disabled

echo ======================================================
echo.
echo ======================================================
echo ------------- Extra registry Tweaks ------------------
echo ======================================================

reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 0 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 1 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 2 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 3 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 4 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 5 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 6 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 7 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 8 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 9 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 10 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 11 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 12 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 13 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 14 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 15 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 16 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 17 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 18 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 19 /f
reg delete "HKCU\Control Panel\Quick Actions\Pinned" /v 20 /f
reg delete "HKCR\SystemFileAssociations\.3mf\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.bmp\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.fbx\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.gif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jfif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpe\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.jpg\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.png\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.tif\Shell\3D Edit" /f
reg delete "HKCR\SystemFileAssociations\.tiff\Shell\3D Edit" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Open With EncryptionMenu" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Open With" /f
reg delete "HKCR\.lnk\ShellNew" /f
reg delete "HKCR\Folder\shell\pintohome" /f
reg delete "HKCR\Windows.IsoFile\shell\mount" /f
reg delete "HKCR\*\shell\UpdateEncryptionSettingsWork" /f
reg delete "HKCR\Directory\shell\UpdateEncryptionSettings" /f
reg delete "HKCR\Folder\shell\opennewtab" /f
reg delete "HKCR\Folder\shell\opennewwindow" /f
reg delete "HKCR\.library-ms\ShellNew" /f
reg delete "HKCR\.bmp\ShellNew" /f
reg delete "HKCR\.contact\ShellNew" /f
reg delete "HKCR\.rtf\ShellNew" /f
reg delete "HKCR\.zip\CompressedFolder\ShellNew" /f
reg delete "HKCR\Windows.IsoFile\shell\burn" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\CopyHookHandlers\Sharing" /f
reg delete "HKCR\Directory\shellex\PropertySheetHandlers\Sharing" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\Sharing" /f
reg delete "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\ModernSharing" /f
reg delete "HKCR\*\shellex\ContextMenuHandlers\{90AA3A4E-1CBA-4233-B8BB-535773D48449}" /f
reg delete "HKCR\Folder\ShellEx\ContextMenuHandlers\Library Location" /f
reg delete "HKCR\SystemFileAssociations\.bmp\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.dib\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.gif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jfif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpe\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.jpg\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.png\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.tif\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.tiff\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.wdp\Shell\setdesktopwallpaper" /f
reg delete "HKCR\SystemFileAssociations\.avci\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.bmp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.dds\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.dib\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.gif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.heic\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.heif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.ico\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jfif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpe\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpeg\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jpg\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.jxr\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.png\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.rle\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.tif\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.tiff\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.wdp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\SystemFileAssociations\.webp\ShellEx\ContextMenuHandlers\ShellImagePreview" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\{D6791A63-E7E2-4fee-BF52-5DED8E86E9B8}" /f
reg delete "HKCR\cmdfile\shell\runasuser" /f
reg delete "HKCR\batfile\shell\runasuser" /f
reg delete "HKCR\exefile\shell\runasuser" /f
reg delete "HKCR\mscfile\shell\runasuser" /f
reg delete "HKCR\Msi.Package\shell\runasuser" /f
reg delete "HKCR\SystemFileAssociations\.glb\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.obj\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.ply\Shell\3D Edit\command" /f
reg delete "HKCR\SystemFileAssociations\.stl\Shell\3D Edit\command" /f
reg delete "HKCR\Folder\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\exefile\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\Microsoft.Website\ShellEx\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\mscfile\shellex\ContextMenuHandlers\PintoStartScreen" /f
reg delete "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
reg delete "HKCR\CompressedFolder\ShellEx\ContextMenuHandlers\{b8cdcb65-b1bf-4b42-9428-1dfdb7ee92af}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}" /f
reg delete "HKCR\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}" /f
reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f
reg add "HKCR\Wow6432Node\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "LockImageFlags" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "CreativeId" /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "PortraitAssetPath" /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "LandscapeAssetPath" /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "PlacementId" /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "ImpressionToken" /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "HotspotImageFolderPath" /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "CreativeJson" /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Modules\GlobalSettings\Sizer" /v "PageSpaceControlSizer" /t reg_BINARY /d "A00000000000000000000000A0050000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Ribbon" /v "QatItems" /t reg_BINARY /d "3c7369713a637573746f6d554920786d6c6e733a7369713d22687474703a2f2f736368656d61732e6d6963726f736f66742e636f6d2f77696e646f77732f323030392f726962626f6e2f716174223e3c7369713a726962626f6e206d696e696d697a65643d2274727565223e3c7369713a71617420706f736974696f6e3d2230223e3c7369713a736861726564436f6e74726f6c733e3c7369713a636f6e74726f6c206964513d227369713a3132333336222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3136313238222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3136313239222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3132333532222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3132333834222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c7369713a636f6e74726f6c206964513d227369713a3132333537222076697369626c653d2266616c73652220617267756d656e743d223022202f3e3c2f7369713a736861726564436f6e74726f6c733e3c2f7369713a7161743e3c2f7369713a726962626f6e3e3c2f7369713a637573746f6d55493e" /f
reg add "HKCR\*" /v "DefaultDropEffect" /t REG_DWORD /d 2 /f
reg add "HKCR\AllFilesystemObjects" /v "DefaultDropEffect" /t REG_DWORD /d 2 /f
reg add "HKCR\Drive\shell\encrypt-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKCR\Drive\shell\encrypt-bde-elev" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "CrashDumpEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "DumpLogLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "EnableLogFile" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "LogEvent" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "MinidumpsCount" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "Overwrite" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AlwaysKeepMemoryDump" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "DisplayParameters" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl\StorageTelemetry" /v "DeviceDumpEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "AllowRemoteRPC" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "fDenyTSConnections" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "StartRCM" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "TSUserEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "AllowRemoteRPC" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowFullControl" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "CreateEncryptedOnlyTickets" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "NoLocalPasswordResetQuestions" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableLogonBackgroundImage" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowClipboardHistory" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowCrossDeviceClipboard" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DontDisplayNetworkSelectionUI" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableAcrylicBackgroundOnLogon" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HideRecentlyAddedApps" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoAutoplayfornonVolume" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoPinningToDestinations" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableThumbsDBOnNetworkFolders" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoPinningStoreToTaskbar" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableCloudOptimizedContent" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowToGetHelp" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicited" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicitedFullControl" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fDenyTSConnections" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "TSAppCompat" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "TSEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "TSUserEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableConfig" /t "REG_DWORD" /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableSR" /t "REG_DWORD" /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "PreventRun" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisablePropPage" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableDeviceDelete" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableTelemetryOptInChangeNotification" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSync" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableMeteredNetworkFileSync" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableLibrariesDefaultSaveToOneDrive" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\OneDrive" /v "DisablePersonalSync" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "BypassDataThrottling" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexingOutlook" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexOnBattery" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexingEmailAttachments" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventRemoteQueries" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /v "UserAuthPolicy" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /v "BluetoothPolicy" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer" /v "AllowServicePoweredQSA" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Suggested Sites" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation" /v "PolicyDisableGeolocation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions" /v "NoUpdateCheck" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Safety\PrivacIE" /v "DisableLogging" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DoNotTrack" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Safety\PrivacIE" /v "DisableToolbars" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "NoReportSiteProblems" /t REG_SZ /d "yes" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "DoNotTrack" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Use FormSuggest" /t REG_SZ /d no /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "FormSuggest PW Ask" /t REG_SZ /d no /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "HideNewEdgeButton" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "IE10TourNoShow" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "IE10TourShown" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "IE10RunOncePerInstallCompleted" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "AllowWindowReuse" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "IE10TourShownTime" /t REG_BINARY /d "00" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "IE10RunOnceCompletionTime" /t REG_BINARY /d "00" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "IE10RunOnceLastShown_TIMESTAMP" /t REG_BINARY /d "00" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "IE10RecommendedSettingsNo" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Check_Associations" /t REG_SZ /d "no" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "about:Tabs" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "SubSysId" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "Wow64-VersionLow" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "Wow64-Revision" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "Wow64-SubSysId" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "Wow64-DeviceId" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "Wow64-VendorId" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "DXFeatureLevel" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "VersionLow" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "VersionHigh" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "Revision" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "Wow64-VersionHigh" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "DeviceId" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "VendorId" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\GPU" /v "Wow64-DXFeatureLevel" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\TabbedBrowsing" /v "PopupsUseNewWindow" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\TabbedBrowsing" /v "NewTabPageShow" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\TabbedBrowsing" /v "WarnOnClose" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\TabbedBrowsing" /v "ShowTabsWelcome" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\TabbedBrowsing" /v "OpenInForeground" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\BrowserStorage\AppCache" /v "AllowWebsiteCaches" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\BrowserStorage\IndexedDB" /v "AllowWebsiteDatabases" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\IntelliForms" /v "AskUser" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\AutoComplete" /v "Append Completion" /t REG_SZ /d no /f
reg add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes" /v "ShowSearchSuggestionsInAddressGlobal" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\ContinuousBrowsing" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Geolocation" /v "BlockAllWebsites" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\New Windows" /v "PopupMgr" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Privacy" /v "ClearBrowsingHistoryOnExit" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Suggested Sites" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\MINIE" /v "ShowStatusBar" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Feeds" /v "AutoMarkAsReadOPV" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Download" /v "CheckExeSignatures" /t REG_SZ /d "no" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Safety\PrivacIE" /v "DisableToolbars" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Personalization\Settings" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BackgroundModeEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SyncDisabled" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Edge" /v "SyncDisabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "AllowBuildPreview" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "EnableExperimentation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" /v "EnableConfigFlighting" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "HideInsiderPage" /t "REG_DWORD" /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticErrorText" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticLink" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Osk" /v "BounceTime" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Osk" /v "KeystrokeDelay" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Osk" /v "NextRepeatDelay" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Osk" /v "FirstRepeatDelay" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Cursors" /v "ContactVisualization" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Cursors" /v "GestureVisualization" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "DockMoving" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "WindowArrangementActive" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "CursorBlinkRate" /t REG_SZ /d 200 /f
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9e3e078012000000" /f
reg add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t REG_DWORD /d 100 /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "BorderWidth" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "PaddedBorderWidth" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility" /v "DynamicScrollbars" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d 506 /f
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d 58 /f
reg add "HKCU\Control Panel\Accessibility" /v "Warning Sounds" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Accessibility" /v "Sound on Activation" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\International" /v "iCalendarType" /t REG_SZ /d 1 /f
reg add "HKCU\Control Panel\International" /v "iTime" /t REG_SZ /d 1 /f
reg add "HKCU\Control Panel\International" /v "iDate" /t REG_SZ /d 1 /f
reg add "HKCU\Control Panel\International" /v "iDigits" /t REG_SZ /d 2 /f
reg add "HKCU\Control Panel\International" /v "iFirstDayOfWeek" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\International" /v "iFirstWeekOfYear" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\International" /v "iTLZero" /t REG_SZ /d 1 /f
reg add "HKCU\Control Panel\International" /v "sDate" /t REG_SZ /d "-" /f
reg add "HKCU\Control Panel\International" /v "sLongDate" /t REG_SZ /d "d MMMM, yyyy" /f
reg add "HKCU\Control Panel\International" /v "sShortDate" /t REG_SZ /d "dd-MMM-yy" /f
reg add "HKCU\Control Panel\International" /v "sTimeFormat" /t REG_SZ /d "HH:mm:ss" /f
reg add "HKCU\Control Panel\International" /v "sShortTime" /t REG_SZ /d "HH:mm" /f
reg add "HKCU\Control Panel\International" /v "sYearMonth" /t REG_SZ /d "MMMM yyyy" /f
reg add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight" /t REG_SZ /d 4 /f
reg add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d 200 /f
reg add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth" /t REG_SZ /d 4 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverHeight" /t REG_SZ /d 4 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d 400 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverWidth" /t REG_SZ /d 4 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d 20 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d 1 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d 6 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d 10 /f
reg add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d 2147483650 /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d 31 /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d 0 /f
reg add "HKU\.DEFAULT\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d 2147483650 /f
reg add "HKCU\Software\Microsoft\Narrator\NarratorHome" /v "AutoStart" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator\NarratorHome" /v "MinimizeType" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "FollowInsertion" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "PlayAudioCues" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "IntonationPause" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "ReadHints" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "ErrorNotificationType" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "EchoChars" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "EchoWords" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "NarratorCursorHighlight" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator" /v "CoupleNarratorCursorKeyboard" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "OnlineServicesEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "ContextVerbosityLevel" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "WinEnterLaunchEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "DuckAudio" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "UserVerbosityLevel" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "ContextVerbosityLevelV2" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "ScriptingEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "EchoToggleKeys" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "UseBitmapSmoothing" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "FollowMouse" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "FollowFocus" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "FollowCaret" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\ScreenMagnifier" /v "FollowNarrator" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableWindowColorization" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationGlassAttribute" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASAPI32" /v "EnableFileTracing" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASAPI32" /v "EnableAutoFileTracing" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASAPI32" /v "EnableConsoleTracing" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASMANCS" /v "EnableFileTracing" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASMANCS" /v "EnableAutoFileTracing" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Tracing\SystemSettings_RASMANCS" /v "EnableConsoleTracing" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "HideMCTLink" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ActiveHoursEnd" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\StateVariables" /v "ActiveHoursEnd" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\StateVariables" /v "ActiveHoursStart" /t REG_DWORD /d 8 /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "EnableHwkbTextPrediction" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HarvestContacts" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Preferences" /v "VoiceActivationEnableAboveLockscreen" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationLastUsed" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\Microsoft.549981C3F5F10_8wekyb3d8bbwe!App" /v "AgentActivationEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\Microsoft.549981C3F5F10_8wekyb3d8bbwe!App" /v "AgentActivationOnLockScreenEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /t "REG_DWORD" /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableSR" /t "REG_DWORD" /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" /v "DevicePasswordLessBuildVersion" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "ARSOUserConsent" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "RestartApps" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\AboveLock" /v "AllowCortanaAboveLock" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" /v "AllowCortana" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowTelemetry" /v "value" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Suggested Sites" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer" /v "AllowServicePoweredQSA" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Safety\PrivacIE" /v "DisableToolbars" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Main" /v "DoNotTrack" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\DataCollection" /v "DisableDeviceDelete" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "BypassDataThrottling" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Messenger\Client" /v "PreventRun" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Policies\Microsoft\Control Panel\International" /v "TurnOffAutocorrectMisspelledWords" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Control Panel\International" /v "TurnOffHighlightMisspelledWords" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Control Panel\International" /v "TurnOffOfferTextPredictions" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\PassportForWork" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\PassportForWork" /v "DisablePostLogonProvisioning" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "IncludeEnterpriseSpotlight" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightOnSettings" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightOnActionCenter" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightWindowsWelcomeExperience" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Assistance\Client\1.0" /v "NoImplicitFeedback" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "AcceptedPrivacyStatement" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "AddVideosFromPicturesLibrary" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "AutoAddMusicToLibrary" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "DeleteRemovesFromComputer" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "DisableLicenseRefresh" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "FirstRun" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "FlushRatingsToFiles" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "LibraryHasBeenRun" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "MetadataRetrieval" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "SilentAcquisition" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "SilentDRMConfiguration" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "DisableMRU" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "StartInMediaGuide" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "SnapToVideoV11" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "MLSChangeIndexMusic" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Windows Mail" /v "DisableCommunities" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows Mail" /v "ManualLaunchAllowed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Mail" /v "DisableCommunities" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Mail" /v "ManualLaunchAllowed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PassportForWork" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PassportForWork" /v "DisablePostLogonProvisioning" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameUX" /v "DownloadGameInfo" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameUX" /v "GameUpdateOptions" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameUX" /v "ListRecentlyPlayed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Classes\batfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\cmdfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "SendUserGUID" /t REG_BINARY /d "00" /f
reg add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "AskMeAgain" /t REG_SZ /d "No" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "AutoChkTimeout" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WDI\{C295FBBA-FD47-46ac-8BEE-B1715EC634E5}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WDI\{C295FBBA-FD47-46ac-8BEE-B1715EC634E5}" /v "DownloadToolsEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\change-passphrase" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\change-pin" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\manage-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\resume-bde-elev" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\resume-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\Drive\shell\unlock-bde" /v "LegacyDisable" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.3ds\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.3mf\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.dae\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.dxf\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.glb\Shell\3D Edit" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.obj\Shell\3D Edit" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.obj\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.ply\Shell\3D Edit" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.ply\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.stl\Shell\3D Edit" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.stl\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Classes\SystemFileAssociations\.wrl\Shell\3D Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
reg add "HKCU\Software\Classes\Folder\shellex\ContextMenuHandlers\Library Location" /ve /t REG_NONE /d "" /f
reg add "HKCU\Software\Classes\Folder\shellex\ContextMenuHandlers\Library Location" /v (Default) /t reg_None /d "" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "EnableBackupForWin8Apps" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessAccountInfo" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCalendar" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCallHistory" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCamera" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessContacts" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessEmail" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessGazeInput" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessLocation" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessMessaging" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessMicrophone" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessMotion" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessNotifications" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessPhone" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessRadios" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessTasks" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessTrustedDevices" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsGetDiagnosticInfo" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsSyncWithDevices" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsActivateWithVoice" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsActivateWithVoiceAboveLock" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessBackgroundSpatialPerception" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetooth" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\humanInterfaceDevice" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\sensors.custom" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\serialCommunication" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\usb" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\wifiData" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\wiFiDirect" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetooth" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\humanInterfaceDevice" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\sensors.custom" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\serialCommunication" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\usb" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\wifiData" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\wiFiDirect" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam\Microsoft.Windows.Cortana_cw5n1h2txyewy" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\windows.immersivecontrolpanel_cw5n1h2txyewy" /v "DisabledByUser" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy" /v "DisabledByUser" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies" /v "HideSCAMeetNow" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLinguisticDataCollection" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "OptInOOBE" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v "DownloadMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CanCortanaBeEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaInAmbientMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "HistoryViewEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "SafeSearchMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "CortanaConsent" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "CortanaIsReplaceable" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "CortanaIsReplaced" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "GlobalAssocChangedCounter" /t REG_DWORD /d 13 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "LocalKnownFoldersMigrated" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "TelemetrySalt" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_SearchFiles" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ServerAdminUI" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCompColor" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontPrettyPath" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideIcons" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MapNetDrvBtn" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "WebView" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Filter" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SeparateProcess" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTypeOverlay" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowStatusBar" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "StoreAppsOnTaskbar" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "StartMenuInit" /t REG_DWORD /d 13 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCortanaButton" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ReindexedProfile" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontUsePowerShellOnWinX" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarBadges" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideDrivesWithNoMedia" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideMergeConflicts" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAppsVisibleInTabletMode" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "JointResize" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapAssist" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapFill" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSecondsInSystemClock" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSmallIcons" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSizeMove" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "FolderContentsInfoTip" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowInfoTip" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowPreviewHandlers" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SharingWizardOn" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MultiTaskingAltTabFilter" /t REG_DWORD /d 3 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SearchBoxVisibleInTouchImprovement" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AppIconInTouchImprovement" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "FileExplorerInTouchImprovement" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People\ShoulderTap" /v "ShoulderTap" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "AllItemsIconView" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "StartupPage" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "ConfirmationCheckBoxDoForAll" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesChanges" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesVersion" /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowSleepOption" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowHibernateOption" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "HubMode" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "DisableEdgeDesktopShortcutCreation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AicEnabled" /t REG_SZ /d "Anywhere" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "GlobalAssocChangedCounter" /t REG_DWORD /d 41 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "NoCustomize" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v "AutoSuggest" /t REG_SZ /d "no" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v "DisableAutoplay" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Ribbon" /v "MinimizedStateTabletModeOff" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 1 /t REG_SZ /d "software_reporter_tool.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoStartMenuMorePrograms" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoCustomizeThisFolder" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDrivesInSendToMenu" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoNetConnectDisconnect" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecycleFiles" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ConfirmFileDelete" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoStartMenuMorePrograms" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ForceActiveDesktopOn" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoActiveDesktop" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoActiveDesktopChanges" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutorun" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoOnlinePrintsWizard" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWebServices" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsNetHood" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d 255 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInstrumentation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ShutdownWithoutLogon" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableCAD" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "ColorPrevalence" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{7AD84985-87B4-4a16-BE58-8B72A5B390F7}" /t REG_SZ /d "Play to Menu" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{596AB062-B4D2-4215-9F74-E9109B0A8153}" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{1d27f844-3a1f-4410-85ac-14651078412d}" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{E2BF9676-5F8F-435C-97EB-11607A5BEDF7}" /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage" /v "BluetoothLastDisabledNearShare" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "RomeSdkChannelUserAuthzPolicy" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "TabletMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "ConvertibleSlateModePromptPreference" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "SignInMode" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SyncMode5" /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "AutoConfigURL" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnOnIntranet" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnableNegotiate" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnonZoneCrossing" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\5.0\Cache" /v "ContentLimit" /t REG_DWORD /d 8 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\5.0\Cache\Content" /v "CacheLimit" /t REG_DWORD /d 8192 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Url History" /v "DaysToKeep" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap" /v "AutoDetect" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap" /v "IntranetName" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap" /v "UNCAsIntranet" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "CurrentLevel" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "Flags" /t REG_DWORD /d "529" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1601" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "NoTileApplicationNotification" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SlideshowEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "reInstalledAppsEverEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-202914Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-280810Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-280811Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-280813Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-280815Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310091Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310092Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-314559Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-314563Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338380Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338381Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353698Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000045Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000161Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000163Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-88000165Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Id" /t REG_SZ /d "null" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "PenWorkspaceAppSuggestionsEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /v "AutoDownload" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WinBio\Credential Provider" /v "Domain Accounts" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\SessionData" /v "AllowLockScreen" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Id" /t REG_SZ /d "null" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\TabletTip\1.7" /v "DisablePrediction" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\TabletTip\1.7" /v "DisablePrediction" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "MachineID" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "NewUserDefaultConsent" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\WMR" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Assert Filtering Policy" /v "ReportAndContinue" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernteEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Network\NetworkLocationWizard" /v "HideWizard" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "ConfigureWindowsSpotlight" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Conferencing" /v "NoRDS" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\MDM" /v "DisableRegistration" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Gwx" /v "DisableGwx" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Digital Locker" /v "DoNotRunDigitalLocker" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\.NETFramework" /v "OnlyUseLatestCLR" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Feeds" /v "SyncStatus" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Messaging" /v "CloudServiceSyncEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventLog\Windows PowerShell" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsMitigation" /v "UserPreference" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\SearchScopes" /v "ShowSearchSuggestionsGlobal" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PushToInstall" /v "DisablePushToInstall" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service\WinRS" /v "AllowRemoteShellAccess" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /v "OsuregistrationStatus" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v "LegacyDefaultPrinterMode" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Shell\USB" /v "NotifyOnUsbErrors" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreen" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Settings\FindMyDevice" /v "LocationSyncEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "DisableQueryRemoteServer" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /v "AutoConnectAllowedOEM" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Connect" /v "AllowProjectionToPC" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FileHistory" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\MiracastReceiver" /v "ConsentToast" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\ControlSet001\Control\CI\Policy" /v "SkuPolicyRequired" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v "SkuPolicyRequired" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "WakeUp" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Ole" /v "EnableDCOM" /t REG_SZ /d "N" /f
reg add "HKCU\Software\Microsoft\Input\Locales\loc_0409" /v "UseFluency" /t REG_DWORD /d 514 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\OOBE" /v "DisablePrivacyExperience" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContent" /t REG_SZ /d "208.67.222.222" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContentV6" /t REG_SZ /d "2620:119:35::35" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHost" /t REG_SZ /d "resolver1.opendns.com" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHostV6" /t REG_SZ /d "resolver1.opendns.com" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContent" /t REG_SZ /d "NetworkManager is online" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContentV6" /t REG_SZ /d "NetworkManager is online" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHost" /t REG_SZ /d "network-test.debian.org" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHostV6" /t REG_SZ /d "network-test.debian.org" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePath" /t REG_SZ /d "nm" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePathV6" /t REG_SZ /d "nm" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_SZ /d "ANONYMOUS" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Hostname" /t reg_SZ /d "ANONYMOUS" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "UseDomainNameDevolution" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TCPIP6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "255" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "srvcomment" /t reg_SZ /d "ANONYMOUS" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "DisableParallelAandAAAA" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "UseDomainNameDevolution" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoLogoff" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableLockWorkstation" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangePassword" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "DefaultFileTypeRisk" /t REG_DWORD /d 6152 /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" /v "Debugger" /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe" /v "Debugger" /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "DontSearchWindowsUpdate" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "AllSigningEqual" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "DisableSendRequestAdditionalSoftwareToWER" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "DisableSendGenericDriverNotFoundToWER" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Clipboard" /v "AllowClipboardHistory" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Clipboard" /v "AllowCrossDeviceClipboard" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "ShutdownReasonUI" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" /v "EnableMtcUvc" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\TelemetryController" /v "RunsBlocked" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LLTD" /v "EnableRspndr" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LLTD" /v "EnableLLTDIO" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\ServerManager" /v "DoNotOpenServerManagerAtLogon" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\ServerManager" /v "DoNotPopWACConsoleAtSMLaunch" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v "DisallowAnimations" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fDisablePowerManagement" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "value" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Id" /t REG_SZ /d "null" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudExperienceHost" /v "ETWLoggingEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{09A47860-11B0-4DA5-AFA5-26D86198A780}" /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell" /v "EnableScripts" /t reg_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\PowerShell" /v "EnableScripts" /t reg_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t reg_SZ /d "Restricted" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t reg_SZ /d "Restricted" /f
reg add "HKCU\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t reg_SZ /d "Restricted" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap" /v "ProxyBypass" /f
reg import "Privacy\PhotoVeiwer.reg"
reg import "Privacy\PageFile.reg"
COPY "Privacy\StartLayout.xml" "%Systemdrive%\Users\Default\AppData\Local\Microsoft\Windows\Shell\StartLayout.xml" /V /Y
reg import "Privacy\StartLayout.reg"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoChangeStartMenu" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableContextMenusInStart" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoUninstallFromStart" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shell\Separator" /v "CommandFlags" /t REG_DWORD /d 40 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Classes\AppID\slui.exe" /v "NoGenTicket" /t REG_DWORD /d 1 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BannerStore\OptIn" /v "URL" /t REG_SZ /d "" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BannerStore\OptOut" /v "URL" /t REG_SZ /d "" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "DisableWerReporting" /t REG_DWORD /d 1 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d 0 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d 0 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\ExpressionEvaluators\Driver" /v "DLL" /t REG_SZ /d "1wuuhext.dll1" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\ExpressionEvaluators\Driver" /v "Prefixes" /t REG_MULTI_SZ /d "1d1." /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdateHandlers\Driver" /v "DLL" /t REG_SZ /d "1wuuhext.dll1" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdateHandlers\Driver" /v "LocalOnly" /t REG_DWORD /d 1 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdateHandlers\Driver" /v "URI" /t REG_SZ /d "http://ssschemas.mmmmicrosoft.ccccom/msus/2002/12/UpdateHandlers/Windows" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{87D66A43-7B11-4A28-9811-C86EE395ACF7}" /f

echo ======================================================
echo.
echo ======================================================
echo ---------------- Apply Extra Settings ----------------
echo ======================================================

%SystemRoot%\System32\cscript //Nologo "%SystemRoot%\System32\slmgr.vbs" /cpky
%SystemRoot%\System32\cscript //Nologo "%SystemRoot%\System32\slmgr.vbs" /dlv
%SystemRoot%\System32\Unlocker\Unlocker.exe "%ProgramData%\Microsoft\UEV" /S /D
%SystemRoot%\System32\Unlocker\Unlocker.exe "%ProgramData%\Microsoft\AppV" /S /D
%SystemRoot%\System32\Unlocker\Unlocker.exe "%Windir%\System32\mobsync.exe" /R "%Windir%\System32\mobsync.bak" /S
%SystemRoot%\System32\Unlocker\Unlocker.exe "%Windir%\System32\upfc.exe" /R "%Windir%\System32\upfc.bak" /S
COPY "%SystemRoot%\System32\ctfmon.exe" "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\ctfmon.exe" /V /Y
IF EXIST "%SystemDrive%\Users\Public\Documents" rd /s /q "%SystemDrive%\Users\Public\Documents"
IF EXIST "%SystemDrive%\Users\Public\Downloads" rd /s /q "%SystemDrive%\Users\Public\Downloads"
IF EXIST "%SystemDrive%\Users\Public\Libraries" rd /s /q "%SystemDrive%\Users\Public\Libraries"
IF EXIST "%SystemDrive%\Users\Public\Pictures" rd /s /q "%SystemDrive%\Users\Public\Pictures"
IF EXIST "%SystemDrive%\Users\Public\Videos" rd /s /q "%SystemDrive%\Users\Public\Videos"
IF EXIST "%SystemDrive%\Users\Public\Music" rd /s /q "%SystemDrive%\Users\Public\Music"
IF EXIST "%SystemDrive%\Users\Default\Documents" rd /s /q "%SystemDrive%\Users\Default\Documents"
IF EXIST "%SystemDrive%\Users\Default\Favorites" rd /s /q "%SystemDrive%\Users\Default\Favorites"
IF EXIST "%SystemDrive%\Users\Default\Libraries" rd /s /q "%SystemDrive%\Users\Default\Libraries"
IF EXIST "%SystemDrive%\Users\Default\Links" rd /s /q "%SystemDrive%\Users\Default\Links"
IF EXIST "%SystemDrive%\Users\Default\Music" rd /s /q "%SystemDrive%\Users\Default\Music"
IF EXIST "%SystemDrive%\Users\Default\Pictures" rd /s /q "%SystemDrive%\Users\Default\Pictures"
IF EXIST "%SystemDrive%\Users\Default\Videos" rd /s /q "%SystemDrive%\Users\Default\Videos"
IF EXIST "%SystemDrive%\Users\Default\Saved Games" rd /s /q "%SystemDrive%\Users\Default\Saved Games"
IF EXIST "%SystemDrive%\DumpStack.log" del /f /q "%SystemDrive%\DumpStack.log."
IF EXIST "%SystemDrive%\DumpStack.log.tmp" del /f /q "%SystemDrive%\DumpStack.log.tmp"
IF EXIST "%SystemDrive%\$Recycle.Bin" rd /s /q "%SystemDrive%\$Recycle.Bin"
IF EXIST "%SystemDrive%\PerfLogs" rd /s /q "%SystemDrive%\PerfLogs"
IF EXIST "%SystemRoot%\AppReadiness" rd /s /q "%SystemRoot%\AppReadiness"
IF EXIST "%SystemRoot%\CbsTemp" rd /s /q "%SystemRoot%\CbsTemp"
IF EXIST "%SystemRoot%\DigitalLocker" rd /s /q "%SystemRoot%\DigitalLocker"
IF EXIST "%SystemRoot%\Downloaded Program Files" rd /s /q "%SystemRoot%\Downloaded Program Files"
IF EXIST "%SystemRoot%\GameBarPresenceWriter" rd /s /q "%SystemRoot%\GameBarPresenceWriter"
IF EXIST "%SystemRoot%\LiveKernelReports" rd /s /q "%SystemRoot%\LiveKernelReports"
IF EXIST "%SystemRoot%\ModemLogs" rd /s /q "%SystemRoot%\ModemLogs"
IF EXIST "%SystemRoot%\Performance" rd /s /q "%SystemRoot%\Performance"
IF EXIST "%SystemRoot%\Prefetch" rd /s /q "%SystemRoot%\Prefetch"
IF EXIST "%SystemRoot%\Panther" rd /s /q "%SystemRoot%\Panther"
IF EXIST "%SystemRoot%\RemotePackages" rd /s /q "%SystemRoot%\RemotePackages"
IF EXIST "%SystemRoot%\SchCache" rd /s /q "%SystemRoot%\SchCache"
IF EXIST "%SystemRoot%\TAPI" rd /s /q "%SystemRoot%\TAPI"
IF EXIST "%SystemRoot%\Temp\*.*" del /f /q "%SystemRoot%\Temp\*.*"
IF EXIST "%SystemRoot%\tracing" rd /s /q "%SystemRoot%\tracing"
IF EXIST "%SystemRoot%\*.LOG" del /f /q "%SystemRoot%\*.LOG"
IF EXIST "%SystemRoot%\*.log" del /f /q "%SystemRoot%\*.log"
IF EXIST "%SystemRoot%\*.xml" del /f /q "%SystemRoot%\*.xml"
IF EXIST "%SystemRoot%\*.ini" del /f /q "%SystemRoot%\*.ini"
IF EXIST "%UserProfile%\Saved Games" rd /s /q "%UserProfile%\Saved Games"
IF EXIST "%UserProfile%\3D Objects" rd /s /q "%UserProfile%\3D Objects"
IF EXIST "%UserProfile%\Documents" rd /s /q "%UserProfile%\Documents"
IF EXIST "%UserProfile%\Downloads" rd /s /q "%UserProfile%\Downloads"
IF EXIST "%UserProfile%\Favorites" rd /s /q "%UserProfile%\Favorites"
IF EXIST "%UserProfile%\OneDrive" rd /s /q "%UserProfile%\OneDrive"
IF EXIST "%UserProfile%\Contacts" rd /s /q "%UserProfile%\Contacts"
IF EXIST "%UserProfile%\Pictures" rd /s /q "%UserProfile%\Pictures"
IF EXIST "%UserProfile%\Searches" rd /s /q "%UserProfile%\Searches"
IF EXIST "%UserProfile%\Videos" rd /s /q "%UserProfile%\Videos"
IF EXIST "%UserProfile%\Links" rd /s /q "%UserProfile%\Links"
IF EXIST "%UserProfile%\Music" rd /s /q "%UserProfile%\Music"
IF EXIST "%LocalAppData%\Temp" rd /s /q "%LocalAppData%\Temp"
IF EXIST "%LocalAppData%\Programs" rd /s /q "%LocalAppData%\Programs"
IF EXIST "%LocalAppData%\D3DSCache" rd /s /q "%LocalAppData%\D3DSCache"
IF EXIST "%LocalAppData%\OO Software" rd /s /q "%LocalAppData%\OO Software"
IF EXIST "%LocalAppData%\IconCache.db" del /f /q "%LocalAppData%\IconCache.db"
IF EXIST "%LocalAppData%\PeerDistRepub" rd /s /q "%LocalAppData%\PeerDistRepub"
IF EXIST "%LocalAppData%\ConnectedDevicesPlatform" rd /s /q "%LocalAppData%\ConnectedDevicesPlatform"
IF EXIST "%ProgramData%\USOShared\Logs" rd /s /q "%ProgramData%\USOShared\Logs"
IF EXIST "%ProgramData%\Microsoft OneDrive" rd /s /q "%ProgramData%\Microsoft OneDrive"
IF EXIST "%ProgramData%\SoftwareDistribution" rd /s /q "%ProgramData%\SoftwareDistribution"
IF EXIST "%ProgramData%\WindowsHolographicDevices" rd /s /q "%ProgramData%\WindowsHolographicDevices"
IF EXIST "%UserProfile%\Desktop\Microsoft Edge.*" del /f /q "%UserProfile%\Desktop\Microsoft Edge.*"
IF EXIST "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned" rd /s /q "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned"
IF EXIST "%AppData%\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge*.lnk" del /f /q "%AppData%\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge*.lnk"
IF EXIST "%UserProfile%\AppData\Local\Microsoft\Edge" rd /s /q "%UserProfile%\AppData\Local\Microsoft\Edge"
IF EXIST "%LocalAppData%\MicrosoftEdge" rd /s /q "%LocalAppData%\MicrosoftEdge"
IF EXIST "%ProgramFiles(x86)%\Microsoft" rd /s /q "%ProgramFiles(x86)%\Microsoft"
IF EXIST "%AppData%\Microsoft\Windows\SendTo\Documents.*" del "%AppData%\Microsoft\Windows\SendTo\Documents.*" /a /f /q /s
IF EXIST "%AppData%\Microsoft\Windows\SendTo\Mail recipient.*" del "%AppData%\Microsoft\Windows\SendTo\Mail recipient.*" /a /f /q /s
IF EXIST "%AppData%\Microsoft\Windows\SendTo\Compressed (zipped) folder.*" del "%AppData%\Microsoft\Windows\SendTo\Compressed (zipped) folder.*" /a /f /q /s
IF EXIST "%AppData%\Microsoft\Windows\SendTo\*.LNK" del "%AppData%\Microsoft\Windows\SendTo\*.LNK" /a /f /q /s
IF EXIST "%SystemRoot%\Setup" rd /s /q "%SystemRoot%\Setup"
echo.
echo --- Disable Auditpolicy
%SystemRoot%\System32\Auditpol /remove /allusers
%SystemRoot%\System32\Auditpol /clear /y
%SystemRoot%\System32\Auditpol /set /category:* /Success:disable /failure:disable
echo.
echo --- Disable Autologgers
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Start -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Start -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\CloudExperienceHostOobe'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\DataMarket'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\DefenderApiLogger'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\Diagtrack-Listener'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-Application'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-System'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\HolographicDevice'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\LwtNetLog'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\Mellanox-Kernel'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\Microsoft-Windows-Setup'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\NBSMBLOGGER'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\NtfsLog'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\PEAuthLog'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\ReadyBoot'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\RdrLog'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\SetupPlatform'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\SetupPlatformTel'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\SpoolerLogger'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\SQMLogger'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\TCPIPLOGGER'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\TileStore'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\Tpm'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\UBPM'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\WFP-IPsec Trace'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SYSTEM\ControlSet001\Control\WMI\Autologger\WiFiSession'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\NetCore" /v "Start" /t REG_DWORD /d 0 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\RadioMgr" /v "Start" /t REG_DWORD /d 0 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCore" /v "Start" /t REG_DWORD /d 0 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RadioMgr" /v "Start" /t REG_DWORD /d 0 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
Powershell -Command "Get-AutologgerConfig | Set-AutologgerConfig -Start 0 -InitStatus 0 -Confirm:$false -ErrorAction SilentlyContinue -Verbose"
echo.
echo --- Disable Diagtrack Dignostic Logs
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\PerfTrack" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "DiagTrackAuthorization" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ConnectivityNoNetworkTime" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "UploadPermissionReceived" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "DisableAutomaticTelemetryKeywordReporting" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "TelemetryServiceDisabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TestHooks" /v "DisableAsimovUpLoad" /t REG_DWORD /d 1 /f
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name ETag -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name ETagQueryParameters -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name RefreshInterval -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name SettingsPriority -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name SettingsRegistrationType -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name SettingsType -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name FeatureStates -Value 828 -ErrorAction SilentlyContinue -Verbose }"
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TelemetryNamespaces" /f
echo.
echo --- Delete All Scheduled Tasks
Powershell -Command "Get-Scheduledtask | Unregister-ScheduledTask -Confirm:$false -ErrorAction SilentlyContinue -Verbose"
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule" /f
reg import "Privacy\ScheduledTasks.reg"
echo.
echo --- Remove All Firewall Rules
Powershell -Command "Get-NetFirewallRule | Remove-NetFirewallRule -Confirm:$False -ErrorAction SilentlyContinue -Verbose"
echo.
echo --- Apply Best Firewall Policy
Powershell -Command "Get-NetFirewallProfile | Set-NetFirewallProfile -DefaultOutboundAction Block -DefaultInboundAction Block -AllowInboundRules False -NotifyonListen True -Enabled False -ErrorAction SilentlyContinue -Verbose"
echo.
echo --- Apply Best NetBT Tweak
PowerShell -Command "$key = 'HKLM:SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name NetbiosOptions -Value 2 -ErrorAction SilentlyContinue -Verbose }"
echo.
echo --- Disable All Windows Event Logs
PowerShell -Command "$key = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels'; Get-ChildItem $key | foreach { Set-ItemProperty -Path \"$key\$($_.pschildname)\" -Name Enabled -Value 0 -ErrorAction SilentlyContinue -Verbose }"
echo ======================================================
echo.
echo ======================================================
echo -------------------- Apply Tweaks --------------------
echo ======================================================

%SystemRoot%\System32\SetACL -on "%SystemRoot%\Logs" -ot file -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -on "%SystemRoot%\Logs" -ot file -actn ace -ace "n:Administrators;p:full"
%SystemRoot%\System32\SetACL -on "%SystemRoot%\DiagTrack" -ot file -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -on "%SystemRoot%\DiagTrack" -ot file -actn ace -ace "n:Administrators;p:full"
%SystemRoot%\System32\SetACL -on "%SystemRoot%\DiagTrack\Scenarios" -ot file -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -on "%SystemRoot%\DiagTrack\Scenarios" -ot file -actn ace -ace "n:Administrators;p:full"
%SystemRoot%\System32\SetACL -on "%SystemRoot%\DiagTrack\Settings" -ot file -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -on "%SystemRoot%\DiagTrack\Settings" -ot file -actn ace -ace "n:Administrators;p:full"
IF EXIST "%SystemRoot%\System32\Tasks" rd /s /q "%SystemRoot%\System32\Tasks"
IF EXIST "%SystemRoot%\SysWOW64\Tasks" rd /s /q "%SystemRoot%\SysWOW64\Tasks"
IF EXIST "%SystemRoot%\Logs" rd /s /q "%SystemRoot%\Logs"
IF EXIST "%SystemRoot%\System32\Logs" rd /s /q "%SystemRoot%\System32\Logs"
IF EXIST "%SystemRoot%\SysWOW64\Logs" rd /s /q "%SystemRoot%\SysWOW64\Logs"
IF EXIST "%SystemRoot%\System32\LogFiles" rd /s /q "%SystemRoot%\System32\LogFiles"
IF EXIST "%SystemRoot%\SysWOW64\LogFiles" rd /s /q "%SystemRoot%\SysWOW64\LogFiles"
IF EXIST "%SystemRoot%\DiagTrack" rd /s /q "%SystemRoot%\DiagTrack"
vssadmin List Shadows
vssadmin delete shadows /All /Quiet
Powershell -Command "Disable-ComputerRestore -Drive $env:SystemDrive -Verbose"
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t reg_DWORD /d "4" /f
echo.
echo --- Apply Best NTUSER Registry Tweaks
reg load "HKLM\TEMP_NTUSER" "%SystemDrive%\Users\Default\NTUSER.DAT"
reg add "HKLM\TEMP_NTUSER\Software\Policies\Microsoft\Windows\OOBE" /v "DisablePrivacyExperience" /t REG_DWORD /d "1" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d "0" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Settings\FindMyDevice" /v "LocationSyncEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\AccessPage\Camera" /v "CameraEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "PrivacyConsentPresentationVersion" /t REG_DWORD /d "2" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\TEMP_NTUSER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "PrivacyConsentSettingsVersion" /t REG_DWORD /d "3" /f
reg unload HKLM\TEMP_NTUSER
echo.
echo --- Apply Best BCDEDIT Boot Tweaks
bcdedit /timeout 0
bcdedit /set advancedoptions no
bcdedit /set bootems no
bcdedit /set disabledynamictick yes
bcdedit /set isolatedcontext no
bcdedit /set nointegritychecks yes
bcdedit /set testsigning no
echo.
echo --- Apply Best File System Tweaks
fsutil behavior set disable8dot3 1
fsutil behavior set disableencryption 1
fsutil behavior set disablelastaccess 3
fsutil behavior set EncryptPagingFile 0
fsutil behavior set symlinkEvaluation L2R:0 R2R:0 R2L:0
echo.
echo --- Apply Local Group Policies
%Windir%\System32\LGPO /m "Privacy\Machine.pol" /v
%Windir%\System32\LGPO /u "Privacy\User.pol" /v
gpupdate /force
echo.
echo --- SystemApps Removal Tweak
PowerShell -Command "Get-AppXProvisionedPackage -Online | Out-GridView -PassThru -Title 'Remove Windows Apps' | Remove-AppXProvisionedPackage -Online -AllUsers -ErrorAction SilentlyContinue -Verbose"
%SystemRoot%\System32\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn ace -ace "n:Administrators;p:full"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 4 -Verbose"
Powershell -Command "Stop-Service -Name StateRepository -Force -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn ace -ace "n:Administrators;p:full"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn ace -ace "n:Administrators;p:full"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn ace -ace "n:Administrators;p:full"
IF EXIST "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb" del /f /s /q /a "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 2 -Verbose"
Powershell -Command "Start-Service -Name StateRepository -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
TASKLIST /svc /fi "services eq StateRepository"
TASKKILL /F /FI "services eq StateRepository" /T
%SystemRoot%\System32\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "DROP TRIGGER TRG_AFTER_UPDATE_Package_SRJournal;"
%SystemRoot%\System32\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "UPDATE Package SET IsInBox=0 WHERE IsInBox=1;"
Powershell -Command "Write-Output ':***********************************************************************:' '' '                               { Urgent SystemApps Removal }' '' ' Pl Do Not Select [ShellExperienceHost] [ImmersiveControlPanel] [VClibs] ' '' '      Pl Dont Worry as it will Show you Critical Error For Start Menu ' '' '                            Drop it Downside Towards Taskbar ' '' '               OpenShell Is the Correct Solution for Start Menu' '' '                       Waiting Time is 10 Min Until You Press OK' | MSG "%username%" /TIME:600 /W"
Powershell -Command "Get-AppxPackage -AllUsers | Out-GridView -PassThru -Title 'Remove System Apps' | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue -Verbose"
echo.
echo --- Recheck SystemApps Removal [IF Some Apps Are Left Before This Time They Will be Removed]
PowerShell -Command "Get-AppXProvisionedPackage -Online | Out-GridView -PassThru -Title 'Remove Windows Apps' | Remove-AppXProvisionedPackage -Online -AllUsers -ErrorAction SilentlyContinue -Verbose"
%SystemRoot%\System32\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -ot "reg" -on "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" -actn ace -ace "n:Administrators;p:full"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 4 -Verbose"
Powershell -Command "Stop-Service -Name StateRepository -Force -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramFiles%\WindowsApps" -actn ace -ace "n:Administrators;p:full"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository" -actn ace -ace "n:Administrators;p:full"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn setowner -ownr "n:Administrators"
%SystemRoot%\System32\SetACL -ot "file" -on "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" -actn ace -ace "n:Administrators;p:full"
IF EXIST "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb" del /f /s /q /a "%ProgramData%\Microsoft\Windows\AppRepository\PackageRepository.edb"
Powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\StateRepository' 'Start' 2 -Verbose"
Powershell -Command "Start-Service -Name StateRepository -Verbose"
Powershell -Command "Get-Service -Name StateRepository -Verbose"
TASKLIST /svc /fi "services eq StateRepository"
TASKKILL /F /FI "services eq StateRepository" /T
%SystemRoot%\System32\SQLite3 "%ProgramData%\Microsoft\Windows\AppRepository\StateRepository-Machine.srd" "UPDATE Package SET IsInBox=0 WHERE IsInBox=1;"
Powershell -Command "Write-Output ':***********************************************************************:' '' '                               { Urgent SystemApps Removal }' '' ' Pl Do Not Select [ShellExperienceHost] [ImmersiveControlPanel] [VClibs] ' '' '      Pl Dont Worry as it will Show you Critical Error For Start Menu ' '' '                            Drop it Downside Towards Taskbar ' '' '               OpenShell Is the Correct Solution for Start Menu' '' '                       Waiting Time is 10 Min Until You Press OK' | MSG "%username%" /TIME:600 /W"
Powershell -Command "Get-AppxPackage -AllUsers | Out-GridView -PassThru -Title 'Remove System Apps' | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue -Verbose"
echo.
reg import "Privacy\Extra.reg"
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t reg_DWORD /d "3" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT\TriggerInfo\0" /v "Action" /t reg_DWORD /d "0" /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "WakeUp" /t REG_DWORD /d 0 /f
%Windir%\System32\PowerRun /SW:0 %Windir%\System32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d 1 /f
taskkill /f /im explorer.exe & TIMEOUT /T 2 /NOBREAK
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\iconcache_*.db
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\ExplorerStartupLog_*.etl
start explorer.exe
shutdown /r /f /t 60
echo ======================================================
echo ********************** The End ***********************
