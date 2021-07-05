#!/bin/bash
# Reload-rclone - reload rclone configuration from WINUBUNTU backup.
#	7/1/21.	wmk.
#
# Entry.	($)WINUBUNTU-PATH points to folderbase/ubuntu; on hard-drive
#			  subfolder ./Backups contains .config.tar archive
#
# Dependencies.
#	rclone loaded on running system (sudo apt-get install rclone)
#
# Modification History.
# ---------------------
# 7/1/21.	wmk.	oriinal script; adapted from ReloadSSH.
#
# Notes. rclone enables command-line file transfers to/from GoogleDrive.
# The GoogleDrive id for vnc.wmk3@gmail.com is gcloud:
# The backup key files for rclone are saved on the system hard
# drive WINUBUNTU-PATH/Backups subdirectory. The current file in use is
# rclone/rclone.conf, which needs to be extracted from the config.tar.
# This file needs to be moved back to the running system ~/.config
# ./rclone subfolder. This will avoid needing to rerun rclone config
# to access the gcloud: drive.

bash ~/sysprocs/LOGMSG "  Reload-rclone started.. reloading rclone keys..."
echo "  Reload-rclone started.. reloading rclone keys..."
# check for files on WINUBUNTU; if missing kill with error message
# copy .config/rclone files to ~/.config
pushd ./  >$TEMP_PATH/scratchfile
cd ~/
# check for existing ./.config/rclone/rclone.conf file..
if test -f ./.config/rclone/rclone.conf;then
 echo -e "  .config/rclone/rclone.conf already in place - \n   Reload-rclone abandoned."
 exit 0
fi
tar --extract --file=$WINUBUNTU_PATH/Backups/config.tar \
   .config/rclone/rclone.conf
if [ $? -eq 0 ]; then
# echo "  rclone.conf copied to ~/.config/rclone from WINUBUNTU" >> ($)system_log #
 bash ~/sysprocs/LOGMSG "  rclone.conf copied to ~/.config/rclone from WINUBUNTU"
 echo "  rclone.conf copied to ~/.config/rclone from WINUBUNTU"
else
# echo "  rclone.conf copy failed" >> ($)system_log #
 bash ~/sysprocs/LOGMSG "  rclone.conf copy failed."
 echo "  rclone.conf copy failed"
 read -p "Press Enter to continue.."
fi
# end Reload-rclone.sh
