#!/bin/bash
# Secure file deletion. Well almost secure ;)
# First rm the file you want to delete and never to be found, and
# then run this sctipt.
# This script takes as an argument a mounted device, and writes
# zero to all of the free space. Then syncs the filesystem files
# and removes the generated file. It is the most fast and secure way of 
# deleting your files, without having to reformat the whole drive.
# It may take some time. (ok a long long time on big drives)
# Example input: /media/mounted_volume
echo "Enter the device you want to clear"
read device
sudo dd if=/dev/zero of="$device"/zerofile
sync
rm "$device"/zerofile
