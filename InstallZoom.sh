#!/bin/bash
#InstallZoom.sh - install Zoom from Downloads
#	7/24/20.	wmk.  10:30
# Method. download zoom_amd64.deb from Zoom website into Downloads
# cd $USER/Downloads then run sudo apt udate | sudo apt install ./zoom_amd64.deb
# Modification History.
# ---------------------
# 7/24/20. wmk.	read command corrected; exit eliminated
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
read -p "Press Enter to continue..."
echo


