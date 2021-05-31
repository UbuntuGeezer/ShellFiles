#/bin/bash
#StartDaily.sh -  (Dev) Start daily timer tasks.
# 5/26/21.	wmk.
#	Usage. StartDaily
#		StartDaily alias set in .bashrc
#
#	Results.
#		daily timer task started to date/time stamp system log at midnight.
# Dependencies.
# 	~/sysprocs/StartDaily.sh current
#
# Modification History.
# ---------------------
# 5/26/21.	wmk.	original shell
#jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
P1=$1
#  echo "  StartDaily $P1 - initiated from Terminal" >> $system_log #
bash ~/LOGMSG "  StartDaily $1 - initiated from Terminal"
  echo "  StartDaily $P1 - initiated from Terminal"
fi 
#proc body here
systemd-run --user --on-calendar 'daily' /bin/bash -c 'date >> "/home/bill/ubuntu/SystemLog.txt"'
jumpto EndProc
EndProc:
#end proc body
notify-send "StartDaily" "Timers activated."
bash ~/sysprocs/LOGMSG "   $P1 Timers activated."
echo "  $P1 complete-message."
#end StartDaily.sh 
