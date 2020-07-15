# Startup.sh – startup bash shell file.
# run from terminal after copying from HDD to Documents.
# then run the following 3 commands:
# pushd Documents
# chmod +x Startup.sh
# ./Startup.sh
#
# Set timezone to EDT.
echo
timedatectl set-timezone America/New_York
read -p "Reminder - Turn on NumLock and connect to wireless."
sudo add-apt-repository universe
echo "Universe repository connected."
echo "Startup complete."

