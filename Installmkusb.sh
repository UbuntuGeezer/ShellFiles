#Installmkusb.sh - download and install mkusb for making
# usb-bootable persistent ubuntu	7/11/20.
sudo add-apt-repository universe
sudo add-apt-repository ppa:mkusb/ppa
sudo apt update
sudo apt install mkusb usb-pack-efi
echo -e "Check app icons for mkusb when this shell completes"
read -p "Press Enter to continue"

