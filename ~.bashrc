# ~/.bashrc: executed by bash for non-login shells.
# 5/26/21.	wmk.	
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# Modification History.
# ---------------------
# 3/21/21.	wmk.	updates to alias list.
# 5/25/21.	wmk.	modified for Kay's system.
# 5/26/21.	wmk.	TIMERS_ACTIVE flag added.
#
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# enable git  and other aliases
alias got='git'
alias ga='git add'
alias COLDSTART_1='bash ~/sysstart/COLDSTART_1'
alias WARMSTRT='bash ~/sysstart/WARMSTART'
alias term_='bash ~/sysprocs/term_'
alias termx_='bash ~/sysprocs/termx_'
alias SYSEDIT='bash ~/sysprocs/SYSEDIT'
alias BACKLOG='bash ~/sysprocs/BACKLOG'
alias EJECT='bash ~/sysprocs/EJECT'
alias UNLOAD='bash ~/sysprocs/UNLOAD'
alias KillTPad='bash ~/sysprocs/KillTPad.sh'
alias EnblTPad='bash ~/sysprocs/EnblTPad.sh'
alias Installgit='bash ~/sysprocs/Installgit.sh'
alias InstallGeany='bash ~/sysprocs/InstallGeany.sh'
alias InstallGEarth='bash ~/sysprocs/InstallGoogleEarth.sh'
alias InstallZoom='bash ~/sysprocs/InstallZoom.sh'
alias InstallJRE='bash ~/sysprocs/InstallJRE.sh'
alias InstallBuild='bash ~/sysprocs/InstallBuild.sh'
alias Installmkusb='bash ~/sysprocs/Installmkusb.sh'
alias Installpdftk='bash ~/sysprocs/Installpdftk.sh'
alias InstallFlowBlade='bash ~/sysprocs/InstallFlowBlade.sh'
alias Installshellcheck='bash ~/sysprocs/Installshellcheck.sh'
alias Installtestdisk='bash ~/sysprocs/Installtestdisk.sh'
alias InstallPython='bash ~/sysprocs/InstallPython.sh'
alias InstallBless='bash ~/sysprocs/InstallBlessHex.sh'
alias InstallSQL='bash ~/sysprocs/InstallSQLite.sh'
alias InstallTPadI='bash ~/sysprocs/InstallTPadI.sh <nyes'
alias InstallURE='bash ~/sysprocs/InstallURE.sh'
alias InstallWifi='bash ~/sysprocs/InstallWifi.sh'
alias UpdateLibre='bash ~/sysprocs/UpdateLibre6p7.sh'
alias NewSSHKey='bash ~/sysprocs/NewSSHKey.sh'
alias LOGMSG='bash ~/sysprocs/LOGMSG'
alias PJDUMP='bash ~/sysprocs/PJDUMP'
alias PSFIND='bash ~/sysprocs/PSFIND'
alias SETBACK='bash ~/sysprocs/SETBACK'
alias SETMSG='bash ~/sysprocs/SETMSG'
alias GETMSG='bash ~/sysprocs/GETMSG'
alias SQL='bash ~/sysprocs/SQL'
alias ENDSQL='bash ~/sysprocs/ENDSQL'
alias LISTENV='bash ~/sysprocs/LISTENV'
alias cda='cd ~/Territories'
alias cdb='cd ~/GitHub/Territories'
alias cdc='. ~/sysprocs/cdc.sh'
alias cdd='. ~/sysprocs/cdd.sh'
alias cdg='. ~/sysprocs/cdg.sh'
alias cdj='. ~/sysprocs/cdj.sh'
alias cdp='. ~/sysprocs/cdp.sh'
alias cds='. ~/sysprocs/cds.sh'
alias cdt='. ~/sysprocs/cdt.sh'
alias sysedits='. ~/sysprocs/sysedits.sh'
alias installs='. ~/sysprocs/installs.sh'
alias ToSysstart='. ~/sysprocs/CP-Sysstart.sh'
#set some global vars
export U_DISK='/media/ubuntu'
export WINGIT_PATH='/home/bill/GitHub'
export BACKUP_PATH=$U_DISK
export PJ_BACK='git-Projects'
export WINUBUNTU_PATH='/home/bill/ubuntu'
export WINCONG_PATH='/home/bill'
export TEMP_PATH=$HOME/temp
export system_log=~/ubuntu/SystemLog.txt
export TIMERS_ACTIVE=1
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=01;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'
