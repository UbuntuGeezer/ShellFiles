#/bin/bas
# cds.sh - Change to SCPA-Downloads subfolder.
#	1/28/21.	wmk.
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
date +%T >> $system_log #
if [ -z "$1" ]; then
cda
else 
TID=$1
cd /media/ubuntu/Windows/Users/Bill/Territories/RawData/SCPA/SCPA-Downloads/Terr$TID
echo "" >> $system_log #
fi 
#end cds proc


