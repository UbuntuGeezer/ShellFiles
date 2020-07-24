#!/bin/bash
# Installtestdisk.sh - Install testdisk utility from repository.
# 	7/24/20. wmk  11:00
# Usage.   bash Installtestdisk.sh
#
# Exit.   testdisk utility installed
#
# Notes. testdisk is a powerful linux/ubuntu utility for managing disk drives.
# It includes file recovery to restore unintentionally deleted files.
# Modification History.
# --------------------
# 7/24/20.	wmk.	closing message corrected; exit eliminated
sudo apt update
date +%T >> $system_log #
echo "  testdisk installation from repository..." >> $system_log #
echo "  testdisk installation from repository..."
sudo apt install testdisk
echo "  testdisk installation complete." >> $system_log #
echo "  testdisk installation completed."


