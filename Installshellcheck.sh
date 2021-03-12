#!/bin/bash
#Installshellcheck.sh - Install shellcheck for use by Geany/Lint.
bash ~/sysprocs/LOGMSG "Installshellcheck initiated."
wget -qO- https://github.com/koalaman/shellcheck/releases/download/v0.7.0/shellcheck-v0.7.0.linux.x86_64.tar.xz | tar -xJf -
cd shellcheck-v0.7.0/  || return
sudo cp shellcheck /usr/local/bin
shellcheck --version
bash ~/sysprocs/LOGMSG "Installshellcheck complete."
#end Installshellcheck
