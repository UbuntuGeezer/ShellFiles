#InstallGeany.sh - install Geany IDE
#	7/19/20.
sudo add-apt-repository ppa:geany-dev/ppa
sudo apt-get update
sudo apt-get install geany geany-plugins-common
date >> $system_log #
echo "  Geany installed from repository." >> $system_log #
echo "Geany installed - check dashboard icons"
read -p "Press Enter to continue..."

