#!/bin/bash
#InstallBuild.sh - Install make and associated utilities.
#	6/7/21.	wmk.
#
# Modification History.
# ---------------------
# 3/17/21.	wmk.	initial shell script.
# 6/7/21.	wmk.	updated adding autotools-dev and autoconf tools.
#
# build-essential supports Geany "make"/Build operations.
# autotools-dev supports user install operations.
# autoconf
#jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
#date +%T >> $system_log #
#echo "  Installing build-essential from repository." >> $system_log #
bash ~/sysprocs/LOGMSG "  Installing build-essential from repository."
echo "  Installing build-essential from repository."
pushd ./ >>junk.txt
sudo apt-get install build-essential
echo "  Installing debhelper from repository."
sudo apt-get install debhelper
echo "  Installing dh-make from repository."
sudo apt-get install dh-make
err_code = $?
popd >>junk.txt
jumpto EndProc
EndProc:
if [ $err_code = 0 ]; then
  echo "  InstallBuild complete." >> $system_log #
  echo "  InstallBuild complete."
  read -t5 -p  "Press ENTER to continue..."
else
  echo "  InstallBuild failed." >> $system_log #
  bash ~/sysprocs/LOGMSG "  InstallBuild failed."
  echo "  InstallBuild failed."
  read -t5 -p "Press ENTER to continue..."
fi
#end InstallBuild.sh
