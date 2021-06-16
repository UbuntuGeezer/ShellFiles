# aliases.sh - shell file to reveal standard git aliases
# from githowto.com/aliases
#	wmk.	6/15/21.
#
#	Exit. ~/.gitconfig contains git command aliases, read by git startup.
#
# Notes. COLDTART depends upon .gitconfig residing in ubuntu/sysstart folder
# then copies it to ~/ folder.
#
# Modification History.
# ---------------------
# 5/9/20.	wmk.	original code.
# 6/15/21.	wmk.	documentation.
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'
