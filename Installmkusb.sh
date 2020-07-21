#!/bin/bash
#Installmkusb.sh - download and install mkusb for making
# usb-bootable persistent ubuntu	7/21/20.  15:30
date +%T >> $system_log 3
echo "  Installing mkusb utility." >> $system_log #
echo "  Installing mkusb utility." 
sudo add-apt-repository ppa:mkusb/ppa
sudo apt update
sudo apt install mkusb usb-pack-efi
date +%T >> $system_log #
echo "  mkusb utility installation complete." >> $system_log #
echo "  mkusb utility installation complete." 
echo -e "Check app icons for mkusb when this shell completes"
read -p "Press Enter to continue"
exit 0

