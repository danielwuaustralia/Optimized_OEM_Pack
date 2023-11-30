@echo on
setlocal EnableExtensions
setlocal DisableDelayedExpansion
color 0a

:: https://learn.microsoft.com/en-us/windows-hardware/get-started/adk-install

Dism /Cleanup-Wim

call "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\DandISetEnv.bat"

copype amd64 C:\USB_WinPE

md "C:\Mount"
Dism /English /Mount-Image /ImageFile:"C:\USB_WinPE\media\sources\boot.wim" /Index:1 /MountDir:"C:\Mount"

Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-WMI.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-WMI_en-us.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-NetFX.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-NetFX_en-us.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-Scripting.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-Scripting_en-us.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-PowerShell.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-PowerShell_en-us.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-StorageWMI.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-StorageWMI_en-us.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-DismCmdlets.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-DismCmdlets_en-us.cab"
Dism /English /Add-Package /Image:"C:\Mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-FontSupport-ZH-CN.cab"

md "C:\Mount\windows\WinNTSetup"

Xcopy D:\Tools\WinNTSetup "C:\Mount\windows\WinNTSetup" /s /e

Xcopy "C:\Winpeshl.ini" "C:\Mount\windows\System32"

Dism /English /Unmount-Image /MountDir:"C:\Mount" /commit

:: C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\MakeWinPEMedia.cmd
:: Old Line: echo format fs=fat32 label="WinPE" quick >> "%DISKPARTSCRIPT%"
:: New Line: echo format fs=exFAT label="WinPE" quick >> "%DISKPARTSCRIPT%"

MakeWinPEMedia /UFD C:\USB_WinPE E: