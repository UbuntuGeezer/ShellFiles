#!/bin/bash
#InstallZoom.sh - install Zoom from Downloads
#7/11/20.
# Method. download zoom_amd64.deb from Zoom website into Downloads
# cd $USER/Downloads then run sudo apt udate | sudo apt install ./zoom_amd64.deb
cd $USER/Downloads
sudo apt update
sudo apt install ./zoom_amd64.deb
echo "Check icons last page for Zoom icon.."
read -p -t5 "Press Enter to continue..."

