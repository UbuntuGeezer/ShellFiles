#!/bin/bash
file='.gitignore'
i=1
while read line; do
#reading each line
echo "Line No. $i :$line"
i=$((i+1))
done < $file
