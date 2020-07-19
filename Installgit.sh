#Installgit.sh - install git: on transient Ubuntu.
#	7/18/20.	wmk.	18:00
log_file=$HOME/SystemLog.txt
sudo apt update
git -version
sudo apt install git
echo "git installed from repository."
date +%T >> $log_file
echo "  git installed from repository." >> $log_file
read -p "Press Enter to ontinue.."

