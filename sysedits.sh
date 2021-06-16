#!/bin/bash
#sysedits.sh - Perform all startup SYSEDITs after initial boot.
#	6/16/21.	wmk.
#
#	Usage. 	sysedits
#
#	Entry dependencies.	.bashrc Alias sysedits defined.
#
#	Exit Results.
#		Installation SYSEDITs peformed to activate Installxx commands.
#		~/nyes, yes, 2ys prompt input files set up.
#
#	Modification History.
#	---------------------
#	1/30/21.	wmk.	original shell
#	2/12/21.	wmk.	updated to use LOGMSG for system log messages.
#	3/17/21.	wmk.	cdc and cdg added.
#	6/16/21.	wmk.	cdj, cdq, EJECT, LISTENV added; documentation.
#	Notes.
echo "Startup SYSEDITs initiated..."
bash ~/sysprocs/LOGMSG "  Startup SYSEDITs initiated..."
SYSEDIT PROC Installgit.sh
SYSEDIT PROC InstallGeany.sh
SYSEDIT PROC InstallJRE.sh
SYSEDIT PROC UpdateLibre6p7.sh
SYSEDIT PROC InstallSQLite.sh
SYSEDIT PROC InstallBuild.sh
SYSEDIT PROC EJECT
SYSEDIT PROC GETMSG
SYSEDIT PROC SETMSG
SYSEDIT PROC LOGMSG
SYSEDIT PROC UNLOAD
SYSEDIT PROC cdc.sh
SYSEDIT PROC cdd.sh
SYSEDIT PROC cdc.sh
SYSEDIT PROC cdg.sh
SYSEDIT PROC cdp.sh
SYSEDIT PROC cdq.sh
SYSEDIT PROC cds.sh
SYSEDIT PROC cdt.sh
echo "Startup SYSEDITs complete."
bash ~/sysprocs/LOGMSG "  Startup SYSEDITs complete."
cd ~
echo "" >nyes
echo "y" >>nyes
echo "y" >2ys
echo "y" >> 2ys
echo "y" > yes
echo "" >>yes
# end sysedits
