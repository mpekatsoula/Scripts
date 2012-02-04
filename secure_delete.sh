#!/bin/bash
echo "Enter the device you want to clear"
read device
sudo dd if=/dev/zero of="$device"/zerofile
sync
rm $device/zerofile
