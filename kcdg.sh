#/bin/bas
# kcdg.sh - Change to ~/GitHub subfolder Kay's system.
#	<date>.	wmk.
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
# 5/25/21.	wmk.	modified for use with Kay's system.
#date +%T >> $system_log #
if [ -z "$system_log" ]; then
 system_log="/home/bill/ubuntu/SystemLog.txt"
fi
if [ -z "$1" ]; then
bash ~/sysprocs/LOGMSG "   user changed to ~/GitHub folder."
 cd $WINGIT_PATH
else 
bash ~/sysprocs/LOGMSG "   user changed to ~/GitHub/$1 folder."
 cd $WINGIT_PATH/$1
fi 
#end cdg proc
