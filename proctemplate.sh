#/bin/bash
#proc-name.sh -  (Dev) shor proc description.
# 11/16/20.	wmk.
#	Usage. bash proc-name.sh param
#		param  - command line parameter(s)
#
#	Results.
#		result-list here
#
# Dependencies.
# selected folder(s)
# files/tables used
# assumptions
#
# Modification History.
# ---------------------
# 11/16/20.	wmk.	original shell
#jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
date +%T >> $system_log #
if [ -z "$1" ]; then
  echo "  proc-name.. -param not specified - abandoned." >> $system_log #
  echo "  proc-name.. must specify -param."
  exit 1
else
  echo "  proc-name $1 - initiated from Terminal" >> $system_log #
  echo "  proc-name $1 - initiated from Terminal"
fi 
#proc body here

jumpto EndProc
EndProc:
#end proc body
notify-send "proc-name" "complete-message."
echo "  $1 complete-message."
#end proc-name.sh 
