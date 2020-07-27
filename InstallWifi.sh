#!/bin/bash
# InstallWifi.sh - Install drivers for HP Pavilion wifi from repository.
#	7/27/20.	wmk.	07:15
# Usage.  bash InstallWifi.sh
# Entry.  F2 on system startup to ensure wifi card is "On"
# (instructions from ubuntuhandbook.org)
#
# Notes. "no WiFi adaptor found (ubuntu 18.0.4)
# This happens on many HP devices including HP 15-bs000, 15-bs100,
# 15g-br000, 15q-bu000, and Pavilion 15-br000, HP 280 G3, 290 G1,
# and more. And the reason is Ubuntu does not support RTL8723de
# wifi driver. The following comes off the ubuntuhandbook.org site.
#
# check for mandatory "build" parameter before running
date +%T >> $system_log #
echo "  Installing wifi driver." >> $system_log #
echo "  Installing wifi driver."
if [ -z "$1" ]; then
  echo "  'build' parameter missing"
  echo "   No 'build' parameter.." >> $system_log #
  echo "  wifi driver installation abandoned." >> $system_log #
  echo "  wifi driver installation abandoned."
  exit 0
else
  read -p "Install wifi will rebuild device driver.. continue (y/n)? "
  if [ $REPLY == 'y' ] || [ $REPLY == 'Y' ]; then
    echo "If not debugging, wifi driver would build here.."
    echo "  exiting"
    exit 0
  else
    echo "  wifi driver build cancelled by user." >> $system_log #
    echo "  wifi driver build cancelled - exiting"
    exit 0
  fi     # end user ok to rebuild conditional
fi # end empty command line conditional
if [ true ]; then
# install the building tools
sudo apt-get install linux-headers-$(uname -r) build-essential git
# get newest Realtek rtlwifi codes
#git clone https://github.com/lwfinger/rtlwifi_new.git [not found]
git clone https://github.com/santoshchaurasiyacs/lwfinger-rtlwifi_new.git
# check out the extended branch for  rtl8822be or rtl8723de
# the following command did not work.. not a valid commit/branch
# cd rtlwifi_new/ && git checkout origin/extended -b extended
# there is a ./rtl8822be subdirectory on the project that has a bunch
# of c code and a "Makefile".. If I knew a little more about the build
# process, I could probably install it from there..
# more information.. the "make" utility will automatically look for the
#  Makefile filename for input. Instead of "sudo make install" it looks
#  like the next command should be "sudo make" or "sudo make Makefile"
# HP lists a network controller "d723" that is Realtek.. probably
#  the rtl8723de type wifi controller...
#
# install the drivers
sudo make install
# load the new driver
#  more information.. the "modprobe" utility intelligently adds or
#  removes a module from the Linux kernel
#  the first command will remove module rtl8723de from the kernel;
#  the second command will add module rt1872de to the kernel from 
#  the current directory (?),,,
sudo modprobe -r rtl8723de
sudo modprobe rtl8723de
# if not working, try blacklisting the broadcom drivers, and restart
if [ false ]; then
 sudo apt purge bcmwl-kernel-source
 sudo sed -i '/blacklist bcma/ d' /etc/modprobe.d/blacklist.conf
 sudo sed -i '/blacklist brcmsmac/ d' /etc/modprobe.d/blacklist.conf
fi
# if notice weak signal, then try running
if [ false ]; then
sudo modprobe -r rtl8723de && sleep 5 && sudo modprobe rtl8723de ant_sel=1
# and if that doesnt work then run
sudo modprobe -r rtl8723de && sleep 5 && sudo modprobe rtl8723de ant_sel=2
# write the rule into the configuration (whichever worked best)
# where X is the antenna that worked best
echo "options rtl8723de ant_sel=X" | sudo tee /etc/modprobe.d/rtl8723de.conf
fi
fi  # end [false] code skip
