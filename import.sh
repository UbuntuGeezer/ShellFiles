#!/bin/bash
#import.sh - import git project git subdirectory using "git clone"
#	7/14/20.	wmk.
# Usage. bash ./import.sh <project-name>
# Entry.	current subdirectory should be 'git Projects'
#
# by using git clone to import, it insures that the 'StagingArea-In' subdirectory
# has a ligitimat git project that can be cloned into the appropriate project
# subdirectory. The files are properly cloned so the project is complete. It is up
# the user to verify that the git image has been properly setup on the 'StagingArea-In'
# subdirectory.
# if the project does not exist, then the script should recover from the 'cd' error
# and proceed with the git clone to clone the project from 'StagingArea-In. If the
# project does exist, the project subdirectory should be deleted before cloning.
#set -e			# don't exit on error
pushd ./
#move to backup path and project, verify is git
cd $BACKUP_PATH
if [ $? <> 0 ]; then
  echo "$BACKUP_PATH not found... import abandoned"
  exit 1
fi
echo looking for $1 in $BACKUP_PATH			
if cd $1 && git st; then
 echo "Ready to import $1"
else
   echo "Cannot import $1 ..."
   exit 1
fi

#move to 'git-Projects' and see if project there
#prompt user before deleting...
cd ../..		#move from StagingArea-In/$1 up 2 levels
cd git-Projects
if [ $? = 0 ]; then
  cd ./$1
  if [ $? = 0 ]; then
    cd ..
    echo -e "Current working directory: $PWD\npreparing to delete $1 .."
    read -p "OK to delete old project (y/n)"
    echo "string read: '"$REPLY"'"
    if [ $REPLY == 'y' ]; then
     #remove old project files and clone from StagingArea-In
     rm -f -r ./$1
     if [ $? = 0 ]; then
       echo "old project removed.. cloning from StagingArea..."
       git clone $BACKUP_PATH/$1 $1
     fi
    else
      echo -e "You have selected not to overwrite existing project\nimport stopped."
      exit 0
    fi    # end OK to delete old project
    exit 0
  fi     # end old project directory exists
else
  echo "No git-Projects directory.. import abandoned."
  read -p "Press Enter to continue.."
  exit 1
fi    # end git-Projects exists conditional
exit 0
