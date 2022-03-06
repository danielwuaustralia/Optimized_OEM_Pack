@echo off

rem check Direct I/O status
fsutil bypassIo state C:\

rem Turn on file and printer sharing for all network profiles
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes

rem Turn on network discovery for all network profiles
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes

rem Disable Firewall
Netsh advfirewall set allprofile state off

rem ipv6
netsh int 6to4 set state state=enabled undoonstop=disabled
netsh int 6to4 set routing routing=enabled sitelocals=enabled
netsh int ipv6 isatap set state enabled
netsh int teredo set state natawareclient
netsh int teredo set state servername=win1910.ipv6.microsoft.com

rem BCDEDIT Boot Tweaks
bcdedit /deletevalue {current} safeboot
bcdedit /deletevalue {current} safebootalternateshell
bcdedit /deletevalue {current} removememory
bcdedit /deletevalue {current} truncatememory
bcdedit /deletevalue {current} useplatformclock
bcdedit /deletevalue {default} safeboot
bcdedit /deletevalue {default} safebootalternateshell
bcdedit /deletevalue {default} removememory
bcdedit /deletevalue {default} truncatememory
bcdedit /deletevalue {default} useplatformclock
bcdedit /set {current} hypervisorlaunchtype off
Bcdedit /set {current} flightsigning on
bcdedit /set {bootmgr} displaybootmenu no
Bcdedit /set {bootmgr} flightsigning on
bcdedit /set {current} bootems no
bcdedit /set {current} bootmenupolicy legacy
bcdedit /set {current} bootstatuspolicy IgnoreAllFailures
bcdedit /set {current} disabledynamictick yes
bcdedit /set {current} lastknowngood yes
bcdedit /set {current} recoveryenabled no
bcdedit /set {default} bootems no
bcdedit /set {default} bootmenupolicy legacy
bcdedit /set {default} bootstatuspolicy IgnoreAllFailures
bcdedit /set {default} disabledynamictick yes
bcdedit /set {default} lastknowngood yes
bcdedit /set {default} recoveryenabled no
bcdedit /timeout 0
bcdedit /set {current} advancedoptions no
bcdedit /set {current} testsigning no
bcdedit /set {current} disableelamdrivers yes
bcdedit /set {current} vsmlaunchtype Off
bcdedit /set {current} vm No
bcdedit /set {current} isolatedcontext no
bcdedit /set {current} allowedinmemorysettings 0x0
bcdedit /set {current} bootlog Yes
BCDEDIT /set {current} nx OptIn

rem Apply Best File System Tweaks
fsutil behavior set disable8dot3 1
fsutil behavior set disableencryption 1
fsutil behavior set disablelastaccess 1
fsutil behavior set EncryptPagingFile 0
fsutil behavior set symlinkEvaluation L2R:0 R2R:0 R2L:0
cipher /d /s:C:\

rem Netsh
netsh int tcp set supplemental template=internet
rem Enabling URO
netsh int udp set global uro=enabled
netsh int tcp set global rss=enable
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set global ecncapability=disable
netsh int tcp set global timestamps=enable
netsh int tcp set global initialrto=300
netsh int tcp set global rsc=disable
netsh int tcp set global fastopen=enable
netsh int tcp set global hystart=disable
netsh int tcp set global pacingprofile=off
netsh int ip set global minmtu=576
netsh int ip set global flowlabel=disable
netsh int tcp set supplemental Internet congestionprovider=bbr2
netsh int tcp set supplemental internet enablecwndrestart=disable
netsh int ip set global icmpredirects=disabled
netsh int ip set global multicastforwarding=disabled
netsh int ip set global groupforwardedfragments=disable
netsh int tcp set security mpp=disabled profiles=disabled
netsh int tcp set heur forcews=disable

rem Enable Winsock Send Autotuning (dynamic send-buffer)
netsh winsock set autotuning on

rem Disable Windows File Compression
compact /CompactOs:never

rem Allows (1) or disallows (0) characters from the extended character set (including diacritic characters) to be used in 8.3 character-length short file names on NTFS volumes
fsutil behavior set allowextchar 1

rem Allows (1) or disallows (0) generation of a bug check when there is corruption on an NTFS volume. This feature can be used to prevent NTFS from silently deleting data when used with the Self-Healing NTFS feature
fsutil behavior set Bugcheckoncorrupt 0

rem Disables (1) or enables (0) NTFS compression
fsutil behavior set disablecompression 1

rem Disables (1) or enables (0) updates to the Last Access Time stamp on each directory when directories are listed on an NTFS volume
fsutil behavior set DisableLastAccess 1

rem Encrypts (1) or doesn't encrypt (0) the memory paging file in the Windows operating system
fsutil behavior set encryptpagingfile 0

rem Configures the internal cache levels of NTFS paged-pool memory and NTFS nonpaged-pool memory. Set to 1 or 2. When set to 1 (the default), NTFS uses the default amount of paged-pool memory. When set to 2, NTFS increases the size of its lookaside lists and memory thresholds. (A lookaside list is a pool of fixed-size memory buffers that the kernel and device drivers create as private memory caches for file system operations, such as reading a file.)
fsutil behavior set memoryusage 2

rem Sets the size of the MFT Zone, and is expressed as a multiple of 200MB units. Set value to a number from 1 (default is 200 MB) to 4 (maximum is 800 MB)
fsutil behavior set mftzone 2

rem Transactional Resource Manager
fsutil resource setavailable c:
fsutil resource setlog shrink 10 C:\
fsutil resource setavailable d:
fsutil resource setlog shrink 10 D:\
fsutil resource setautoreset true c:\
fsutil usn deletejournal /d /n c:
fsutil usn deletejournal /d /n d:

rem Disable hibernation
POWERCFG /HIBERNATE OFF

rem Enable TRIM support
fsutil behavior set disabledeletenotify 0

rem Disable Microsoft Virtual WiFi Miniport Adapter is a virtual adaptor for sharing your internet connection (ie. making a wifi hotspot, or 'hosted network')
netsh wlan set hostednetwork mode=disallow

rem Remove GameBarPresenceWriter.exe (to restore run SFC scan)
takeown /s %computername% /u %username% /f "%WINDIR%\System32\GameBarPresenceWriter.exe"
icacls "%WINDIR%\System32\GameBarPresenceWriter.exe" /inheritance:r /grant:r %username%:F
taskkill /im GameBarPresenceWriter.exe /f
del "%WINDIR%\System32\GameBarPresenceWriter.exe" /s /f /q

rem stop Nvidia
attrib +r "C:\ProgramData\NVIDIA Corporation\nvtopps\nvtopps.db3"
attrib +r "C:\ProgramData\NVIDIA Corporation\nvtopps\nvtopps.log"
