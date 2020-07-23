#InstallJRE.sh - install Java Runtime Environment on transient Ubuntu.
#	7/22/20.	wmk.	07:00
# Modification History.
# --------------------
# 7/12/20.	wmk.	original script
# 7/22/20.	wmk.	System log entries added to script
date +%T >> $system_log #
echo "  JRE installation started..." >> $system_log
echo "  JRE installation started..."
sudo apt update
java -version
sudo apt install default-jdk
date +%T >> $system_log #
echo "  JDK installed with open JRE." >> $system_log
echo "  JDK installed with open JRE." >> $system_log
read -t3 -p "Press Enter to continue.."
echo
exit 0

