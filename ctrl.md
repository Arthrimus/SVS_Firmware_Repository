---
layout: default
title: SVS Control Module Firmware
---

<h1 align="center" style="margin-top: 0px;">SVS Control Module Firmware</h1>

<p style="margin:30px;"></p>

<h2 align="center" style="margin-top: 0px;">Update Instructions</h2>

<p style="margin:20px;"></p>

## Instructions️

1. Download the firmware update and unzip it somewhere on your computer.
2. Plug the SVS Control Module into your computer using a USB Type C Cable.
3. Run the file labeled "SVS Firmware Update Tool v1.0.bat"
4. The SVS Firmware Update Tool will search for the correct COM port for updating your SVS. The SVS uses a CH340 serial chip, so the firmware update tool searches for any CH340 devices and selects the first one it finds. If you have multiple CH340 devices connected at once you will need to manually select the correct COM port for your SVS.
5. The SVS Firmware Update Tool will search for the latest firmware update file in the root of the firmware update folder. If the firmware update file it selects is different than the one you want to install then you can manually type in the file name of the firmware version you wish to install as long as that file is also located in the root of your firmware update folder.
6. Once the firmware update is complete you can press any key to close the firmware update tool.

<p style="margin:41px;"></p>


## Version 1.10 (2025-02-06)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/blob/main/SVS%20Control%20Module%20Firmwares/SVS%20Firmware%201.10%20Update.zip)

### Changelog:
- Fixed factory reset bug that prevented the user programmable "input up/down" buttons from being erased during the factory reset procedure.
- Fixed IR remote bug that caused the Retro Tink 4k remote's "Profile 1" button to trigger the "input up" function if the user programmed the Retro Tink 4K remote AUX buttons as "input up/down".
- Optimized input detection routine, reducing flash memory usage by 13%.
- Added initial support for periferal communication system. Needed for future modules such as the RGB to Composite Conversion module.


<br/>
