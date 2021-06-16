#/bin/bas
# cdj.sh - Change to Territories/Projects-Geany subfolder.
#	6/16/21.	wmk.
#	Usage. cdj <folder>
#
#		<folder> - folder to change to in Territories.
#
# Dependencies.
# 	cdj defined as an Alias in .bashrc in running system
#
# Modification History.
# ---------------------
# 3/1//21.	wmk.	original shell
# 5/30/21.	wmk.	modified for multihost system support.
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
if [ -z "$1" ]; then
bash ~/sysprocs/LOGMSG "   user changed to ~/Projects-Geany folder."
cda
cd ./'Projects-Geany'
else 
bash ~/sysprocs/LOGMSG "   user changed to ~/Territories/$1 folder."
cda 
cd ./'Projects-Geany'/$1
fi 
#end cdj proc
