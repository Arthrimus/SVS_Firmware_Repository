* Update Instructions

** Windows Users

Download the firmware update and unzip it somewhere on your computer.
Plug the SVS Control Module into your computer using a USB Type C Cable.
Run the batch file labeled “SVS Firmware Update Tool v1.0.bat”
The SVS Firmware Update Tool will search for the correct COM port for updating your SVS. The SVS uses a CH340 serial chip, so the firmware update tool searches for any CH340 devices and selects the first one it finds. If you have multiple CH340 devices connected at once you will need to manually select the correct COM port for your SVS.
The SVS Firmware Update Tool will search for the latest firmware update file in the root of the firmware update folder. If the firmware update file it selects is different than the one you want to install then you can manually type in the file name of the firmware version you wish to install as long as that file is also located in the root of your firmware update folder.
Once the firmware update is complete you can press any key to close the firmware update tool.

** Linux and Mac Users

Currently there is no automated script for updating on these platforms. You will need to use AVRDUDE for firmware updates. Below is the command that you need to use. Where <serialpath> is replaced with the correct serial port path for your SVS’s USB serial chip, and where <filepath> is replaced with the full path to the hex file from the firmware update package. Make sure you use this exact command. If you set the programming options incorrectly then you can brick your control module. The only way to recover it is to send it back to me to have the factory base firmware and security keys reloaded.

AVRDUDE Update Command
./avrdude -c urclock -p m328p -P <serialpath> -b 115200 -V -D -U flash:w:"<filepath>":i