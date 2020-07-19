#!/bin/bash
# NewSSHKey.sh - generate and register new SSHKey.
#	7/19/20.	wmk.	07:45
# Usage.  bash NewSSHKey.sh <.ssh filespec>
#
#	<.ssh filespec> = ~/.ssh/file_name where file_name = id_rsa, id_rsb, etc.
# Method. checks to see if ssh-agent process runnng; if not start it
#	use ssh-keygen to generate new key at <.ssh filespec>
# 	use ssh -add <.ssh filespec> to add new key to agent
#	remind user to add <filespec>.pub content to host registry
#	issue SystemLog message "  new .ssh key generated and added - <.ssh filespec>
date +%T >> $system_log #
echo "  NewSSHKey initiated." >> $system_log #
echo "" > $TEMP_PATH/scratch #
#pgrep -l ssh-agent >> $TEMP_PATH/scratch #
pgrep -l ssh-agent
#if [ $? -eq 0 ] ; then
#echo " ssh-agent running..."
#echo "Inserted echo to see if redirect comes back.."
#date +%T >> $system_log #
#echo "  NewSSHKey (test) complete." >> $system_log #else
#else
  exec ssh-agent bash
  date +%T >> $system_log #
  echo "  ssh-agent started." >> $system_log #
#fi

