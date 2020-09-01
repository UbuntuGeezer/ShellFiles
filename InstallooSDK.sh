#!/bin/bash
#InstallooSDK.sh - Install OpenOffice SDK package for development
#	8/28/0. - wmk.
# This provides the C definitions that are useful in ooBasic development
date +%T >> $system_log #
echo "  Installing OpenOffice SDK from DEBS download..." >> $system_log #
echo "  Installing OpenOffice SDK from DEBS download..." >> $system_log #
cd /media/ubuntu/Windows/Users/Bill/ubuntu/OpenOffice/en-US/DEBS
sudo dpkg -i *.deb
if [ $? -eq 0 ]; then
  echo "  OpenOffice SDK install complete." >> $system_log #
  echo "  OpenOffice SDK install complete."
  echo "  check /main/offapi/sun/start/table for definitions..."
  read -p "Press ENTER to continue..."
else
  echo "  OpenOffice SDK install failed; check installation documentation." >> $system_log #
  echo "  OpenOffice SDK install failed; check installation documentation."
  read -p "Press ENTER to continue..."
fi
