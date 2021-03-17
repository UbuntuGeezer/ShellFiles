#/bin/bas
# cdg.sh - Change to Windows/../Documents/GitHub subfolder.
#	3/17/21.	wmk.
#	Usage. cdg <folder>
#
#		<folder> - folder to change to in GitHub.
#
# Dependencies.
# 	cdg defined as an Alias in .bashrc in running system
#
# Modification History.
# ---------------------
# 3/17/21.	wmk.	original shell
#date +%T >> $system_log #
system_log="/media/ubuntu/Windows/Users/Bill/ubuntu/SystemLog.txt"
if [ -z "$1" ]; then
bash ~/sysprocs/LOGMSG "   user changed to ~/GitHub folder."
 cd $WINGIT_PATH
else 
bash ~/sysprocs/LOGMSG "   user changed to ~/GitHub/$1 folder."
 cd $WINGIT_PATH/$1
fi 
#end cdg proc
