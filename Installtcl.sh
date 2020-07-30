#!/bin/bash
#Installtcl.sh - Install tcl scripting language.
#	7/30/20.	wmk.	10:45
#
# Notes. tcl is a scripting language that is necessary for building
# SQLite. SQLite is a lightweight SQL database manager that interfaces
# with the SQL browser package installed with the system.
date +%T >> $system_log #
echo "  Installing tcl scripting package." >> $system_log #
echo "  Installing tcl scripting package."
sudo apt-get update
sudo apt-get install tcl
echo "  tcl installation complete." >> $system_log #
echo "  tcl installed...at the prompt enter 'info patchlevel'"
tclsh

