#!/bin/bash
# DistribBUScripts.sh - distribute BU-Ingores.sh to all projects so
#     all projects backup their .gitignore spec'd files uniformly
#	6/16/21.	wmk.
# Usage. bash DistribBUScripts.sh run from WINGIT_PATH/ShellFiles
# Entry. WINGIT_PATH envrionment var = ($)folderbase/../GitHub
#		 TEMP_PATH environment var = ($)folderbase/temp
# Exit.  BU-Ignores.sh updated in all the following projects..
# Modification History.
# ---------------------
# 7/24/20.	wmk.	original code.
# 6/16/21.	wmk.	path assumptions removed.
# Notes. BU_Ignores.sh in every project will need its MY_PROJ envirnoment
# var set to its project name (e.g. "ShellFiles")
#date +%T >> $system_log
echo "  DistribBUScripts - distributing BU-Ignores.sh to all projects..."
~/sysprocs/LOGMSG "  DistribBUScripts - distributing BU-Ignores.sh to all projects..."
pushd ./ > $TEMP_PATH/scratchfile
cd $WINGIT_PATH/ShellFiles
cp -u BU-Ignores.sh ../Banking-Basics
cp -u BU-Ignores.sh ../Libraries-Project
cp -u BU-Ignores.sh ../OOo-Dialogues
cp -u BU-Ignores.sh ../OpenOffice-Basics
popd >$TEMP_PATH/scratchfile
echo "  Edit 'MY_PROJ' environment var in BU-Ignores.s in the following projects..."
echo -e "  Banking-Basics\n  Libraries-Project\n  OOo-Dialogues\n  OpenOffice-Basics"
echo "  DistribBUScripts complete."
echo "  DistribBUScripts complete."  $system_log #


