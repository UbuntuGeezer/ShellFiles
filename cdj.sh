#/bin/bas
# cdj.sh - Change to Territories/Projects-Geany subfolder.
#	3/1/21.	wmk.
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
#date +%T >> $system_log #
system_log="/media/ubuntu/Windows/Users/Bill/ubuntu/SystemLog.txt"
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
