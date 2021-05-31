#/bin/bas
# cdq.sh - Change to Territories/Queries-SQL subfolder.
#	5/30/21.	wmk.
#	Usage. cdq  <folder>
#
#		<folder> = (optional) subfolder within Queries-SQL
#
# Dependencies.
# 	cdq defined as an Alias in .bashrc in running system
#
# Modification History.
# ---------------------
# 5/30/21.	wmk.	original shell
#date +%T >> $system_log #
if [ "$HOME" = "/home/bill" ]; then
 folderbase=$HOME
else 
 folderbase="/media/ubuntu/Windows/Users/Bill"
fi
if [ -z "$system_log" ]; then
 system_log=$folderbase"/ubuntu/SystemLog.txt"
fi
cd $folderbase/Territories/Queries-SQL
if [ ${#P1} > 0 ];then
 cd ./$P1
 ~/sysprocs/LOGMSG "  user changed to Territories/SQL-Queries/$P1 folder."
else 
 ~/sysprocs/LOGMSG "  user changed to Territories/SQL-Queries folder."
fi
#end cdq proc
