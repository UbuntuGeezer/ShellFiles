#InstallSSH.sh - Install Secure Shell
#	7/21/20.	wmk.	15:45
date +%T >> $system_log #
echo "  Installing SSH server..." >> $system_log #
echo "  Installing SSH server..."
sudo apt update
sudo apt install openssh-server
echo "  SSH server installed." >> $system_log #
echo "  SSH server installed."
echo "*** WARNING - Runnning SSH-server opens port 22 for spyware to"
echo " sniff the system. Ensure proper firewalls are in place and that"
echo " SSH protocol moves any input to a different port to prevent hacking."
echo "*** END WARNING"
read -p -t5 "Press Enter to continue..."
echo
exit 0

