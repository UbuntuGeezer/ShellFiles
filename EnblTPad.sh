#!/bin/bash
# EnblTPad.sh - Enable HP touchpad input.
#  7/20/20.	wmk.	17:15
# This bash script enables the HP Pavilion touchpad. This is done so that
# we can correct restore the touchpad to operation after a KillTPad operation.
# A corresponding bash script, KillTPad, will disable the functionality of the
# touch pad, if desired.
xinput --set-prop 12 148 1
echo "  HP TouchPad enabled."
date +%T >> $system_log #
echo "  HP TouchPad enabled." >> $system_log #
