#/bin/bas
# cdc.sh - Change to Territories/ subfolder.
#	6/16/21.	wmk.
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
# 1/20/21.	wmk.	LOGMSG added.
# 5/30/21.	wmk.	modified for multihost system support.
# 6/10/21.	wmk.	bug fix where # wrapped into if.
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
if [ -z "$1" ]; then
bash ~/sysprocs/LOGMSG "   user changed to ~/Territories folder."
cda
else 
bash ~/sysprocs/LOGMSG "   user changed to ~/Territories/$1 folder."
cda 
cd ./$1
fi 
#end cdc proc



