#InstallGeany.sh - install Geany IDE
#	7/11/20.
sudo add-apt-repository ppa:geany-dev/ppa
sudo apt-get update
sudo apt-get install geany geany-plugins-common
echo "Geany installed - check dashboard icons"
read -p "Press Enter to continue..."

