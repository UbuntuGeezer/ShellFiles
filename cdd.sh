#/bin/bas
# cdd.sh - Change to Territories/DB-Dev subfolder.
#	6/16/21.	wmk.
#	Usage. cdd
#
#
# Dependencies.
# 	cdd defined as an Alias in .bashrc in running system
#
# Modification History.
# ---------------------
# 1/27/21.	wmk.	original shell
# 2/20/21.	wmk.	LOGMSG added.
# 5/30/21.	wmk.	modified for multihost system support.
# 6/16/21.	wmk.	multihost support generalized.
#date +%T >> $system_log #
if [ "$HOME" == "/home/ubuntu" ]; then
 folderbase="/media/ubuntu/Windows/Users/Bill"
else 
 folderbase=$HOME
fi
if [ -z "$system_log" ]; then
 system_log=$folderbase"/ubuntu/SystemLog.txt"
fi
#
if [ "$HOME" = "/home/bill" ]; then
 folderbase=$HOME
else 
 folderbase="/media/ubuntu/Windows/Users/Bill"
fi
if [ -z "$system_log" ]; then
 system_log=$folderbase"/ubuntu/SystemLog.txt"
fi
~/sysprocs/LOGMSG "  user changed to Territories/DB-Dev folder."
cd $folderbase/Territories/DB-Dev
#end cdd proc

