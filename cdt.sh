#/bin/bas
# cdt.sh - Change to Territories subfolder.
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
if [ -z "$P1" ]; then
LOGMSG "  user changed to Territories/ folder."
cda
else 
TID=$P1
LOGMSG "  user changed to ~RefUSA-Downloads/Terr$TID folder."
cd /media/ubuntu/Windows/Users/Bill/Territories/RawData/RefUSA/RefUSA-Downloads/Terr$TID #
fi 
#end cdt proc


