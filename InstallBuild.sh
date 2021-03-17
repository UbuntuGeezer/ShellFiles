#!/bin/bash
#InstallBuild.sh - Install make and associated utilities.
#	3/17/21. - wmk.
# build-essential supports Geany "make"/Build operations.
#jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
date +%T >> $system_log #
echo "  Installing build-essential from repository." >> $system_log #
bash ~/sysprocs/LOGMSG "  Installing build-essential from repository."
echo "  Installing build-essential from repository."
pushd ./ >>junk.txt
sudo apt-get install build-essential
err_code = $?
popd >>junk.txt
jumpto EndProc
EndProc:
if [ $err_code -eq 0 ]; then
  echo "  InstallBuild complete." >> $system_log #
  echo "  InstallBuild complete."
  read -p -t5 "Press ENTER to continue..."
else
  echo "  InstallBuild failed." >> $system_log #
  bash ~/sysprocs/LOGMSG "  InstallBuild failed."
  echo "  InstallBuild failed."
  read -p -t5 "Press ENTER to continue..."
fi
