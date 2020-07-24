#!/bin/bash
# DistribBUScripts.sh - distribute BU-Ingores.sh to all projects so
#     all projects backup their .gitignore spec'd files uniformly
#	7/24/20.	wmk.	original
# Usage. bash DistribBUScripts.sh run from WINGIT_PATH/ShellFiles
# Entry. WINGIT_PATH envrionment var = /media/ubuntu/Windows/Users/Bill/../GitHub
# Exit.  BU-Ignores.sh updated in all the following projects..
# Notes. BU_Ignores.sh in every project will need its MY_PROJ envirnoment
# var set to its project name (e.g. "ShellFiles")
date +%T >> $system_log
echo "  DistribBUScripts - distributing BU-Ignores.sh to all projects..." >> $system_log #
echo "  DistribBUScripts - distributing BU-Ignores.sh to all projects..."
cp -u BU-Ignores.sh ../Banking-Basics
cp -u BU-Ignores.sh ../Libraries-Project
cp -u BU-Ignores.sh ../OOo-Dialogues
cp -u BU-Ignores.sh ../OpenOffice-Basics
echo "  Edit 'MY_PROJ' environment var in BU-Ignores.s in the following projects..."
echo -e "  Banking-Basics\n  Libraries-Project\n  OOo-Dialogues\n  OpenOffice-Basics"
echo "  DistribBUScripts complete."
echo "  DistribBUScripts complete."  $system_log #


