#!/bin/bash
# BU-Ignores.sh = generic backup project files ignored by git; save with project backup
#	6/16/21.	wmk. ShellFiles
#
# Usage. bash BU-Ignores.sh <drive-name>
#	<drive-name> = backup drive "mount" name (e.g. PNY)
#
# Entry. Assumes current bash session is focused on primary project source directory.
#        typically ../Windows/Users/Bill../GitHub/<project-name>
#        .gitignore contains file patterns that are ignored by git processing; these
#        can be used by "cp" to copy the files to the backup directory.
#		($)U_DISK = USB flash drive base path
#		($)PJ_BACK = project backup folder (e.g. git-Projects)
#
# Modification History.
# ---------------------
# ??		wmk.	original shell.
# 7/24/20.	wmk.	paths adjusted for new imported environement vars.
# 2/11/21.	wmk.	mod supporting 1-line log entries; FD environment var.
# 6/16/21.	wmk.	multihost support; code improvements.
# NOTE. BU-Ignores.sh should reside on every project's main directory path. It
# is invoked by the shell PJDUMP which is a generic shell for doing incremental
# dumps of projects to a backup medium. Each BU-Ignores.sh sets its project name
# in local environment variable MY_PROJ.
# BU-Ignores processes the .gitignore file in the project main directory to backup
# files which were not dumped with "git clone" in the main PJDUMP script.
# (See DistribBUScripts.sh)
# Notes. If the user wants to include a comment in the .gitignore file, (i.e. line
# begins with '#'), the entire comment will be read as one word by "read", since 
# IFS is set to "&" by this script. This implies that none of the "ignore" specs,
# nor comments, contain the "&" character.
#
# This script uses the directory ($)TEMP_PATH to store temporary files. At the end of
# the script, all temporary files in $TEMP_PATH are removed. Temporary files are
# useful for writing information that would normally be output to the terminal, but
# that is considered irrelevant. If the bash scripts are set up so that if they terminate
# abnormally and they do not remove the temporary files, these can prove useful for
# debugging where the script failed.
# ---------------------
FD=$1
MY_PROJ='ShellFiles'
PJ_BACK="git-Projects"
if [ "$HOME" == "/home/ubuntu" ]; then
 folderbase="/media/ubuntu/Windows/Users/Bill"
else 
 folderbase=$HOME
fi
if [ -z "$TEMP_PATH" ]; then
  TEMP_PATH=$HOME/temp
fi
echo "TEMP_PATH = '$TEMP_PATH'"
bash ~/sysprocs/LOGMSG "  BU-Ignores $MY_PROJ initiated from terminal."
bash ~/sysprocs/LOGMSG "   Target device $1. "
error_counter=0		# set error counter to 0
IFS="&"			# set & as the word delimiter for read.
if [ -z $FD ]; then
  echo -e "Backup path must be specified...\nBU-Ignores abandoned."
  exit 1
fi
pushd ./   >> $TEMP_PATH/scratchfile
if cd $U_DISK/$FD/$PJ_BACK/$MY_PROJ ; then
 popd      >> $TEMP_PATH/scratchfile
else
# date +%T >> $system_log #
# echo -e "  BU-Ignores:Backup path not found...\n  BU-Ignores abandoned." >> $system_log #
 bash ~/sysprocs/LOGMSG "  BU-Ignores:Backup path not found...\n  BU-Ignores abandoned."
 echo -e "Backup path not found...\nBU-Ignores abandoned."
 exit 1
fi
echo -e "BU-Ignores for $MY_PROJ...\n" >> $TEMP_PATH/scratchfile
file='.gitignore'
i=0
while read -e; do
  #reading each line
  echo -e " processing $REPLY " >> $TEMP_PATH/scratchfile
  len=${#REPLY}
  len1=$((len-1))
  firstchar=${REPLY:0:1}
#  echo -e "  $firstchar\n is first char of line." >> $HOME/temp/scratchfile
  #expr index $string $substring
  if [ "$firstchar" = "#" ]
  then			# skip comment
   echo >> $TEMP_PATH/scratchfile
  else
   filespec=${REPLY:0:len}
#   cp -r -u -v ./$filespec $FD     >> $TEMP_PATH/scratchfile
   echo " cp -r -u ./$filespec $FD/$MY_PROJ"
   cp  -r -u  ./$filespec $U_DISK/$FD/$PJ_BACK/$MY_PROJ #   
   # check for error and increment error counter
#   error_code=${?}
   if [ $? -eq 0 ]; then  
     echo " " >> $TEMP_PATH/scratchfile
   else
     error_counter=$((error_counter+1))
#     date +%T >> $system_log #
#     echo -e "  BU-Ignores:Error  $error_code processing $REPLY " >> $system_log #
	 bash ~/sysprocs/LOGMSG "  BU-Ignores:Error  $error_code processing $REPLY "
     echo -e "  BU-Ignores:Error  $error_code processing $REPLY "
   fi

fi     # end is comment line conditional
i=$((i+1))
done < $file
echo " $i .gitignore lines processed."
if [ $error_counter = 0 ]; then
  rm $TEMP_PATH/scratchfile
else
  echo "  $error_counter errors encountered - check $TEMP_PATH/scratchfile "
fi
bash ~/sysprocs/LOGMSG "  $error_counter errors encountered - check $TEMP_PATH/scratchfile "
bash ~/sysprocs/LOGMSG "  BU-Ignores complete."
echo " BU-Ignores complete."
# end BU-Ignores
