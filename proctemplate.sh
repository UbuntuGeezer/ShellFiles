#/bin/bash
#proc-name.sh -  (Dev) short proc description.
# 2/13/21.	wmk.
#	Usage. bash proc-name.sh param
#		param  - command line parameter(s)
#
#	Results.
#		result-list here
#		if an error occurs and invoked with "." will exit terminal app
# Dependencies.
# selected folder(s)
# files/tables used
# assumptions
#
# Modification History.
# ---------------------
# 2/1/21.	wmk.	original shell
#jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
P1=$1
#date +%T >> $system_log #
if [ -z "$P1" ]; then
#  echo "  proc-name.. -param not specified - abandoned." >> $system_log #
  bash ~/sysprocs/LOGMSG "  proc-name.. -param not specified - abandoned."
  echo "  proc-name.. must specify -param."
  exit 1
else
#  echo "  proc-name $P1 - initiated from Terminal" >> $system_log #
  bash ~/LOGMSG "  proc-name $1 - initiated from Terminal"
  echo "  proc-name $P1 - initiated from Terminal"
fi 
#proc body here

jumpto EndProc
EndProc:
#end proc body
notify-send "proc-name" "complete-message."
bash ~/sysprocs/LOGMSG "   $P1 complete-message."
echo "  $P1 complete-message."
#end proc-name.sh 
