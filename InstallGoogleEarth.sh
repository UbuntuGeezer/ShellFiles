#!/bin/bash
#InstallGoogleEarth.sh - install GoogleEarth from Downloads
#	12/14/20.	wmk.  08:15
# Method. download zoom_amd64.deb from Zoom website into Downloads
# cd $USER/Downloads then run sudo apt udate | sudo apt install ./zoom_amd64.deb
# Modification History.
# ---------------------
# 12/14/20. wmk. adapted from InstallZoom
date +%T >> $system_log #
echo "  Installing GoogleEarth..." >> $system_log #
echo "  Installing GoogleEarth..."
pushd ./
cd $WINUBUNTU_PATH/Downloads
sudo apt update
sudo apt install ./google-earth-pro-stable_current_amd64.deb
popd
echo "  GoogleEarth installation complete." >> $system_log
echo "  GoogleEarth installation complete."
echo "Check icons last page for GoogleEarth icon.."
read -p "Press Enter to continue..."
echo ""


