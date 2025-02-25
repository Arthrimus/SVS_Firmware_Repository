* Update Instructions

** Windows Users

Download the firmware update and unzip it somewhere on your computer.
Plug the SVS Control Module into your computer using a USB Type C Cable.
Run the batch file labeled “SVS Firmware Update Tool v1.0.bat”
The SVS Firmware Update Tool will search for the correct COM port for updating your SVS. The SVS uses a CH340 serial chip, so the firmware update tool searches for any CH340 devices and selects the first one it finds. If you have multiple CH340 devices connected at once you will need to manually select the correct COM port for your SVS.
The SVS Firmware Update Tool will search for the latest firmware update file in the root of the firmware update folder. If the firmware update file it selects is different than the one you want to install then you can manually type in the file name of the firmware version you wish to install as long as that file is also located in the root of your firmware update folder.
Once the firmware update is complete you can press any key to close the firmware update tool.

** Linux Users

Install AVRDUDE using your package manager:

Open a terminal and run the following command to install AVRDUDE:
sudo apt-get install avrdude

For your specific Linux distribution, you may need to use a different package manager or command to install AVRDUDE.
The example above is for Ubuntu and Debian based distributions.

Run in the terminal:
bash SVS\ Firmware\ Update\ Tool\ v1.0\ Unix.sh

** Mac Users

Follow the instruction at https://brew.sh to install Brew.

Install AVRDUDE using Brew:
brew install avrdude

Run in the terminal:
bash SVS\ Firmware\ Update\ Tool\ v1.0\ Unix.sh
