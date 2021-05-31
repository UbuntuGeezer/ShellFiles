#/bin/bas
# kcds.sh - Change to SCPA-Downloads subfolder Kay's system.
#	<date>.	wmk.
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
# <date>.	wmk.	modified for use with Kay's system.
#date +%T >> $system_log #
P1=$1
if [ -z "$P1" ]; then
LOGMSG "  user changed to Territories/ folder."
cda
else 
TID=$P1
LOGMSG "  user changed to ~SCPA-Downloads/Terr$TID folder."
cd ~/Territories/RawData/SCPA/SCPA-Downloads/Terr$TID
fi 
#end cds proc


