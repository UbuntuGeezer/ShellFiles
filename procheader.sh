#!/bin/bash
#prochdr.sh - <proc-name> short description.
#	2/3/21.	wmk.
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
#	mm/dd/yy.	wmk.	original shell
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
P1=$1	# preserve passed parameter as $P1
date +%T >> $system_log #
echo "  <proc-name> started." >> $system_log #
echo "  <proc-name> started."
if [ -z $1 ]; then
  echo "  <param-1> not specified... <proc-name> abandoned." >> $system_log #
  echo -e "<param-1> must be specified...\n <proc-name> abandoned."
  exit 1
fi
# proc body here...
echo "  <proc-name> complete." >> $system_log #
echo "  <proc-name> complete."
# end <proc-name>

# end <proc-name>
