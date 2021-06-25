# Modification History.
# ---------------------
# 6/16/21.	wmk.	multihost suppport; verify if installing on persistent.

software="Bless Hex file editor"
if [ "$HOME" == "/home/ubuntu" ]; then
 folderbase="/media/ubuntu/Windows/Users/Bill"
else 
 folderbase=$HOME
 echo "You are going to be installing $software on a persistent system."
 read -p "Do you wish to continue (Y/N)?"
 YN=${REPLY,,}
 if [ "$REPLY" != "y" ]; then
  echo "Bless Hex file editor install abandoned."
  exit 0
 fi
fi
