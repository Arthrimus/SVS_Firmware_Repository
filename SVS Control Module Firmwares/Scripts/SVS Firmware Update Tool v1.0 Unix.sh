#!/bin/bash

clear

echo "************************************************************************************************************************"
echo "******************************************** SVS Firmware Update Tool V1.0 *********************************************"
echo "********************************************      ARTHRIMUS LLC 2024       *********************************************"
echo "************************************************************************************************************************"
echo

# Check if avrdude is installed
if ! command -v avrdude &> /dev/null; then
  echo "Error: avrdude is not installed."
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Please install Homebrew and avrdude by running the following commands:"
    echo "/bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    echo "brew install avrdude"
  else
    echo "Please install avrdude using your package manager. For example:"
    echo "sudo apt-get install avrdude"
  fi
  exit 1
fi

echo "Scanning for possible SVS Control Modules..."

# Scan for serial devices
if [[ "$OSTYPE" == "darwin"* ]]; then
  USB_DEVICE=$(ioreg -r -c IOSerialBSDClient -l | grep 'IOCalloutDevice' | grep 'cu.usbserial' | head -n 1 | awk -F '"' '{print $4}')
else
  USB_DEVICE=$(ls /dev/ttyUSB* 2>/dev/null | head -n 1)
fi

if [ -z "$USB_DEVICE" ]; then
  echo "No SVS Control Module Detected. Please make sure your USB cable is plugged in and try again."
  exit 1
fi

echo
echo "Results:"
echo "========================================================================================================================"
echo $USB_DEVICE
echo "========================================================================================================================"
echo
echo "Based on the scan of the available serial port devices your SVS is probably connected to \"$USB_DEVICE\""
echo "Is this correct? (y/n)"
read -r response
if [[ "$response" != "y" ]]; then
  echo "Please manually enter the serial port (e.g., /dev/cu.usbserial-XXX or /dev/ttyUSBX) of your SVS Control Module:"
  read -r USB_DEVICE
fi

# Check if the entered port exists in /dev/ and matches either /dev/cu.* (macOS) or /dev/ttyUSB* (Linux)
if [[ ! -e "$USB_DEVICE" || ( "$USB_DEVICE" != /dev/cu.* && "$USB_DEVICE" != /dev/ttyUSB* ) ]]; then
    echo "Error: Invalid serial port. Please check and try again."
    exit 1
fi

# Get the directory where the script is located
SCRIPT_DIR=$(dirname "$(realpath "$0")")

echo "Scanning for the newest SVS firmware file in the \"SVS Firmware Update\" $SCRIPT_DIR folder..."
echo

# Search for .hex files in the script directory
fn=$(ls -t "$SCRIPT_DIR"/SVS_FW_*.hex 2>/dev/null | head -1)
if [ -z "$fn" ]; then
  echo "No SVS firmware file could be found in the $SCRIPT_DIR directory."
  echo "Please download a new firmware update file from arthrimus.com, place it in the $SCRIPT_DIR directory and try again."
  exit 1
fi

echo
echo "Result:"
echo "========================================================================================================================"
echo "$fn"
echo "========================================================================================================================"
echo "The newest firmware update file detected was \"$fn\"."
echo "Is this the firmware file you wish to update to? (y/n)"
read -r response
if [[ "$response" != "y" ]]; then
  echo "Please manually enter the filename of your firmware update hex file."
  echo "The file must be located in $SCRIPT_DIR directory."
  read -r fn
  # Prepend the script directory to the manually entered filename
  fn="$SCRIPT_DIR/$fn"
fi

# Check if the file exists and ends with ".hex"
if [[ ! -e "$fn" || "$fn" != *.hex ]]; then
  echo "Invalid firmware file. File either does not exist or does not end in \".hex\""
  exit 1
fi

echo "The filename of your update is set to $fn"
echo "Are you sure you want to proceed with the firmware update? (y/n)"
read -r response
if [[ "$response" != "y" ]]; then
  echo "Exiting..."
  exit 1
fi

echo "Executing firmware update..."
avrdude -c urclock -p m328p -P "$USB_DEVICE" -b 115200 -V -D -U flash:w:"$fn":i

# escaped_fn=$(printf '%q' "$fn")
# avrdude -c urclock -p m328p -P "$USB_DEVICE" -b 115200 -V -D -U flash:w:"$escaped_fn":i
