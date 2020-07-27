#!/bin/bash
# InstallBlessHex.sh - Install Bless Hex Editor from repository.
#	7/26/20.	wmk.	18:45
date +%T >> $system_log
echo "  Installing Bless Hex file editor.." >> $system_log
echo "  Installing Bless Hex file editor.."
sudo apt-get update
sudo apt-get install bless
echo "  Bless Hex file editor installed." >> $system_log
echo "  Bless Hex file editor installed."
sudo dpkg -l bless
