#/bin/bas
# cdt.sh - Change to Territories subfolder.
#	1/26/21.	wmk.
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
date +%T >> $system_log #
if [ -z "$1" ]; then
cda
else 
TID=$1
cd /media/ubuntu/Windows/Users/Bill/Territories/RawData/RefUSA/RefUSA-Downloads/Terr$TID
echo "" >> $system_log #
fi 
#end cdt proc


