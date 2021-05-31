#/bin/bas
# cdp.sh - Change to Territories/Procs-Dev subfolder.
# 5/30/21.	wmk.	modified for multihost system support.
#	2/20/21.	wmk.
#	Usage. cdp
#
#
# Dependencies.
# 	cdp defined as an Alias in .bashrc in running system
#
# Modification History.
# ---------------------
# 1/20/21	wmk.	original shell
# 2/20/21.	wmk.	LOGMSG added.	
#date +%T >> $system_log #
if [ "$HOME" = "/home/bill" ]; then
 folderbase=$HOME
else 
 folderbase="/media/ubuntu/Windows/Users/Bill"
fi
if [ -z "$system_log" ]; then
 system_log=$folderbase"/ubuntu/SystemLog.txt"
fi
#
~/sysprocs/LOGMSG "  user changed to Territories/Procs-Dev folder."
cd $folderbase/Territories/Procs-Dev
#end cdp proc

