#!/bin/bash
#Installpdftk.sh - Install PDF toolkit.
sudo snap install pdftk
sudo ln -s /snap/pdftk/current/usr/bin/pdftk /usr/bin/pdftk
date >> $system_log #
echo "  pdftk installed from repository." >> $system_log #
echo "pdftk installed - run from Terminal"
read -p "Press Enter to continue..."
