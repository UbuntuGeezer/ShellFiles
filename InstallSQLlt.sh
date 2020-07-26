#!/bin/bash
# InstallSQLlt.sh - Install SQL Lite DB from repository
#	7/26/20.	wmk.	09:15
date +%T >> $system_log #
echo "  Installing SQL Lite from repository..." >> $system_log #
echo "  Installing SQL Lite from repository..."
sudo apt-get update
sudo apt-get install sqlite3
echo "  SQL Lite installation complete." >> $system_log #
echo "  SQL Lite installation complete."
# check version
sqlite3 --version >> $system_log #
date +%T >> $system_log #
echo "  Installing SQL Lite browser..." >> $system_log #
echo "  Installing SQL Lite browser..."
sudo apt-get install sqlitebrowser
echo "  SQL Lite browser installation complete...." >> $system_log #
echo "  SQL Lite browser installation complete...."

