#!/bin/bash

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

# Define OS-dependent binaries and parameters
if [[ "$OSTYPE" == "darwin"* ]]; then
  USB_SCAN_CMD="ioreg -p IOUSB -w0"
else
  USB_SCAN_CMD="lsusb"
fi
USB_GREP_CMD="grep -o 'USB-SERIAL CH340'"

# Check avrdude version
avrdude_version=$(avrdude 2>&1 | grep "avrdude version" | awk '{print $3}' | sed 's/,$//')
if [[ "$avrdude_version" != "8.0" ]]; then
  echo "Error: avrdude version must be 8.0."
  exit 1
fi

echo "Scanning for possible SVS Control Modules..."
sleep 1

com=$($USB_SCAN_CMD | grep -o 'USB-SERIAL CH340' | head -1)
if [ -z "$com" ]; then
  echo "No SVS Control Module Detected. Please make sure your USB cable is plugged in and try again."
  exit 1
fi

echo
echo "Results:"
echo "========================================================================================================================"
$USB_SCAN_CMD | grep -o 'USB-SERIAL CH340'
echo "========================================================================================================================"
echo
sleep 1
echo "Based on the scan of the available COM ports your SVS is probably connected to \"$com\""
echo "Is this correct? (y/n)"
read -r response
if [[ "$response" != "y" ]]; then
  echo "Please manually enter the port number of your SVS Control Module."
  read -r num
else
  num=$($USB_SCAN_CMD | grep -o 'USB-SERIAL CH340' | head -1)
fi

if [[ -z "$num" ]]; then
  echo "No valid COM port entered. Exiting."
  exit 1
fi

echo "The COM port for your SVS is set to $num"
echo "Is this correct? (y/n)"
read -r response
if [[ "$response" != "y" ]]; then
  echo "Please manually enter the port number of your SVS Control Module."
  read -r num
fi

echo "************************************************************************************************************************"
echo "******************************************** SVS Firmware Update Tool V1.0 *********************************************"
echo "********************************************      ARTHRIMUS LLC 2024       *********************************************"
echo "************************************************************************************************************************"
echo
echo "Scanning for the newest SVS firmware file in the \"SVS Firmware Update\" folder..."
echo
sleep 1

fn=$(ls -t SVS_FW_*.hex 2>/dev/null | head -1)
if [ -z "$fn" ]; then
  echo "No SVS firmware file could be found. Please download a new firmware update file from arthrimus.com and place it in the \"SVS Firmware Update\" folder then try again."
  exit 1
fi

echo
echo "Result:"
echo "========================================================================================================================"
echo "$fn"
echo "========================================================================================================================"
sleep 1
echo "The newest firmware update file detected was \"$fn\". Is this the firmware file you wish to update to? (y/n)"
read -r response
if [[ "$response" != "y" ]]; then
  echo "Please manually enter the filename of your firmware update hex file."
  read -r fn
fi

if [[ "$fn" != *.hex ]]; then
  echo "Invalid firmware file. Does not end in \".hex\""
  exit 1
fi

echo "The filename of your update is set to $fn"
echo "Is this correct? (y/n)"
read -r response
if [[ "$response" != "y" ]]; then
  echo "Please manually enter the filename of your firmware update hex file."
  read -r fn
fi

echo "Executing firmware update..."
avrdude -c urclock -p m328p -P "$num" -b 115200 -V -D -U flash:w:"$fn":i