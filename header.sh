#/bin/bash
#header.sh - bash proc short description
# mm/dd/yy.	wmk.		10/14/20.	wmk.
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
date +%T >> $system_log #
if [ -z "$1" ]; then
  echo "  proc-name ignored.. must specify <parameter>." >> $system_log #
  echo "  proc-name ignored.. must specify f<parameter>."
  exit 1
else
  echo "  proc-name $1 - initiated from Terminal" >> $system_log #
  echo "  proc-name $1 - initiated from Terminal"
fi 
#proc body here
notify-send "<proc-name>" "<message> $1"
echo "  $1 <message>"
#end proc


