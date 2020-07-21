#!/bin/bash
#InstallZoom.sh - install Zoom from Downloads
#	7/21/20.	wmk.  15:45
# Method. download zoom_amd64.deb from Zoom website into Downloads
# cd $USER/Downloads then run sudo apt udate | sudo apt install ./zoom_amd64.deb
date +%T >> $system_log #
echo "  Installing Zoom..." >> $system_log #
echo "  Installing Zoom..."
pushd ./
cd $WINUBUNTU_PATH/Downloads
sudo apt update
sudo apt install ./zoom_amd64.deb
popd
echo "  Zoom installation complete." >> $system_log
echo "  Zoom installation complete."
echo "Check icons last page for Zoom icon.."
read -p -t5 "Press Enter to continue..."
echo
exit 0

