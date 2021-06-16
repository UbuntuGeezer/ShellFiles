#!/bin/bash
# EnblTPad.sh - Enable HP touchpad input.
#  6/16/21.	wmk.
# Modification History.
# ---------------------
# 7/20/20.	wmk.	original code.
# 6/16/21.	wmk.	mod to abandon if persistent system; LOGMSG used.
# Notes.
# This bash script enables the HP Pavilion touchpad. This is done so that
# we can correct restore the touchpad to operation after a KillTPad operation.
# A corresponding bash script, KillTPad, will disable the functionality of the
# touch pad, if desired.
if [ "$HOME" != "/home/ubuntu" ]; then
 echo "  EnableTPad attempted on persistent system - abandoned."
 exit 0
fi
xinput --set-prop 12 148 1
echo "  HP TouchPad enabled."
#date +%T >> $system_log #
#echo "  HP TouchPad enabled." >> $system_log #
~/sysprocs/LOGMSG "  HP TouchPad enabled."
