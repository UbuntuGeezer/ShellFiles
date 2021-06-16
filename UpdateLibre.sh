#!/bin/bash
#UpdateLibre.sh - Update LibreOffice package to ver. 6.4.6
#	6/16/21. - wmk.
#
# Modification History.
# ---------------------
# 8/25/20.	wmk.	original code.
# 6/16/21.	wmk.	mod to abandon if persistent system; LOGMSG used
#					multihost support.
#
# Notes.
# Issues with Libre 2.0 hanging randomly should be corrected with newer release
if [ "$HOME" != "/home/ubuntu" ]; then
 echo "  UpdateLibre attempted on persistent system - abandoned."
 exit 0
else 
 folderbase=/media/ubuntu/Windows/Users/Bill
fi
~/sysprocs/LOGMSG "  Updating LibreOffice from ver. 6.4.6 download..."
echo "  Updating LibreOffice from ver. 6.4.6 download..."
cd $folderbase/ubuntu/LibreOffice/DEBS
sudo dpkg -i *.deb
if [ $? -eq 0 ]; then
  ~/sysprocs/LOGMSG "  LibreOffice update complete."
  echo "  LibreOffice update complete."
  echo "  Go to APP icons and remove older 2.0 version icons..."
  read -p "Press ENTER to continue..."
else
  ~/sysprocs/LOGMSG "  LibreOffice update failed; check installation documentation."
  echo "  LibreOffice update failed; check installation documentation."
  read -p "Press ENTER to continue..."
fi
# end UpdateLibre
