---
layout: default
title: SVS Control Module Firmware
---

<h1 align="center" style="margin-top: 0px;">SVS Control Module STABLE Firmware</h1>

<p style="margin:30px;"></p>

### [For BETA firmware versions click here](beta.md)


### [For IR Code SD Card Files click here](ir.md)

<p style="margin:20px;"></p>

<h2 align="center" style="margin-top: 0px;">Update Instructions</h2>

<p style="margin:20px;"></p>

### Windows Users

1. Download the firmware update and unzip it somewhere on your computer.
2. Plug the SVS Control Module into your computer using a USB Type C Cable.
3. Run the batch file labeled "SVS Firmware Update Tool v1.0.bat"
4. The SVS Firmware Update Tool will search for the correct COM port for updating your SVS. The SVS uses a CH340 serial chip, so the firmware update tool searches for any CH340 devices and selects the first one it finds. If you have multiple CH340 devices connected at once you will need to manually select the correct COM port for your SVS.
5. The SVS Firmware Update Tool will search for the latest firmware update file in the root of the firmware update folder. If the firmware update file it selects is different than the one you want to install then you can manually type in the file name of the firmware version you wish to install as long as that file is also located in the root of your firmware update folder.
6. Once the firmware update is complete you can press any key to close the firmware update tool.

### Linux and Mac Users

Currently there is no automated script for updating on these platforms. You will need to use AVRDUDE for firmware updates. Below is the command that you need to use. Where `<serialpath>` is replaced with the correct serial port number for your SVS's USB serial chip, and where `<filepath>` is replaced with the full path to the hex file from the firmware update package. Make sure you use this exact command. If you set the programming options incorrectly then you can brick your control module. The only way to recover it is to send it back to me to have the factory base firmware and security keys reloaded.

##### AVRDUDE Update Command
`./avrdude -c urclock -p m328p -P <serialpath> -b 115200 -V -D -U flash:w:"<filepath>":i `


<p style="margin:41px;"></p>


## Version 1.12 (2025-02-21)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/raw/refs/heads/main/SVS%20Control%20Module%20Firmwares/SVS%20Firmware%201.12%20Update.7z)

### Changelog:
- Added 500ms delay to new input detection. This helps eleminate phantom input detection caused by occasional transient voltage spikes inside the switch
- Added USB based serial control system. Inputs can now be manually selected by passing serial commands to the SVS. [See Here for details.](serial.md)
- Refined the peripheral communication system.

<p style="margin:41px;"></p>


## Version 1.10 (2025-02-06)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/raw/refs/heads/main/SVS%20Control%20Module%20Firmwares/SVS%20Firmware%201.10%20Update.7z)

### Changelog:
- Fixed factory reset bug that prevented the user programmable "input up/down" buttons from being erased during the factory reset procedure.
- Fixed IR remote bug that caused the Retro Tink 4k remote's "Profile 1" button to trigger the "input up" function if the user programmed the Retro Tink 4K remote AUX buttons as "input up/down".
- Optimized input detection routine, reducing flash memory usage by 13%.
- Added initial support for peripheral communication system. Needed for future modules such as the RGB to Component Conversion module.


<br/>
