<# : standard way of doing hybrid batch + powershell scripts
@cls
@echo off
>nul chcp 437
title Chrome Download Tool
@powershell -noexit -noprofile "iex((Get-Content('%~dfnx0') -Raw))"&exit
#>

<# Credits :: AveYo & kaljukass  #>
<# Re-Written completely in powershell code #>

<# Gaining administrator privileges in PowerShell
https://serverfault.com/questions/11879/gaining-administrator-privileges-in-powershell #>

#at top of script
$Administrator = [Security.Principal.WindowsBuiltInRole]::Administrator
$WindowsPrincipal = New-Object Security.Principal.WindowsPrincipal(
  [Security.Principal.WindowsIdentity]::GetCurrent())
  
if (!($WindowsPrincipal.IsInRole($Administrator))) {
    write-host
	write-host Make sure to run this script as Administrator
	write-host
	pause
    exit
}

$arch = @(gwmi win32_operatingsystem).osarchitecture
$Proc = gwmi Win32_Process | ? name -eq 'chrome.exe'
$Prod = gwmi Win32_Product | ? name -eq 'Google Chrome'
$reg  = Join-Path $env:temp -ChildPath '\set_chrome_as_default_browser.reg'

switch ($arch)
{
  "32-bit" {
	$ChromeTempFile=Join-Path $env:temp -ChildPath 'googlechromestandaloneenterprise.msi'
	$ChromeDownloadURL='https://dl.google.com/chrome/install/googlechromestandaloneenterprise.msi'
  }
  "64-bit" {
	$ChromeTempFile=Join-Path $env:temp -ChildPath 'googlechromestandaloneenterprise64.msi'
	$ChromeDownloadURL='https://dl.google.com/chrome/install/googlechromestandaloneenterprise64.msi'
  }
  Default  {
	$ChromeTempFile=Join-Path $env:temp -ChildPath 'googlechromestandaloneenterprise.msi'
	$ChromeDownloadURL='https://dl.google.com/chrome/install/googlechromestandaloneenterprise.msi'
  }
}

try {
	Write-Host
	Write-Host '  ### Download latest Chrome'
	(new-object Net.WebClient).DownloadFile($ChromeDownloadURL, $ChromeTempFile)
}
catch {
	Write-Host
	Write-Host '  ### [ ERROR ] Check your internet connection'
	Write-Host
	Write-Host '  Script will end in 3 Seconds'
	Start-Sleep -s 3
	[Environment]::Exit(1)
}

Write-Host '  ### Close Chrome'
if ($Proc) {Stop-Process -Name "Chrome" -Force}

Write-Host '  ### Remove  old version'
if ($Prod) {$Prod.UnInstall() | Out-Null}

Write-Host '  ### Install new version'
start $ChromeTempFile -args '/qn' -Wait

try {
	Write-Host '  ### Start Chrome'
	start Chrome
}
catch {
	Write-Host
	Write-Host '  ### [ ERROR ] Chrome Installtion failed'
	Write-Host
	Write-Host '  Script will end in 3 Seconds'
	Start-Sleep -s 3
	[Environment]::Exit(1)
}

Write-Host '  ### Settings Chrome As Default Browser (thanks to kaljukass)'
$Data = @'
Windows Registry Editor Version 5.00

;; Change the default Web Browser is now difficult...??
;; https://forums.mydigitallife.net/threads/change-the-default-web-browser-is-now-difficult.84247/#post-1695228

[HKEY_CLASSES_ROOT\http]
@="URL:http"
"AppUserModelID"="Microsoft.InternetExplorer.Default"
"EditFlags"=dword:00000002
"FriendlyTypeName"="@C:\\Windows\\system32\\ieframe.dll,-903"
"Source Filter"="{E436EBB6-524F-11CE-9F53-0020AF0BA770}"
"URL Protocol"=""

[HKEY_CLASSES_ROOT\http\DefaultIcon]
@="C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe,0"

[HKEY_CLASSES_ROOT\http\Extensions]
".ASF"="{187463A0-5BB7-11D3-ACBE-0080C75E246E}"
".WM"="{187463A0-5BB7-11D3-ACBE-0080C75E246E}"
".WMA"="{187463A0-5BB7-11D3-ACBE-0080C75E246E}"
".WMV"="{187463A0-5BB7-11D3-ACBE-0080C75E246E}"

[HKEY_CLASSES_ROOT\http\shell]
@="open"

[HKEY_CLASSES_ROOT\http\shell\open]
"CommandId"="IE.Protocol"
"DontReturnProcessHandle"=""

[HKEY_CLASSES_ROOT\http\shell\open\command]
@="\"C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe\" -- \"%1\""
"DelegateExecute"="{17FE9752-0B5A-4665-84CD-569794602F5C}"

[HKEY_CLASSES_ROOT\https]
@="URL:https"
"AppUserModelID"="Microsoft.InternetExplorer.Default"
"EditFlags"=dword:00000002
"FriendlyTypeName"="@C:\\Windows\\system32\\ieframe.dll,-904"
"Source Filter"="{E436EBB6-524F-11CE-9F53-0020AF0BA770}"
"URL Protocol"=""

[HKEY_CLASSES_ROOT\https\DefaultIcon]
@="C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe,0"

[HKEY_CLASSES_ROOT\https\shell]
@="open"

[HKEY_CLASSES_ROOT\https\shell\open]
"CommandId"="IE.Protocol"

[HKEY_CLASSES_ROOT\https\shell\open\command]
@="\"C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe\" -- \"%1\""
"DelegateExecute"="{17FE9752-0B5A-4665-84CD-569794602F5C}"
:set_chrome_as_default_browser:]
'@
$Data | out-file $reg
reg import $reg *> $null

Write-Host '  ### Remove Temporary files'
Remove-Item $reg
Remove-Item $ChromeTempFile

Write-Host
Write-Host '  Script will end in 5 Seconds'
Start-Sleep -s 5
[Environment]::Exit(1)