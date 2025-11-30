A basic Powershell UI front-end for the firmware update utility for the Scalable Video Switcher from Arthrimus.

The EXE should be placed in the top level folder for an extracted SVS Firmware update, i.e. in the same folder as the SVS_FW_x.xx.hex file itself.

This does not perform the actual flashing, it instructs the AVRDUDE.EXE file in the tools folder to perform the actual flashing - this is purely a frontend to try and simplify the process.
