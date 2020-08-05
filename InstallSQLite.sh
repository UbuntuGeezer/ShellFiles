#!/bin/bash
# InstallSQLite.sh - Install SQL Lite DB from repository
#	7/30/20.	wmk.	20:15
date +%T >> $system_log #
echo "  Installing SQL Lite from repository..." >> $system_log #
echo "  Installing SQL Lite from repository..."
sudo apt-get update
sudo apt-get install sqlite3 libsqlite3-dev
if [ $? -eq 0 ]; then
  echo "  SQL Lite installation complete." >> $system_log #
  echo "  SQL Lite installation complete."
  # check version
  sqlite3 --version >> $system_log #
  date +%T >> $system_log #
  echo "  Installing SQL Lite browser..." >> $system_log #
  echo "  Installing SQL Lite browser..."
  sudo apt-get-repository ppa:linuxgndu/sqlcipher
  sudp apt-get update
  sudo apt-get install sqlitebrowser
  if [ $? -eq 0 ]; then
    echo "  SQL Lite browser installation complete...." >> $system_log #
    echo "  SQL Lite browser installation complete...."
  else
    echo "  SQL Lite browser installation failed." >> $system_log
    echo "  SQL Lite browser installation failed."
    exit 1
  fi     # end sqlitebrowser install ok
else
  echo "  SQL Lite installation failed." >> $system_log #
  echo "  SQL Lite installation failed."
  exit 1
fi     # end sqlite3 install ok conditional
