#!/bin/bash
# KillTPad.sh - Kill HP touchpad input.
#  7/18/20. wmk. 10:15
# This bash script kills the HP Pavilion touchpad. This is done so that
# we can correct the problem of ubunto system crashes due to errant mouse
# cursor movement when thumbs hit the touchpad. A corresponding bash script,
# EnableTPad, will restore the functionality of the mouse pad, if desired.
xinput --set-prop 12 148 0
echo "  HP TouchPad disabled."
date +%T >> $HOME/SystemLog.txt #
echo "  HP TouchPad disabled." >> $HOME/SystemLog.txt #
