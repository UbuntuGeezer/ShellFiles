#!/bin/bash
# Installtestdisk.sh - Install testdisk utility from repository.
# 	7/21/20. wmk  15:00
# Usage.   bash Installtestdisk.sh
#
# Exit.   testdisk utility installed
#
# Notes. testdisk is a powerful linux/ubuntu utility for managing disk drives.
# It includes file recovery to restore unintentionally deleted files.
sudo apt update
date +%T >> $system_log #
echo "  testdisk installation from repository..." >> $system_log #
echo "  testdisk installation from repository..."
sudo apt install testdisk
echo "  testdisk installation complete." >> $system_log #
echo "  testdisk installation from repository..."
exit 0

