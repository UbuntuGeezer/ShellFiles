#/bin/bas
# cdt.sh - Change to Territories subfolder.
# 5/30/21.	wmk.	modified for multihost system support.
#	2/20/21.	wmk.
#	Usage. cdt <folder>
#
#		<folder> - folder to change to in RefUSA-Downloads.
#
# Dependencies.
# 	cdc defined as an Alias in .bashrc in running system
#
# Modification History.
# ---------------------
# 1/26/21.	wmk.	original shell
# 2/20/21.	wmk.	LOGMSG added.
#date +%T >> $system_log #
P1=$1
TID=$P1
if [ "$HOME" = "/home/bill" ]; then
 folderbase=$HOME
else 
 folderbase="/media/ubuntu/Windows/Users/Bill"
fi
if [ -z "$system_log" ]; then
 system_log=$folderbase"/ubuntu/SystemLog.txt"
fi
#
if [ -z "$P1" ]; then
 ~/sysprocs/LOGMSG "  user changed to Territories/ folder."
 cda
else 
 ~/sysprocs/LOGMSG "  user changed to ~RefUSA-Downloads/Terr$TID folder."
 cd $folderbase/Territories/RawData/RefUSA/RefUSA-Downloads/Terr$TID #
fi 
#end cdt proc
