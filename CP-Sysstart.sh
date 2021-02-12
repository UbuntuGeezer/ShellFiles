#!/bin/bash
#CP-Sysstart.sh - copy sysstart shell file to /Bill/ubuntu/sysstart.
#	1/30/21.	wmk.
#
#   CP-Sysstart <procname>
#
#	<procname> = name of system startup shell to copy (e.g. COLDSTART)
#
#	Entry Dependencies.
#	CP-Sysstart defined in .bashrc as Alias
#	WINGIT_PATH = path for source shell file
#   <procname> resides in folder /Bill/Documents/GitHub/ShellFiles
#
#	Exit Results.
#	<procname> copied to /Bill/ubuntu/sysstart folder
#
#	Modification History.
#	---------------------
#	1/30/21.	wmk.	original shell.
#
#	Notes. Some procs may not only need to be SYSEDITed, but may also
#	need to be added to the sysstart folder if they are used at system
#	startup. COLDSTART and COLDSTART_1 are examples.
# jumpto function definition
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
PROC_NAME=$1
date +%T >> $system_log #
echo "  CP-Sysstart started." >> $system_log #
echo "  CP-Sysstart started."
if [ -z $1 ]; then
  echo "  Proc Name not specified... CP-Sysstart abandoned." >> $system_log #
  echo -e "Proc Name must be specified...\n CP-Sysstart. abandoned."
  exit 1
fi
# proc body here...
DEST_PATH='/media/ubuntu/Windows/Users/Bill/ubuntu/sysstart'
if ls $WINGIT_PATH/ShellFiles/$PROC_NAME > junk.txt ; then
 cp $WINGIT_PATH/ShellFiles/$PROC_NAME $DEST_PATH/$PROC_NAME
 echo "$PROC_NAME copied to sysstart."
else
 echo "$PROC_NAME not found - CP-Sysstart failed."
fi
echo "  CP-Sysstart complete." >> $system_log #
echo "  CP-Sysstart complete."
# end CP-Sysstart
