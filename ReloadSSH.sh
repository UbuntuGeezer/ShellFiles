#!/bin/bash
# ReloadSSH - reload SSH configuration from WINUBUNTU/.ssh backup
#	6/5/21.	wmk.	18:09
#
# Entry.	($)WINUBUNTU-PATH points to folderbase/ubuntu; on hard-drive
#			 Windows when running from non-persistent flash drive
#
# Modification History.
# --------------------
# 7/26/20.	wmk.	original script; TEMP_PATH used for testing
# 8/4/20.	wmk.	~/ path replaced TEMP_PATH; ifs nested properly
#					for correct error handling
# 2/17/21.	wmk.	log messaging using LOGMSG.
# 6/5/21.	wmk.	documentation; minor bug fixes checking REPLY.
#
# Notes. The backup key files for SSH are saved on the system hard
# drive WINUBUNTU-PATH/.ssh subdirectory. The current files in use are
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
#date +%T >> $system_log #
#echo "  ReloadSSH started.. reloading SSH keys..." >> $system_log #
bash ~/sysprocs/LOGMSG "  ReloadSSH started.. reloading SSH keys..."
echo "  ReloadSSH started.. reloading SSH keys..."
# check for files on WINUBUNTU; if missing kill with error message
# copy .ssh files to ~/
cp -r $WINUBUNTU_PATH/sysstart/.ssh* ~/
if [ $? -eq 0 ]; then
# echo "  .ssh copied to ~/.ssh from WINUBUNTU" >> $system_log #
 bash ~/sysprocs/LOGMSG "  .ssh copied to ~/.ssh from WINUBUNTU"
 echo "  .ssh copied to ~/.ssh from WINUBUNTU"
  # set file mode to 600 on all ~/.ssh files for protection
  ls -alh ~/.ssh/*
  chmod 600 ~/.ssh/*
  if [ $? -eq 0 ]; then
   echo "  .ssh file protections set to 600" >> $system_log #
   bash ~/sysprocs/LOGMSG "   .ssh file protections set to 600"
   echo "  .ssh file protections set to 600"
  # see if ssh-agent is running
  pgrep -l ssh-agent    # should produce error
  if [ $? -eq 0 ]; then
#   echo "  ssh-agent is running..." >> $system_log #
#   echo "  ssh-add ~/.ssh/id_rsb" >> $system_log #
   bash ~/sysprocs/LOGMSG "   ssh-agent is running..."
   bash ~/sysprocs/LOGMSG "   ssh-add ~/.ssh/id_rsb"
   echo "  ssh-agent is running..." 
   read -p "  Proceed to add keys to running ssh-agent (y/n)? "
   if [ "$REPLY" == "y" ] || [ "$REPLY" == "Y" ]; then
    ssh-add ~/.ssh/id_rsb
    if [ $? -eq 0 ]; then
#      echo "   .ssh keys successfully added." >> $system_log #
#      echo "  ReloadSSH complete." >> $system_log #
      bash ~/sysprocs/LOGMSG "   .ssh keys successfully added."
      bash ~/sysprocs/LOGMSG "  ReloadSSH complete."
      echo "   .ssh keys successfully added."
      echo "  ReloadSSH complete."   
    else
#      echo "  Error(s) attempting to add .ssh keys. " >> $system_log #
#      echo "  ReloadSSH incomplete termination." >> $system_log #
      bash ~/sysprocs/LOGMSG "  Error(s) attempting to add .ssh keys. "
      bash ~/sysprocs/LOGMSG "  ReloadSSH incomplete termination."
      echo "  Error(s) attempting to add .ssh keys. "
      echo "  Check ~/.ssh files and add to ssh-agent manually"    
    fi     # end ssh-add successful conditional
   else   # user nixed add keys
#    echo "  .ssh keys restored but not activated by user." >> $system_log #
#    echo "  ReloadSSH complete." >> $system_log
    bash ~/sysprocs/LOGMSG "   .ssh keys restored but not activated by user."
    bash ~/sysprocs/LOGMSG "  ReloadSSH complete."
    echo "  ReloadSSH complete."
    echo "  Run 'ssh-add ~/.ssh/id_rsb' to activate keys."
 fi    #  end y to add keys prompt
fi # end ssh-agent running conditional
  else
   ls -alh ~/.ssh/*
#   echo "  ReloadSSH/chmod failed" >> $system_log #
   bash ~/sysprocs/LOGMSG "  ReloadSSH/chmod failed."
   echo "  ReloadSSH/chmod failed"
   read -p "Press Enter to continue.."
  fi
else
# echo "  .ssh copy failed" >> $system_log #
 bash ~/sysprocs/LOGMSG "  .ssh copy failed."
 echo "  .ssh copy failed"
 read -p "Press Enter to continue.."
fi
# end ReloadSSH.sh
