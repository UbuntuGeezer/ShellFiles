#!/bin/bash
# tmplt-BU-Ignores.sh - template for BU-Ignores.sh for <project-name>
# BU-Ignores.sh = backup project files ignored by git; save with project backup
#	7/17/20.	wmk. <project-name>
# NOTE. BU-Ignores.sh should reside on every project's main directory path. It
# is invoked by the shell PJDUMP which is a generic shell for doing incremental
# dumps of projects to a backup medium. Each BU-Ignores.sh sets its project name
# in local environment variable MY_PROJ.
# BU-Ignores processes the .gitignore file in the project main directory to backup
# files which were not dumped with "git clone" in the main PJDUMP script.
# Usage. bash BU-Ignores.sh <backup-path>
#        <backup-path> = base path containing backed up git projects
#                        e.g. /media/ubuntu/USB20FD/git-Projects
# Entry. Assumes current bash session is focused on primary project source directory.
#        typically ../Windows/Users/Bill../GitHub/<project-name>
#        .gitignore contains file patterns that are ignored by git processing; these
#        can be used by "cp" to copy the files to the backup directory.
# Notes. If the user wants to include a comment in the .gitignore file, (i.e. line
# begins with '#'), the entire comment will be read as one word by "read", since 
# IFS is set to "&" by this script. This implies that none of the "ignore" specs,
# nor comments, contain the "&" character.
#
# This script uses the directory $TEMP_FILES to store temporary files. At the end of
# the script, all temporary files in $TEMP_FILES are removed. Temporary files are
# useful for writing information that would normally be output to the terminal, but
# that is considered irrelevant. If the bash scripts are set up so that if they terminate
# abnormally and they do not remove the temporary files, these can prove useful for
# debugging where the script failed.
MY_PROJ='project-name'			# CHANGE THIS LINE TO CORRECT PROJECT NAME
if [ -n $TEMP_FILES ]; then
  TEMP_FILES=$HOME/temp
fi
echo "TEMP_FILES = '$TEMP_FILES'"

error_counter=0		# set error counter to 0
IFS="&"			# set & as the word delimiter for read.
if [ ${#1} = 0 ]; then
  echo -e "Backup path must be specified...\nBU-Ignores abandoned."
  exit 1
fi
pushd ./   >> $TEMP_FILES/scratchfile
if cd $1/$MY_PROJ ; then
 popd      >> $TEMP_FILES/scratchfile
else
 echo -e "Backup path not found...\nBU-Ignores abandoned."
# rm scratchfile
 exit 1
fi
echo -e "BU-Ignores for $MY_PROJ...\n" >> $TEMP_FILES/scratchfile
file='.gitignore'
i=0
while read -e; do
  #reading each line
  echo -e " processing $REPLY " >> $TEMP_FILES/scratchfile
  len=${#REPLY}
  len1=$((len-1))
  firstchar=${REPLY:0:1}
#  echo -e "  $firstchar\n is first char of line." >> $HOME/temp/scratchfile
  #expr index $string $substring
  if [ "$firstchar" = "#" ]
  then			# skip comment
   echo >> $HOME/temp/scratchfile
  else
   filespec=${REPLY:0:len1}
#   cp -r -u -v ./$filespec $1     >> $TEMP_FILES/scratchfile
   cp  -r -u  ./$filespec $1/$MY_PROJ    
   # check for error and increment error counter
   error_code=${?}
   if [ $error_code = "0" ]; then  
     echo " " >> $TEMP_FILES/scratchfile
   else
     error_counter=$((error_counter+1))
     echo -e "  Error  $error_code processing $REPLY \n" >> $TEMP_FILES/scratchfile
   fi

fi     # end is comment line conditional
i=$((i+1))
done < $file
echo " $i .gitignore lines processed."
if [ $error_counter = 0 ]; then
  rm $TEMP_FILES/scratchfile
else
  echo "  $error_counter errors encountered - check $HOME/temp/scratchfile "
fi
echo " BU-Ignores complete."

exit 0
