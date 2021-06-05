#!/bin/bash
# StartDaily.sh - start daily timer task(s).
#	5/14/21.	wmk.
systemd-run --user --on-calendar 'daily' /bin/bash -c "date >> /media/ubuntu/Windows/Users/Bill/ubuntu/SystemLog.txt"
~/sysprocs/LOGMSG "systemd-run --user --on-calendar 'daily' /bin/bash -c 'date >> /media/ubuntu/Windows/Users/Bill/ubuntu/SystemLog.txt'"


