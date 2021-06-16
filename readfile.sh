#!/bin/bash
# readfile.sh - bash script to read and display a file line by line.
#	6/16/21.	wmk.
# Usage. bash readfile.sh <filespec>
#    <filespec> = file spec of file to read e.g. ./myfile.txt
# if <filespec> is omitted, readfile will try to read and display .gitignore
# Modification History.
# --------------------
# 7/20/20.	wmk.	original code.
# 6/16/21.	wmk.	code improvements.
if [ -z "$1" ]; then
 file='.gitignore'
else
 file=$1
fi
i=1
while read line; do
#reading each line
echo "Line No. $i :$line"
i=$((i+1))
done < $file
# end readfile
