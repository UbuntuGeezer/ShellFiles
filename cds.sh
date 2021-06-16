#/bin/bas
# cds.sh - Change to SCPA-Downloads subfolder.
#	6/16/21.	wmk.
#
#	Usage. cds <folder>
#
#		<folder> - folder to change to in SCPA-Downloads.
#
# Dependencies.
# 	cds defined as an Alias in .bashrc in running system
#
# Modification History.
# ---------------------
# 1/28/21.	wmk.	original shell
# 2/20/21.	wmk.	LOGMSG added.
# 5/30/21.	wmk.	modified for multihost system support.
# 6/16/21.	wmk.	multihost support generalized.
#date +%T >> $system_log #
P1=$1
if [ "$HOME" == "/home/ubuntu" ]; then
 folderbase="/media/ubuntu/Windows/Users/Bill"
else 
 folderbase=$HOME
fi
if [ -z "$system_log" ]; then
 system_log=$folderbase"/ubuntu/SystemLog.txt"
fi
#
if [ -z "$P1" ]; then
~/sysprocs/LOGMSG "  user changed to Territories/ folder."
cda
else 
TID=$P1
LOGMSG "  user changed to ~SCPA-Downloads/Terr$TID folder."
cd $folderbase/Territories/RawData/SCPA/SCPA-Downloads/Terr$TID
fi 
#end cds proc
