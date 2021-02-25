#/bin/bas
# cdc.sh - Change to Territories subfolder.
#	12/26/20.	wmk.
#	Usage. cdc <folder>
#
#		<folder> - folder to change to in Territories.
#
# Dependencies.
# 	cdc defined as an Alias in .bashrc in running system
#
# Modification History.
# ---------------------
# 12/26/20.	wmk.	original shell
#jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
P1=$1
#date +%T >> $system_log #
if [ -z "$P1" ]; then
LOGMSG "  user changed to /Territories folder."
cda
else 
LOGMSG "  user changed to Territories/$P1 folder."
cda 
cd ./$P1
fi 
#end cdc proc


