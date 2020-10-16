#InstallTPadI.sh - Install touchpad-indicator
#	10/7/20.	wmk. from internet
sudo add-apt-repository ppa:atareao/atareao
sudo apt-get install touchpad-indicator
date >> $system_log #
echo "  TPad-Indicator installed from repository." >> $system_log #
echo "  TPad-Indicator intalled - check dashboard icons"
read -p "Press Enter to continue..."
