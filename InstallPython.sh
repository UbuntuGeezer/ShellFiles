#!/bin/bash
# InstallPython.sh - Install Python 3.8 from repository
#	7/24/20.	wmk. 11:15
# Usage. bash InstallPython.sh
# Exit.  if successful, Python 3.8 installed from repository
date +%T >> $system_log #
echo "  Installing Python 3.8..." >> $system_log #

echo "  Installing Python 3.8..."
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.8
echo "  Python installation complete." >> $system_log #
echo "  Python version running is.." >> $system_log #
python --version >> $system_log #
echo "  Python installation complete."
echo "  Python version running is.."
python --version

