$!/bin/bash
# InstallFossil - Install Fossil source code maitenance system.
#	7/30/20.	wmk.	08:00
#
# Usage. bash InstallFossil.sh
#
# Notes. Fossil is the project management system for SQLLite.
# Fossil is easy to install and use. Here are the steps for unix. (Windows is similar.)
#
#    Download the self-contained Fossil executable from https://fossil-scm.org/fossil/uv/download.html 
# and put the executable somewhere on your $PATH.
#    mkdir ~/fossils
#    fossil clone https://sqlite.org/src ~/fossils/sqlite.fossil
#    mkdir ~/sqlite; cd ~/sqlite
#    fossil open ~/fossils/sqlite.fossil 

# Notes. The build process for SQLite uses tcl scripting. Ensure that
# tcl scripting is loaded by typing 'tclsh' on the command line.
# You will be prompted with %; then enter 'info patchlevel' to
# see the current version installed.
# At this point you are ready to type "./configure; make"
#	 (or on Windows with MSVC, "nmake /f Makefile.msc"). 
