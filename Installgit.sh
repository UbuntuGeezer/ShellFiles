#!/bin/bash
#Installgit.sh - install:git: on transient Ubuntu.
#	7//20.	wmk.08:15	
# Modification History.
# --------------------
# 7/18/20.	wmk.	original script
# 7/21/20. 	wmk.	added System Log messages
# 7/29/20.	wmk.	fixed last System log reference
date +%T >> $system_log #
echo "  Installing git..." >> $system_log #
echo "  Installing git..."
sudo apt update
git -version
sudo apt install git
echo "  git installed from repository."
date +%T >> $system_log #
echo "  git installed from repository." >> $system_log #
read -t3 -p "Press Enter to continue.."
echo
