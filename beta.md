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
3. Run the batch file labeled "SVS Firmware Update Tool v1.0 Windows.bat"
4. The SVS Firmware Update Tool will search for the correct COM port for updating your SVS. The SVS uses a CH340 serial chip, so the firmware update tool searches for any CH340 devices and selects the first one it finds. If you have multiple CH340 devices connected at once you will need to manually select the correct COM port for your SVS.
5. The SVS Firmware Update Tool will search for the latest firmware update file in the root of the firmware update folder. If the firmware update file it selects is different than the one you want to install then you can manually type in the file name of the firmware version you wish to install as long as that file is also located in the root of your firmware update folder.
6. Once the firmware update is complete you can press any key to close the firmware update tool.

<p style="margin:50px;"></p>

### Unix Users

 Thanks to the fantastic work of [Thiaramus](https://github.com/thiaramus), the firmware update script has been ported to Unix based systems such as Linux and MacOS.

#### Linux Users

* Install AVRDUDE using your package manager:

Open a terminal and run the following command to install AVRDUDE:
`sudo apt-get install avrdude`

_For your specific Linux distribution, you may need to use a different package manager or command to install AVRDUDE.
The example above is for Ubuntu and Debian based distributions._

* Run in the terminal:
`bash SVS\ Firmware\ Update\ Tool\ v1.0\ Unix.sh`

#### Mac Users

1. Follow the instruction at [https://brew.sh](https://brew.sh) to install Brew.

2. Install AVRDUDE using Brew:
`brew install avrdude`

3. Run in the terminal:
`bash SVS\ Firmware\ Update\ Tool\ v1.0\ Unix.sh`


<p style="margin:100px;"></p>


<h2 align="center" style="margin-top: 0px;">Firmware Update Downloads</h2>

<p style="margin:50px;"></p>

## Version 1.14 Beta (2025-03-09)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/releases/download/v1.14_BETA/SVS_Firmware_1.14_BETA.7z)

### Changelog:
- Added an interrupt to the control module pushbutton to cancel SD card reading and IR code transmission to speed up manual input cycling during IR code transmission sequence.
- Added a quasi-interrupt like function to the IR receiver to cancel IR code transmission, but not SD reading, to speed up manual input cycling during IR code transmission sequence. (true interrupt not feasible at this time)
- Added user defined IR code transmission delay time for SD card IR code files. (Was present in older firmware, but was temporarily removed (accidentally) in 1.13 as part of the SD card loading system rewrite)
- Added Power on/off option using the SVS IR remote and serial commands. _Use the Power Button on the SVS remote_
- Added "attract mode" option to automatically cycle through inputs at timed intervals. (Just for fun!)  _Use the "Mute" button on the IR remote to toggle this on or off._
- Optimized serial parser to significantly reduce memory usage. (We're running out of RAM!)
- Updated peripheral communication system's command set to reduce memory usage. (No really, we're running out of RAM.)
- Converted all 2 state variables from integer (we used to have it so easy) to Boolean to reduce memory usage.(We're pretty desperate for RAM at this point.)

<p style="margin:50px;"></p>

## Version 1.11 Beta (2025-02-17)

### [Download](https://github.com/Arthrimus/SVS_Firmware_Repository/releases/download/v1.11_BETA/SVS_Firmware_1.11_BETA.zip)

### Changelog:
- Added 500ms delay to new input detection. This helps eliminate phantom input detection caused by occasional transient voltage spikes inside the switch.


<br/>
