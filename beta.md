---
layout: default
title: SVS Control Module Beta Firmware
---

<h1 align="center" style="margin-top: 0px;">SVS Control Module Firmware BETA Versions</h1>


### Warning! These are BETA firmwares. You may experience unexpected results. You can revert to STABLE firmware versions at any time.

### [For STABLE firmware versions click here](index.md)



<h2 align="center" style="margin-top: 0px;">Update Instructions</h2>

<p style="margin:20px;"></p>

### Windows Users

1. Download the firmware update and unzip it somewhere on your computer.
2. Plug the SVS Control Module into your computer using a USB Type C Cable.
3. Run the batch file labeled "SVS Firmware Update Tool v1.0.bat"
4. The SVS Firmware Update Tool will search for the correct COM port for updating your SVS. The SVS uses a CH340 serial chip, so the firmware update tool searches for any CH340 devices and selects the first one it finds. If you have multiple CH340 devices connected at once you will need to manually select the correct COM port for your SVS.
5. The SVS Firmware Update Tool will search for the latest firmware update file in the root of the firmware update folder. If the firmware update file it selects is different than the one you want to install then you can manually type in the file name of the firmware version you wish to install as long as that file is also located in the root of your firmware update folder.
6. Once the firmware update is complete you can press any key to close the firmware update tool.

<p style="margin:50px;"></p>

### Unix Users

 Thanks to the fantastic work of [Thiaramus](https://github.com/thiaramus) firmware update packages now include an automated firmware update script for Unix based systems such as Linux and MacOS as well.

#### Linux Users

* Install AVRDUDE using your package manager:

Open a terminal and run the following command to install AVRDUDE:
`sudo apt-get install avrdude`

For your specific Linux distribution, you may need to use a different package manager or command to install AVRDUDE.
The example above is for Ubuntu and Debian based distributions.

* Run in the terminal:
`bash SVS\ Firmware\ Update\ Tool\ v1.0\ Unix.sh`

#### Mac Users

1. Follow the instruction at https://brew.sh to install Brew.

2. Install AVRDUDE using Brew:
`brew install avrdude`

3. Run in the terminal:
`bash SVS\ Firmware\ Update\ Tool\ v1.0\ Unix.sh`


<p style="margin:100px;"></p>


<h2 align="center" style="margin-top: 0px;">Firmware Update Downloads</h2>

<p style="margin:50px;"></p>

## Version 1.11 Beta (2025-02-17)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/releases/download/v1.11_BETA/SVS_Firmware_1.11_BETA.zip)

### Changelog:
- Added 500ms delay to new input detection. This helps eleminate phantom input detection caused by occasional transient voltage spikes inside the switch.


<br/>
