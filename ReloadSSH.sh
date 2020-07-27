#!/bin/bash
# ReloadSSH - reload SSH configuration from WINUBUNTU/.ssh backup
#	7/26/20.	wmk.	19:00
#
# Modification History.
# --------------------
# 7/26/20.	wmk.	original script; TEMP_PATH used for testing
#
# Notes. The backup key files for SSH are saved on the system hard
# drive WINUBUNTU/.ssh subdirectory. The current files in use are
# the id_rsb files and the known_hosts file. When ReloadSSH completes
# moving the files back onto the ubuntu-live system, it also sets the
# files' mode to 600 so the files meet the protection level ssh-agent
# expects. ReloadSSH also does a pgrep operation to see if ssh-agent
# is running. If it is, ReloadSSH does the ssh-add <filespec> operation
# to activate the keys. If it is not, the user will be prompted to
# start ssh-agent and activate the keys and ReloadSSH will exit normally.

# use pgrep to see if ssh-agent is running; prompt user to continue
#   to add keys
# issue .ssh realoading/activation complete message
#
# issue system log message for startup
date +%T >> $system_log #
echo "  ReloadSSH started.. reloading SSH keys..." >> $system_log #
echo "  ReloadSSH started.. reloading SSH keys..."
# check for files on WINUBUNTU; if missing kill with error message
# copy .ssh files to ~/
cp -r $WINUBUNTU_PATH/sysstart/.ssh* $TEMP_PATH
if [ $? -eq 0 ]; then
 echo "  .ssh copied to TEMP_PATH from WINUBUNTU" >> $system_log #
 echo "  .ssh copied to TEMP_PATH from WINUBUNTU"
else
 echo "  .ssh copy failed" >> $system_log #
 echo "  .ssh copy failed"
 read -p "Press Enter to continue.."
fi
# set file mode to 600 on all ~/.ssh files for protection
ls -alh $TEMP_PATH/.ssh/*
chmod 600 $TEMP_PATH/.ssh/*
if [ $? -eq 0 ]; then
 echo "  .ssh file protections set to 600" >> $system_log #
 echo "  .ssh file protections set to 600"
else
 ls -alh $TEMP_PATH/.ssh/*
 echo "  ReloadSSH/chmod failed" >> $system_log #
 echo "  ReloadSSH/chmod failed"
 read -p "Press Enter to continue.."
fi
# see if ssh-agent is running
pgrep -l ssh-agent    # should produce error
if [ $? -eq 0 ]; then
 echo "  ssh-agent is running..." >> $system_log #
 echo "  ssh-agent is running..." 
else
 echo "  ssh-agent is not running..." >> $system_log #
 echo "  ssh-agent is not running..."
 echo "  ReloadSSH abandoned." >> $system_log #
 echo "  ReloadSSH abandoned."
 echo "Start ssh-agent manually with 'exec ssh-agent bash' command"
fi     # end ssh-agent running conditional
# unconditionally end test code
if [ true ]; then
 echo "  ReloadSSH test complete." >> $system_log #
 echo "  ReloadSSH test complete."
else
touch $TEMP_PATH/scratch
if [ ls $WINUBUNTU_PATH/sysstart/.ssh/known_hosts ]; then
 echo "  .ssh backup located." >> $system_log #
 echo "  .ssh backup located."
else
 echo "  .ssh backup not located.. check $WINUBUNTU/sysstart for .ssh" >> $system_log #
 echo "  .ssh backup not located.. check $WINUBUNTU/sysstart for .ssh"
 exit 1
fi
fi
