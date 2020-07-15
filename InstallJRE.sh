#InstallJRE.sh - install Java Runtime Environment on transient Ubuntu.
#	7/12/20.	wmk.	08:45
sudo apt update
java -version
sudo apt install default-jdk
echo "JDK installed with open JRE"
read -p "Press Enter to continue.."

