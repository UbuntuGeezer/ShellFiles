#!/bin/bash
#Installgit.sh - install git: on transient Ubuntu.
#	7/18/20.	wmk.	18:00
# Modification History.
# --------------------
# 7/18/20.	wmk.	original script
# 7/21/20. 	wmk.	added System Log messages
date +%T >> $system_log #
echo "  Installing git..." >> $system_log #
echo "  Installing git..."
sudo apt update
git -version
sudo apt install git
echo "  git installed from repository."
date +%T >> $log_file
echo "  git installed from repository." >> $system_log #
read -t3 -p "Press Enter to continue.."
echo
