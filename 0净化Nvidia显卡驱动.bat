Net stop NVDisplay.ContainerLocalSystem

DEL /F /S /Q /A "C:\Program Files\NVIDIA Corporation\NvTopps\_NvTopps.dll"

DEL /F /S /Q /A "C:\Program Files\NVIDIA Corporation\DisplayDriverRAS\_DisplayDriverRAS.dll"

DEL /F /S /Q /A "C:\Program Files\NVIDIA Corporation\NvFBC\NvFBCPlugin.dll"

Net start NVDisplay.ContainerLocalSystem

attrib +r "C:\ProgramData\NVIDIA Corporation\nvtopps\nvtopps.db3"

attrib +r "C:\ProgramData\NVIDIA Corporation\nvtopps\nvtopps.log"

attrib +r "C:\Program Files\NVIDIA Corporation\Display.NvContainer\nvtopps.db3"

pause