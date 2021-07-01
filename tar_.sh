#!/bin/bash
# tar_.sh - tar command with LOGMSGs.
#	6/30/21.	wmk.
P1=$1
P2=$2
P3=$3
P4=$4
P5=$5
P6=$6
P7=$7
P8=$8
P9=$9
echo $P2
~/sysprocs/LOGMSG "  tar $P1 $P2 $P3 $P4 $P5 $P6 $P7 $P8 $P9."
# generated tar here.
tar $P1 $P2 $P3 $P4 $P5 $P6 $P7 $P8 $P9
~/sysprocs/LOGMSG "  tar complete."
echo "   tar complete."
# end tar_

