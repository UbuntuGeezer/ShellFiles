#/bin/bash
#header.sh - bash proc short description
# mm/dd/yy.	wmk.		6/16/21.	wmk.
#	Usage. bash proc-name <params>
#		<params> - description of passed parameters
#
# Dependencies.
#
# Modification History.
# ---------------------
# mm/dd/yy.	wmk.	original shell
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
#date +%T >> $system_log #
if [ "$HOME" == "/home/ubuntu" ]; then
 folderbase="/media/ubuntu/Windows/Users/Bill"
 cd $folderbase/Documents/GitHub
else 
 folderbase=$HOME
 cd $folderbase/GitHub
fi
if [ -z "$1" ]; then
  echo "  proc-name ignored.. must specify <parameter>." >> $system_log #
  echo "  proc-name ignored.. must specify f<parameter>."
  exit 1
else
  ~/sysprocs/LOGMSG "  proc-name $1 - initiated from Terminal"
  echo "  proc-name $1 - initiated from Terminal"
fi 
#proc body here
notify-send "<proc-name>" "<message> $1"
echo "  $1 <message>"
#end proc


