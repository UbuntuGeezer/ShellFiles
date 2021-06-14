README.md - ShellFiles project documentation.
	6/5/21.	wmk.	18:20

Modification History.
---------------------
6/14/20.	wmk.	original file; created on http://github.com/..
6/5/21.		wmk.	documentation updated and expanded.

Description.
------------
ShellFiles is the git project for maintaining all system-wide shell
scripts for the ubuntu-base running system. The shell files fall into
the following categories:

	Documentation
	System Startup and Initialization
	System Configuration
	Utilities
	Bash Command Alias Implementations
	Alternate Host Shell Files
	Development Files
	Software Package Install Files

Documentation.
--------------

README.md - this file; initial ShellFiles git documentation
PF-Utilities-README.txt
StartupNotes.txt (needs to be updated)
bash.pdf - bash Reference Manual
sysprocs.txt - (old) list of system procs for Terminal
-rwxrwxrwx 1 ubuntu ubuntu  515 Jul 26  2020 ZoomIDs.sh
-rwxrwxrwx 1 ubuntu ubuntu  442 May  9  2020 aliases.sh
-rwxrwxrwx 1 ubuntu ubuntu 9.9K Feb 25 07:33 commits.txt
-rwxrwxrwx 1 ubuntu ubuntu    0 Jun  5 18:16 filelist.txt
-rwxrwxrwx 1 ubuntu ubuntu  11K Jun  2 19:23 gitlog.txt


System Startup and Initialization.
----------------------------------
COLDSTART - first shell to run from Terminal after system reboot
COLDSTART_1 - followup shell to run from Terminal after system reboot
SYSEDIT
NewSYSEDIT - emulate SYSEDIT of SYSEDIT shell into running system
StartDaily.sh
Startup.sh
StartupNotes.txt - (needs updating)
WARMSTART
QUICKSTART
SYSEDIT_02-2021
SYSEDIT_07-2020


System Configuration.
---------------------
.bashrc - bash Terminal session initialization, alias, environment defs
~.bashrc - bash Terminal initialization, kaysacer system
UpdateLibre.sh - update Libre to ver 6.4.7.2
UpdateLibre6p7.sh - (X) Update Libre to ver 6.7.x
installs.sh
sysedits.sh - perform initial SYSEDITs to complete setting up system
HPA08CFD414825.local
HP_ENVY_4520_series_414825


Utilities.
----------
Files in this category are utility shell scripts for performing routine
tasks interactively through Terminal, or inside of other bash shells.

-rwxrwxrwx 1 ubuntu ubuntu 1.2K Jul 19  2020 BACKLOG
-rwxrwxrwx 1 ubuntu ubuntu 4.3K Jun  2 19:33 BU-Ignores.sh
-rwxrwxrwx 1 ubuntu ubuntu 2.7K Nov 17  2020 CP-AcctsToMirror.sh
-rwxrwxrwx 1 ubuntu ubuntu 1.6K Jan 30 18:45 CP-Sysstart.sh
-rwxrwxrwx 1 ubuntu ubuntu 1.1K Jul 24  2020 DistribBUScripts.sh
-rwxrwxrwx 1 ubuntu ubuntu  558 Sep 27  2020 ReadOnlyOff.sh
-rwxrwxrwx 1 ubuntu ubuntu 4.3K Jun  5 18:12 ReloadSSH.sh
SETBACK
SETMSG - set term_ startup message(s)
SQL
PFDUMP
PFLOAD
PFSTASH
PJDUMP
PJDUMP_dev
PJDUMP_old
PJLOAD
PSFIND - find running job(s) in system to facilitate "kill"
LISTENV
LOGMSG
LOGMSG_
UNLOAD
gogit - (X) move to GitHub subdirectory
gowingit - (X) move to WINGIT subdirectory
showgit.sh - show information about latest git commit
term_ - Terminal startup shell logging session start, display "status" message(s)
termx_ - Terminal session end with log message

	Software Installation Files.

Note: many of these are linked to bash aliases in .bashrc.

InstallBlessHex.sh - install Bless hex file editor.
InstallFossil.sh - install Fossil source code maintenance (sqlite source).
InstallGoogleEarth.sh - install Google Earth.
InstallGStream.sh - install GStream MP4 plugins.
InstallPython.sh - install Python.
InstallSQLite.sh - install sqlite3.
InstallTPadI.sh - install touch-pad indicator.
InstallURE.sh - install restricted extras (MP4 player, etc.)
InstallVLC.sh - install VLC video player.
InstallWifi.sh - (incompatible) install wifi drivers.
InstallZoom.sh - (obsolete) install Zoom.
Installgit.sh - install git utility.
Installmkusb.sh - install make usb bootable Ubuntu.
InstallooSDK.sh - install Open Office SDK.
Installpdftk.sh - install pdf toolkit.
Installshellcheck.sh - install shellcheck utility (Geany Build dependency).
Installtcl.sh - install tcl scripting language (SQLite source dependency).
Installtestdisk.sh - testdisk utility; allows deleted file recovery and ot - her
  specialized disk functions.


Bash Command Alias Implementations.
-----------------------------------

EJECT - safely eject flash drive
ENDSQL - log SQL session end
GETMSG - get current message(s) to be displayed by term_
EnblTPad.sh - enable HP Touchpad
InstallBuild.sh - install build-essential including make utility
InstallFlowBlade.sh - FlowBlade 2.0 installer
InstallGeany.sh - Geany installer
InstallJRE.sh - Java Runtime Environment installer (with JDK)
InstallPython.sh - Python 3 installer
InstallSSH.sh - SSH Server installer
InstallZoom.sh - Zoom installer
Installgit.sh - git installer
Installmkusb.sh - mkusb (make USB-bootable ubuntu) installer
Installtestdisk.sh - testdisk (low-level disk managment e.g.unerase) installer
KillTPad.sh - disable HP TouchPad
NewSSHKey.sh - generate new SSH key pair
PJDUMP - dump project files to backup
SYSEDIT - change running ubuntu system
term_ - initialize Terminal session
termx_ - finalize Terminal session

--	Territory subsystem alias shells.

cdc.sh
cdd.sh
cdg.sh
cdj.sh
cdp.sh
cdq.sh
cds.sh
cdt.sh


Alternate Host Shell Files.
---------------------------

	Territory "cd" bash command abbreviations - kaysacer system.
	
kcdc.sh - cd to any Territories subdirectory
kcdd.sh - cd to Dev-DB subdirectory
kcdg.sh - cd to folderbase/GitHub/<project> subdirectory
kcdj.sh - cd to Projects-Geany/<project> subdirectory
kcdp.sh - cd to Procs-Dev subdirtectory
kcds.sh - cd to folderbase/RawData/SCPA/SCPA-Downloads/<Terrxxx>
kcdt.sh - cd to folderbase/RawData/RefUSA/RefUSA-Downloads/<Terrxxx>
KBU-Ignores.sh
KLISTENV
KLOGMSG
KPJDUMP
KSYSEDIT
KUNLOAD
	

Development Files.
------------------
Files in this category are not necessarily full shell scripts. They are
used in the development of .sh files, primarily as templates.

procheader.sh - generic shell header
proctemplate.sh - generic shell full template
tmplt-BU-Ignores.sh - template for project BU-Ignores.sh shell
JumpTo.sh - JumpTo bash function definition and implementation
header.sh
import.sh
readfile.sh
-rwxrwxrwx 1 ubuntu ubuntu  122 Jul 25  2020 test.sh
-rwxrwxrwx 1 ubuntu ubuntu 1.8K Jul 29  2020 testopt.sh


Software Package Install Files.
-------------------------------

flowblade-2.0.0-1_all.deb
flowblade-2.6.0-1_all.deb
zoom_amd64.deb
