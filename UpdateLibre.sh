#!/bin/bash
#UpdateLibre.sh - Update LibreOffice package to ver. 6.4.6
#	8/25/0. - wmk.
# Issues with Libre 2.0 hanging randomly should be corrected with newer release
date +%T >> $system_log #
echo "  Updating LibreOffice from ver. 6.4.6 download..." >> $system_log #
echo "  Updating LibreOffice from ver. 6.4.6 download..."
cd /media/ubuntu/Windows/Users/Bill/ubuntu/LibreOffice/DEBS
sudo dpkg -i *.deb
if [ $? -eq 0 ]; then
  echo "  LibreOffice update complete." >> $system_log #
  echo "  LibreOffice update complete."
  echo "  Go to APP icons and remove older 2.0 version icons..."
  read -p "Press ENTER to continue..."
else
  echo "  LibreOffice update failed; check installation documentation." >> $system_log #
  echo "  LibreOffice update failed; check installation documentation."
  read -p "Press ENTER to continue..."
fi

