# Startup.sh – startup bash shell file.
#	6/16/21.	wmk.
#
# Usage. bash Startup.sh
#
# Exit.	timezone set to EDT; universe repository connected.
#
# Modification History.
# ---------------------
# 8/6/20.	wmk.	original code.
# 6/16/21.	wmk.	kill if persisitent system; documentation; LOGMSG used.
# run from terminal after copying from HDD to Documents.
# then run the following 3 commands:
# pushd Documents
# chmod +x Startup.sh
# ./Startup.sh
#
# check if running on persistent system..
if [ "$HOME" != "/home/ubuntu" ]; then
 echo "  QUICKSTART attempted on persistent system - abandoned."
 exit 0
fi
# Set timezone to EDT.
echo
timedatectl set-timezone America/New_York
read -p "Reminder - Turn on NumLock and connect to wireless."
sudo add-apt-repository universe
echo "Universe repository connected."
echo "Startup complete."
# end Startup
