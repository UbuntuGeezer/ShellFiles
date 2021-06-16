#!/bin/bash
#prochdr.sh - <proc-name> short description.
#	6/16/21.	wmk.
#
# bash <proc-name> p1 p2 p3..
#
#	<command line parameters>
#	p1 = parameter 1 description, etc.
#
#	Entry Dependencies.
#   <assumed paths, etc>
#
#	Exit Results.
#	<files/paths, etc. affected by proc>
#
#	Modification History.
#	---------------------
#	2/3/21.		wmk.	original shell.
#	2/12/21.	wmk.	jumpto definition added.
#	6/16/21.	wmk.	multihost support.
#
#	Notes.
# jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
if [ "$HOME" = "/home/ubuntu" ]; then
 folderbase="/media/ubuntu/Windows/Users/Bill"
else 
 folderbase=$HOME
fi
P1=$1	# preserve passed parameter as $P1
#date +%T >> $system_log #
#echo "  <proc-name> started." >> $system_log #
bash ~/sysprocs/LOGMSG "  <proc-name> started."
echo "  <proc-name> started."
if [ -z "$1" ]; then
  echo "  <param-1> not specified... <proc-name> abandoned." >> $system_log #
  echo -e "<param-1> must be specified...\n <proc-name> abandoned."
  exit 1
fi
# proc body here...
echo "  <proc-name> complete." >> $system_log #
echo "  <proc-name> complete."
# end <proc-name>

# end <proc-name>
