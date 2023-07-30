@cls
@echo off
>nul chcp 437
setlocal enabledelayedexpansion

cd /d "%~dp0"
set "fp=%~f0"
title After Logon script

2>nul whoami|>nul findstr /i /c:"nt authority\system" && (
  echo.&echo Success gain *TI\SYSTEM* privileges
  goto :Run_As_System
)

rem Run as administrator, AveYo: ps\VBS version
>nul fltmc || ( set "_=call "%~dpfx0" %*"
	powershell -nop -c start cmd -args '/d/x/r',$env:_ -verb runas || (
	mshta vbscript:execute^("createobject(""shell.application"").shellexecute(""cmd"",""/d/x/r "" &createobject(""WScript.Shell"").Environment(""PROCESS"")(""_""),,""runas"",1)(window.close)"^))|| (
	cls & echo:& echo Script elavation failed& pause)
	exit )

echo: & echo Disable Auto admin Login & echo:
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /f /v AutoAdminLogon /t Reg_SZ /d "0"

echo: & echo Set admin Password Never Expires & echo: 
powershell -noprofile -executionpolicy bypass -command "Set-LocalUser -Name 'Administrator' -PasswordNeverExpires 1"
powershell -noprofile -executionpolicy bypass -command "Get-CimInStance Win32_UserAccount | Set-CimInstance -Property @{PasswordExpires=\"False\"} -PassThru"

:: from Abbodi1406 script
REM FOR /F "TOKENS=2 DELIMS==" %%A IN ('"WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount GET Name /VALUE"') DO (
	REM CALL WMIC /NAMESPACE:\\ROOT\CIMV2 PATH Win32_UserAccount WHERE Name='%%A' SET PasswordExpires=FALSE
REM )

:: from Last11.Pro.x64.PE_2022H2 ISO
REM >nul 2>&1 wmic UserAccount set PasswordExpires=False
REM >nul 2>&1 wmic path Win32_UserAccount set PasswordExpires=False

echo:  & echo Enable All network adapters & echo: 
2>nul powershell -noprofile -executionpolicy bypass -command "Get-NetAdapter -Physical | Enable-NetAdapter -Confirm:$false"

echo:  & echo Set-ExecutionPolicy To bypass & echo: 
2>nul powershell -nop -ep bypass -c "Set-ExecutionPolicy -ExecutionPolicy bypass -Scope LocalMachine -Force"

echo:  & echo Create Activation Task & echo:
2>nul powershell -nop -ep bypass -f Load_KMS_task.ps1

rem Terminal install - validate

set /a count=0
set "COMMAND=@(Get-AppxProvisionedPackage -online | ? PackageName -match 'terminal').Count"
for /f "usebackq tokens=*" %%A in (`"2>nul powershell -noprofile -executionpolicy bypass -command  "!COMMAND!""`) do set "count=%%A"
if !count! GTR 0 (goto :done)

rem to validate it work ...
rem Get-AppxProvisionedPackage -online | ? PackageName -match 'terminal' | Remove-AppxProvisionedPackage -online

echo:  & echo Install Terminal UWP App & echo:
set "License=microsoft.windowsterminal_8wekyb3d8bbwe"
set "Xaml=Microsoft.UI.Xaml.2.7_7.2208.15002.0_x64__8wekyb3d8bbwe"
set "VCLibs=Microsoft.VCLibs.140.00.UWPDesktop_14.0.30704.0_x64__8wekyb3d8bbwe"
set "Terminal=Microsoft.WindowsTerminal_3001.12.10982.0_neutral___8wekyb3d8bbwe"
Dism /Online /Add-ProvisionedAppxPackage /PackagePath:"%~dp0%Terminal%.Msixbundle" /DependencyPackagePath:"%~dp0%Xaml%.Appx" /DependencyPackagePath:"%~dp0%VCLibs%.Appx" /LicensePath:"%~dp0%License%.xml"

:done

:: now start load TI session
2>nul whoami|>nul findstr /i /c:"nt authority\system" || (
  shift & set "args=%*"
  call :RunAsTI cmd /c call "%fp%" %args%
)

timeout 3 /nobreak
exit /b

:Run_As_System
echo: & echo Disable Auto-loggers & echo:

:: disable auto logging using Auditpol
2>nul Auditpol /set /category:* /Success:disable /failure:disable

goto :Ignore
:: Configure Applications preference logging and tracing
:: https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.Preferences::CSE_Applications_Logging
:Ignore

for %%$ in (
{F9C77450-3A41-477E-9310-9ACD617BD9E3},{728EE579-943C-4519-9EF7-AB56765798ED},^
{1A6364EB-776B-4120-ADE1-B63A406A76B5},{5794DAFD-BE60-433f-88A2-1A31939AC01F},^
{0E28E245-9368-4853-AD84-6DA3BA35BB75},{7150F9BF-48AD-4da4-A49C-29EF4A8369BA},^
{A3F3E39B-5D83-4940-B954-28315B82F0A8},{6232C319-91AC-4931-9385-E70C2B099F0E},^
{74EE6C03-5363-4554-B161-627540339CAB},{E47248BA-94CC-49c4-BBB5-9EB7F05183D0},^
{17D89FEC-5C44-4972-B12D-241CAEF74509},{3A0DBA37-F8B2-4356-83DE-3E90BD5C261F},^
{6A4C88C6-C502-4f74-8F60-2CB23EDC24E2},{E62688F0-25FD-4c90-BFF5-F508B9D2E31F},^
{BC75B1ED-5833-4858-9BB8-CBF0B166DF9D},{E5094040-C46C-4115-B030-04FB2E545B00},^
{B087BE9D-ED37-454f-AF9C-04291E351182},{AADCED64-746C-4633-A97C-D61349046527},^
{91FBB303-0CD5-4055-BF42-E512A681B325},{C418DD9D-0D14-4efb-8FBF-CFE535C8FAC7},^
{E4F48E54-F38D-4884-BFB9-D4D2E5729C18}
) do (
  >nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\%%$" /f /v LogLevel   /d 0x0 /t REG_DWORD
  >nul 2>&1 reg add "HKLM\Software\Policies\Microsoft\Windows\Group Policy\%%$" /f /v TraceLevel /d 0x0 /t REG_DWORD
)

:: Forget-log by amymor, 
:: https://github.com/amymor/Forget-log

for /f "usebackq tokens=1*" %%a in (`2^> nul reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Enabled" ^| findstr "HKEY"`) do >nul reg add "%%a %%b" /f /v "Enabled" /t REG_DWORD /d 0
for /f "usebackq tokens=1*" %%a in (`2^> nul reg query "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger" /s /f "Start"   ^| findstr "HKEY"`) do >nul reg add "%%a %%b" /f /v "Start"   /t REG_DWORD /d 0
>nul reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Start" /t REG_DWORD /d "1" /f

:: clear the rest logs
2>nul powershell -nop -c "Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }"

timeout 3 /nobreak
exit /b 

#:RunAsTI: #1 snippet to run as TI/System, with /high priority, /priv ownership, explorer and HKCU load
set ^ #=& set "0=%~f0"& set 1=%*& powershell -nop -c iex(([io.file]::ReadAllText($env:0)-split':RunAsTI\:.*')[1])& exit/b
$_CAN_PASTE_DIRECTLY_IN_POWERSHELL='^,^'; function RunAsTI ($cmd) { $id='RunAsTI'; $sid=((whoami /user)-split' ')[-1]; $code=@'
$ti=(whoami /groups)-like"*1-16-16384*"; $DM=[AppDomain]::CurrentDomain."DefineDynamicAss`embly"(1,1)."DefineDynamicMod`ule"(1)
$D=@(); 0..5|% {$D+=$DM."DefineT`ype"("M$_",1179913,[ValueType])}; $I=[int32];$P=$I.module.gettype("System.Int`Ptr"); $U=[uintptr]
$D+=$U; 4..6|% {$D+=$D[$_]."MakeB`yRefType"()};$M=$I.module.gettype("System.Runtime.Interop`Services.Mar`shal");$Z=[uintptr]::size
$S=[string]; $F="kernel","advapi","advapi",($S,$S,$I,$I,$I,$I,$I,$S,$D[7],$D[8]),($U,$S,$I,$I,$D[9]),($U,$S,$I,$I,[byte[]],$I)
0..2|% {$9=$D[0]."DefinePInvokeMeth`od"(("CreateProcess","RegOpenKeyEx","RegSetValueEx")[$_],$F[$_]+'32',8214,1,$S,$F[$_+3],1,4)}
$DF=0,($P,$I,$P),($I,$I,$I,$I,$P,$D[1]),($I,$S,$S,$S,$I,$I,$I,$I,$I,$I,$I,$I,[int16],[int16],$P,$P,$P,$P),($D[3],$P),($P,$P,$I,$I)
1..5|% {$k=$_;$n=1;$AveYo=1; $DF[$_]|% {$9=$D[$k]."DefineFie`ld"('f'+$n++,$_,6)}}; $T=@(); 0..5|% {$T+=$D[$_]."CreateT`ype"()}
0..5|% {nv "A$_" ([Activator]::CreateInstance($T[$_])) -force}; function F ($1,$2) {$T[0]."GetMeth`od"($1).invoke(0,$2)};
if (!$ti) { $g=0; "TrustedInstaller","lsass"|% {if (!$g) {net1 start $_ 2>&1 >$null; $g=@(get-process -name $_ -ea 0|% {$_})[0]}}
 function M($1,$2,$3){$M."GetMeth`od"($1,[type[]]$2).invoke(0,$3)}; $H=@(); $Z,(4*$Z+16)|% {$H+=M "AllocHG`lobal" $I $_};
 M "WriteInt`Ptr" ($P,$P) ($H[0],$g.Handle); $A1.f1=131072;$A1.f2=$Z;$A1.f3=$H[0];$A2.f1=1;$A2.f2=1;$A2.f3=1;$A2.f4=1;$A2.f6=$A1
 $A3.f1=10*$Z+32;$A4.f1=$A3;$A4.f2=$H[1]; M "StructureTo`Ptr" ($D[2],$P,[boolean]) (($A2 -as $D[2]),$A4.f2,$false); $w=0x0E080600
 $out=@($null,"powershell -win 1 -nop -c iex `$env:A",0,0,0,$w,0,$null,($A4 -as $T[4]),($A5 -as $T[5])); F "CreateProcess" $out
} else { $env:A=''; $PRIV=[uri].module.gettype("System.Diagnostics.Process")."GetMeth`ods"(42) |? {$_.Name -eq "SetPrivilege"}
 "SeSecurityPrivilege","SeTakeOwnershipPrivilege","SeBackupPrivilege","SeRestorePrivilege" |% {$PRIV.Invoke(0, @("$_",2))}
 $HKU=[uintptr][uint32]2147483651; $LNK=$HKU; $reg=@($HKU,"S-1-5-18",8,2,($LNK -as $D[9])); F "RegOpenKeyEx" $reg; $LNK=$reg[4]
 function SYM($1,$2){$b=[Text.Encoding]::Unicode.GetBytes("\Registry\User\$1");@($2,"SymbolicLinkValue",0,6,[byte[]]$b,$b.Length)}
 F "RegSetValueEx" (SYM $(($key-split'\\')[1]) $LNK); $EXP="HKLM:\Software\Classes\AppID\{CDCBCFCA-3CDC-436f-A4E2-0E02075250C2}"
 $r="explorer"; if (!$cmd) {$cmd='C:\'}; $dir=test-path -lit ((($cmd -split '^("[^"]+")|^([^\s]+)') -ne'')[0].trim('"')) -type 1
 if (!$dir) {$r="start `"$id`" /high /w"}; sp $EXP RunAs '' -force; start cmd -args ("/q/x/d/r title $id && $r",$cmd) -wait -win 1
 do {sleep 7} while ((gwmi win32_process -filter 'name="explorer.exe"'|? {$_.getownersid().sid -eq "S-1-5-18"}))
 F "RegSetValueEx" (SYM ".Default" $LNK); sp $EXP RunAs "Interactive User" -force } # lean and mean snippet by AveYo, 2018-2021
'@; $key="Registry::HKEY_USERS\$sid\Volatile Environment"; $a1="`$id='$id';`$key='$key';";$a2="`$cmd='$($cmd-replace"'","''")';`n"
sp $key $id $($a1,$a2,$code) -type 7 -force; $arg="$a1 `$env:A=(gi `$key).getvalue(`$id)-join'';rp `$key `$id -force; iex `$env:A"
$_PRESS_ENTER='^,^'; start powershell -args "-win 1 -nop -c $arg" -verb runas }; <#,#>  RunAsTI $env:1;  #:RunAsTI: