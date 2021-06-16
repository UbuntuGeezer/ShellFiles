#!/bin/bash
# StartDaily.sh - start daily timer task(s).
#	6/15/21.	wmk.
#
# Modification History.
# ---------------------
# 5/14/21.	wmk.	original code.
# 6/15/21.	wmk.	multihost support added.
if [ "$HOME" == "/home/ubuntu" ]; then
 folderbase=/media/ubuntu/Windows/Users/Bill
else
 folderbase=$HOME
fi
systemd-run --user --on-calendar 'daily' /bin/bash -c "date >> $folderbase/ubuntu/SystemLog.txt"
~/sysprocs/LOGMSG "systemd-run --user --on-calendar 'daily' /bin/bash -c 'date >> $folderbase/ubuntu/SystemLog.txt'"


