#!/bin/bash
# InstallBlessHex.sh - Install Bless Hex Editor from repository.
#	7/26/20.	wmk.	18:45
#
# Modification History.
# ---------------------
# 7/26/20.	wmk.	original code.
# 6/16/21.	wmk.	multihost suppport; verify if installing on persistent.
software="Bless Hex file editor"
if [ "$HOME" == "/home/ubuntu" ]; then
 folderbase="/media/ubuntu/Windows/Users/Bill"
else 
 folderbase=$HOME
 echo "You are going to be installing $software on a persistent system."
 read -p "Do you wish to continue (Y/N)?"
 YN=${REPLY,,}
 if [ "$REPLY" != "y" ]; then
  echo "Bless Hex file editor install abandoned."
  exit 0
 fi
fi
date +%T >> $system_log
echo "  Installing Bless Hex file editor.." >> $system_log
echo "  Installing Bless Hex file editor.."
sudo apt-get update
sudo apt-get install bless
echo "  Bless Hex file editor installed." >> $system_log
echo "  Bless Hex file editor installed."
sudo dpkg -l bless
