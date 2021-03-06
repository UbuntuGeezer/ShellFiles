#!/bin/bash
#UpdateLibre6p7.sh - Update LibreOffice package to ver. 6.7.2
#	6/16/21. - wmk.
#
# Usage.	bash UpdateLibre6p7.sh
#
# Modification History.
# ---------------------
# 1/10/21.	wmk.	original code.
# 6/16/21.	wmk.	mod to abandon if persistent system; LOGMSG used
#					multihost support; unstable version shutdown.
# Issues with Libre 2.0 hanging randomly should be corrected with newer release
# Issue with currently running Libre 6.4.6 where backspace key became delete
#   during macro editing after series of ctrl-Z undo keystrokes
#jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}

start=${1:-"start"}

jumpto $start

start:
if [ "$HOME" != "/home/ubuntu" ]; then
 echo "  UpdateLibre attempted on persistent system - abandoned."
 exit 0
else 
 folderbase=/media/ubuntu/Windows/Users/Bill
fi
echo "   UpdateLibre 6.7.2 abandoned - unstable version."
exit 0
date +%T >> $system_log #
echo "  Updating LibreOffice from ver. 6.7.2 download..." >> $system_log #
echo "  Updating LibreOffice from ver. 6.7.2 download..."
pushd ./ >>junk.txt
cd /media/ubuntu/Windows/Users/Bill/ubuntu/LibreOffice_6.7
cd LibreOffice_6.4.7.2_Linux_x86-64_deb/DEBS
if [ not = true ]; then
 popd >>junk.txt
 jumpto EndProc
fi

sudo dpkg -i *.deb
popd >>junk.txt
jumpto EndProc
EndProc:
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
