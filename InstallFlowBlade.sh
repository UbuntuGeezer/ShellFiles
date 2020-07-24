#!/bin/bash
#InstallFlowBlade.sh - install FlowBlade from Downloads
#	7/23/20.
# Method. use downloaed flowblade-2.0.0-1_all.deb from website Downloads
# cd $USER/Downloads then run sudo apt udate | sudo apt install ./flowblade-2.0.0-1_all.deb
date +%T >> $system_log #
echo "  Installing FlowBlade 2.0..." >> $system_log #
echo "  Installing FlowBlade 2.0..."
cd WINUBUNTU_PATH/Downloads
sudo apt update
sudo apt install ./flowblade-2.0.0-1_all.deb
echo "  FlowBlade 2,0 installation complete." >> $system_log #
echo "  FlowBlade 2.0 installation complete."
echo "Check icons last page for FlowBlade icon.."
read -p  "Press Enter to continue..."

