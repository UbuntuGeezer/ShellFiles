#PF-Utilities-README.txt
#	7/17/20. wmk.	18:12
#
# PJDUMP - dumps from a git project within /Windows/../GitHub/ ($WINGIT_PATH)
#          to user-specified BACKUP_PATH (set in $BACKUP_PATH environment var
#          prior to call.
#	Usage. [$HOME/Documents] PJDUMP $BACKUP_PATH <project-name>
#          
# The following utilities will eventually be modified for general purpose
# file backups. (7/17/20.) See PJDUMP and associated utilties for backing
# up git projects.
#
# PFDUMP PFSTASH PFLOAD PFDESTAGE utilities.
# PFDUMP - dumps from Project within /Windows/.../GitHub/ ($WINGIT_PATH)
#          to ../USB20FD/StagingArea-In/PNY-StagingArea-In
# PFSTASH - updates ../USB20FD/git-Projects/<project-name>
#	   from ../USB20FD/StagingArea-In/PNY-StagingArea-In/<project-name>
# PFLOAD - loads from ../USB20FD/git-Projects/<project-name>
#          to /Windows/Users/Bill/Documents/StagingArea-In/<project-name>
# PFDESTAGE - loads into /Windows/Users/Bill../GitHub/<project-name>
#
# Notes. These utilities were modeled after the PFDUMP/PFLOAD utilities on
# the old CDC KRONOS/NOS systems. They emulate incremental dump and load
# operations, only dumping and loading files which have changed. While the
# concept was good, these bash shells have some shortcomings when managing
# git project directories. It turns out that git locks files against anyone
# but itself overwriting them, so the "cp" bash utility with the -u (update)
# option is incapable of writing over some of the .git files that may have
# been changed to thread them into the latest commit. While adequate, this will
# eventually come back to bite for sure. A much better way of backing up git
# projects is to initially clone the project into the backup area. Then
# subsequent backups can use "git pull" to pull the latest changes into the
# backup repository.
#
# The concept with the PF utilities is that the backups are staged. That way,
# if the staged backup succeeds, it allows the user the option to continue on 
# to use the staged backup to overwrite the old backup, or to maintain two
# levels of backup - current and prior. The general method here is that when
# the next level of backup is done, the prior backup is discarded, the staged
# backup becomes the prior, and the newest is written to the staging area.
#
# The same concept may be implemented by writing some new bash shells that are
# more in line with the git project management. A two-tiered approach may still
# be used, where an older project version is the prior backup, and a newer project
# version is the staged backup. Rather than being concerned with file copying
# git will do all the work by using "git pull" to pull from the newer repository
# and update the older repository. The caveat here is that the .gitignore files
# will need to be manually backed up, since git will not include them in the
# project tracking.

