#/bin/bash
#CP-AcctsToMirror.sh -  (Dev) Copy all subdirectories to accounting Mirror.
# 6/16/21.	wmk.
#	Usage. bash CP-AcctsToMirror.sh <target-base>
#		<target-base>  - root folder for copy (e.g. Windows/Users/Bill)
#
#	Results.
#		/media/ubuntu/PNY/Accounting/2020 all subfolders copied to
#	/media/ubuntu/<target-base>/Documents/Accounting-Backups/Current
#
# Dependencies.
# flash drive PNY mounted; user focused on ../Accounting/2020 folder
# /media/ubuntu/<target-base/Documents/Accounting-Backups/Current folder exists
#
# Modification History.
# ---------------------
# 11/17/20.	wmk.	original shell.
# 6/16/21.	wmk.	mod to abandon if persistent system.
#jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
date +%T >> $system_log #
if [ "$HOME" != "/home/ubuntu" ]; then
 echo "  CP-AcctstoMirror attempted on persistent system - abandoned."
 exit 0
fi
if [ -z "$1" ]; then
  echo "  CP-AcctsToMirror.. -param not specified - abandoned." >> $system_log #
  echo "  CP-AcctsToMirror.. must specify -param."
  exit 1
else
  echo "  CP-AcctsToMirror $1  $2 - initiated from Terminal" >> $system_log #
  echo "  CP-AcctsToMirror $1  $2- initiated from Terminal"
fi 
#proc body here
ACCT_SRC="Accounting/2020/Personal"
ACCT_BACK="Documents/Accounting-Backups/2020/Current"
echo -e "  Destination = $U_DISK/$1/$ACCT_BACK "  >> $system_log #
echo -e "CP-AcctsToMirror Initiated..\nSource = $U_DISK/$1/$ACCT_SRC "
echo -e "Destination = $U_DISK/$1/$ACCT_BACK "
echo -e "*** WARNING - MAKE SURE NO OTHER APPS ARE RUNNING BEFORE PROCEEDING ***"
read -p "Do you wish to proceed? (y/n)"
if [ $REPLY == 'y' ] || [ $REPLY == 'Y' ]; then
 echo "  Proceeding with CP-AcctsToMirror..."
else
 echo "  CP-AcctsToMirror abandoned - user wants to close other apps." >> $system_log
 echo "  CP-AcctsToMirror abandoned per your response."
 exit 0 
fi
CP_SOURCE=$U_DISK/$1/$ACCT_SRC 				#
CP_DEST=$U_DISK/$2/$ACCT_BACK               #
# verify both paths exist
pushd ./
if  cd $CP_SOURCE ; then
 popd
 echo >> $TEMP_PATH/scratch.txt
else
 date +%T >> $system_log #
 echo -e "  Source path '"$CP_SOURCE"' not found.\n$CP-AcctsToMirror Abandoned." >> $system_log #
 echo -e "Source path '"$CP_SOURCE"' not found.\nCP-AcctsToMirror Abandoned."
 exit 1
fi
pushd ./
if cd $CP_DEST ; then
 popd
 echo >> $TEMP_PATH/scratch.txt
else
  date +%T >> $system_log #
  echo  -e "  Destination path '"$CP_DEST"' not found.\n  CP-AcctsToMirror Abandoned." >> $system_log #
  echo  -e "Destination path '"$CP_DEST"' not found.\nCP-AcctsToMirror Abandoned."
  exit 1
fi
notify-send "CP-AcctsToMirror" "Copying..."
echo "cp -ru $CP_SOURCE/* $CP_DEST " #
cp -ru $CP_SOURCE/* $CP_DEST
jumpto EndProc
EndProc:
#end proc body
notify-send "CP-AcctsToMirror" "complete."
echo "  CP-AcctsToMirror to $1 complete."
#end CP-AcctsToMirror.sh 
