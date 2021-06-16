#!/bin/bash
#ReadOnlyOff.sh - turnoff read-only on mounted drive.
#	6/16/21.	wmk.
#
# Entry. ($)U-DISK is system prefix for removable device paths.
#
# Notes. This was originally coded when the Windows hard drive was
# showing up "read-only" booting Ubuntu from a USB flash drive. This
# was because Windows was being shut down and leaving the Windows
# drive in "quick start" mode. Problem was cured by clearing "quick start"
# in Windows setttings.
#
# Modification History.
# --------------------
# 9/27/20.	wmk.	original code.
# 6/16/21.	wmk.	code updated; ($)U-DISK for multihost support.
#date +%T >> $system_log #
if [ -z "$1" ]; then
#  echo "  read-only/off ignored.. must specify flash drive mounted volume name." >> $system_log #
  ~/sysprocs/LOGMSG "  read-only/off ignored.. flash drive mounted volume name not specified."
  echo "  read-only/off.. must specify flash drive mounted volume name."
else
#  echo "  read-only/off $1 - initiated from Terminal" >> $system_log #
  ~/sysprocs/LOGMSG "  read-only/off $1 - initiated from Terminal"
  echo "  read-only/off $1 - initiated from Terminal"
  sudo hdparm -r0 $U_DISK/$1
#  echo "  read-only/off request complete." >> $system_log #
  ~/sysprocs/LOGMSG "  read-only/off request complete."
  echo "  read-only/off reqyest complete."
fi 
# end ReadOnlyOff
