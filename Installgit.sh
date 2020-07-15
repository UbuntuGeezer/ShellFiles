#Installgit.sh - install git: on transient Ubuntu.
#	7/12/20.	wmk.	08:30
sudo apt update
git -version
sudo apt install git
echo "git installed from repository."
read -p "Press Enter to ontinue.."

