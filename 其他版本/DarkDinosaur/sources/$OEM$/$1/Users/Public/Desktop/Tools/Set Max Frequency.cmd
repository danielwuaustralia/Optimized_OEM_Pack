
<# : standard way of doing hybrid batch + powershell scripts
@powershell -noprofile "iex((Get-Content('%~dfnx0') -Raw))"&exit
#>

<# based on https://pastebin.com/QQkcveSM #>
<# based on https://stackoverflow.com/questions/56424817/change-windows-10-screen-refresh-rate-59-if-60-60-if-59 #>

$pinvokeCode = @"
    using System; 
    using System.Runtime.InteropServices; 

    namespace Display 
    { 
        [StructLayout(LayoutKind.Sequential)] 
        public struct DEVMODE1 
        { 
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)] 
            public string dmDeviceName; 
            public short dmSpecVersion; 
            public short dmDriverVersion; 
            public short dmSize; 
            public short dmDriverExtra; 
            public int dmFields; 

            public short dmOrientation; 
            public short dmPaperSize; 
            public short dmPaperLength; 
            public short dmPaperWidth; 

            public short dmScale; 
            public short dmCopies; 
            public short dmDefaultSource; 
            public short dmPrintQuality; 
            public short dmColor; 
            public short dmDuplex; 
            public short dmYResolution; 
            public short dmTTOption; 
            public short dmCollate; 
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)] 
            public string dmFormName; 
            public short dmLogPixels; 
            public short dmBitsPerPel; 
            public int dmPelsWidth; 
            public int dmPelsHeight; 

            public int dmDisplayFlags; 
            public int dmDisplayFrequency; 

            public int dmICMMethod; 
            public int dmICMIntent; 
            public int dmMediaType; 
            public int dmDitherType; 
            public int dmReserved1; 
            public int dmReserved2; 

            public int dmPanningWidth; 
            public int dmPanningHeight; 
        }; 

        class User_32 
        { 
            [DllImport("user32.dll")] 
            public static extern int EnumDisplaySettings(string deviceName, int modeNum, ref DEVMODE1 devMode); 
            [DllImport("user32.dll")] 
            public static extern int ChangeDisplaySettings(ref DEVMODE1 devMode, int flags); 

            public const int ENUM_CURRENT_SETTINGS = -1; 
            public const int CDS_UPDATEREGISTRY = 0x01; 
            public const int CDS_TEST = 0x02; 
            public const int DISP_CHANGE_SUCCESSFUL = 0; 
            public const int DISP_CHANGE_RESTART = 1; 
            public const int DISP_CHANGE_FAILED = -1; 
        } 

        public class PrimaryScreen  
        { 
            static public string ChangeRefreshRate(int frequency) 
            { 
                DEVMODE1 dm = GetDevMode1(); 

                if (0 != User_32.EnumDisplaySettings(null, User_32.ENUM_CURRENT_SETTINGS, ref dm)) 
                { 
                    dm.dmDisplayFrequency = frequency;

                    int iRet = User_32.ChangeDisplaySettings(ref dm, User_32.CDS_TEST); 

                    if (iRet == User_32.DISP_CHANGE_FAILED) 
                    { 
                        return "1";
                    } 
                    else 
                    { 
                        iRet = User_32.ChangeDisplaySettings(ref dm, User_32.CDS_UPDATEREGISTRY); 
                        switch (iRet) 
                        { 
                            case User_32.DISP_CHANGE_SUCCESSFUL: 
                            { 
                                return "0";
                            } 
                            case User_32.DISP_CHANGE_RESTART: 
                            { 
                                return "0";
                            } 
                            default: 
                            { 
                                return "1";
                            } 
                        } 
                    } 
                } 
                else 
                { 
                    return "1";
                } 
            } 

            private static DEVMODE1 GetDevMode1() 
            { 
                DEVMODE1 dm = new DEVMODE1(); 
                dm.dmDeviceName = new String(new char[32]); 
                dm.dmFormName = new String(new char[32]); 
                dm.dmSize = (short)Marshal.SizeOf(dm); 
                return dm; 
            } 
        } 
    } 
"@ # don't indend this line

Add-Type $pinvokeCode -ErrorAction SilentlyContinue
$Controller = @(gcim "Win32_VideoController")[0];
$MaxRefRate = $Controller.MaxRefreshRate;
$CurRefRate = $Controller.CurrentRefreshRate;
if ($CurRefRate -And $MaxRefRate -And ($CurRefRate -ne $MaxRefRate)) {
  $frequency = [INT]($MaxRefRate + 1);
  if ([Display.PrimaryScreen]::ChangeRefreshRate($MaxRefRate) -eq '1') {
	[Display.PrimaryScreen]::ChangeRefreshRate($frequency);
  }
}