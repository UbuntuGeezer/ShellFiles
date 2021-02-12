#!/bin/bash
# installs - bash shell to be run after sysedits has completed.
#	1/31/21.	12:00	wmk.	
# Usage.   bash installs
# Entry. System time set to Eastern time
#	Initialize System Log file
#	System log message issued with date/time stamp 
#	Configuration files copied to $HOME
#	System startup procedures copied to $HOME/startup
#	System bash procedures copied to $HOME/sysprocs
#	Terminal restart advised to pick up configuration files
# Exit. (COLDSTART_1 complete)
# 	  Touchpad disabled	
#         Universe repository connected
#	  [Special bash files with command aliases copied to $HOME\sysprocs]
#	  Install git
#	  Install Geany
#	  Install Zoom
#	  Install Java JRE/JDK
#	  Install FlowBlade
#	  Install testdisk
#	  Install Python
#     Install Bless (hex file editor)
#     Install SQL Lite
#	  Update Libre Office to ver. 6.4.6
#     [Install wifi driver]
#	  Remind user to copy WINUBUNTU/.ssh/id_rsa, id_rsa.pub to ~/.ssh
#         and run ssh-agent add to register the current SSH keys
# Modification History.
# --------------------
# 7/21/20. wmk.	original
# 7/23/20. wmk.	added testdisk and Python installs
# 7/24/20. wmk.	eliminated exit at end to save Terminal session; updated
#               script to include SSH key installation and registration
# 7/27/20. wmk. add hooks for Bless (hex editor), SQL Lite, and wifi
#               driver installs
# 7/30/20. wmk. add Installtcl and InstallFossil comments inline
# 8/25/20. wmk.	add UpdateLibre to update LibreOffice to ver 6.4.6
# 1/31/21. wmk.	UpdateLibre maps to update to LibreOffice 6.4.7; sysedits
# 				invoked prior to Install procs
if [ -z $system_log ]; then
  system_log=$HOME/SystemLog.txt
else
  echo "system_log environment var already set."
fi  # end system_log defined conditional
date >> $system_log #
echo "  System installs initiated." >> $system_log #
echo "  System installs initiated."
# connect universe repository
date +%T >> $system_log #
echo "  Connecting universe repository..." >> $system_log #
echo "  Connecting universe repository..."
sudo apt update
sudo add-apt-repository universe
# install packages for standard system operations using sysprocs
# and aliases defined in ~/.bashrc
sysedits     # SYSEDIT all install packages
Installgit
InstallGeany
#InstallZoom
InstallJRE
#InstallFlowBlade
#Installtestdisk
#InstallPython
#InstallBless
InstallSQL
UpdateLibre
# InstallWifi
# Installtcl # for sqlite build
# InstallFossil # for sqlite source code management
date +%T >> $system_log #
echo "  installs Complete." >> $system_log #
echo "  installs Complete."
