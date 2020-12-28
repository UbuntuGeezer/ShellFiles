#!/bin/bash
# InstallURE.sh - Install ubuntu-restricted-extras.
# The Ubuntu restricted extras are a repository of add-ins that play
# MP4 videos, audio files, etc. First used for streaming JW broadcasting
# video download of circuit assembly.
sudo add-apt-repository multiverse
sudo apt install ubuntu-restricted-extras
date >> $system_log #
echo "  Ubuntu Restricted Extras installed from repository." >> $system_log #
echo "Ubuntu Restricted Extras installed from repository."
read -p "Press Enter to continue..."
