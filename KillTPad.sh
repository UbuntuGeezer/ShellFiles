#!/bin/bash
# KillTPad.sh - Kill HP touchpad input.
#  6/16/21.	wmk.
# Modification History.
# ---------------------
# 7/18/20.	wmk.	original code.
# 6/16/21.	wmk.	mod to abandon if persistent system; LOGMSG used.
# Notes.
# This bash script kills the HP Pavilion touchpad. This is done so that
# we can correct the problem of ubunto system crashes due to errant mouse
# cursor movement when thumbs hit the touchpad. A corresponding bash script,
# EnableTPad, will restore the functionality of the mouse pad, if desired.
if [ "$HOME" != "/home/ubuntu" ]; then
 echo "  EnableTPad attempted on persistent system - abandoned."
 exit 0
fi
xinput --set-prop 12 148 0
echo "  HP TouchPad disabled."
#date +%T >> $HOME/SystemLog.txt #
#echo "  HP TouchPad disabled." >> $HOME/SystemLog.txt #
~/sysprocs/LOGMSG "  HP TouchPad disabled."
# end KillTPad
