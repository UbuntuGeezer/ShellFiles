#!/bin/bash
#ReadOnlyOff.sh - turnoff read-only on mounted drive.
#	9/27/20.	wmk.
date +%T >> $system_log #
if [ -z "$1" ]; then
  echo "  read-only/off ignored.. must specify flash drive mounted volume name." >> $system_log #
  echo "  read-only/off.. must specify flash drive mounted volume name."
else
  echo "  read-only/off $1 - initiated from Terminal" >> $system_log #
  echo "  read-only/off $1 - initiated from Terminal"
  sudo hdparm -r0 $1
  echo "  read-only/off request complete." >> $system_log #
  echo "  read-only/off reqyest complete."
fi 
