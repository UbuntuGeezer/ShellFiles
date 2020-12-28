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

start=${1:-"start"}

jumpto $start

start:
date +%T >> $system_log #
if [ -z "$1" ]; then
cda
else 
cda 
cd ./$1
fi 
#proc body here
cda 
cd ./$1
#end cdc proc


