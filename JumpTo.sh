#!/bin/bash
#JumpTo.sh - formal bash GOTO implementation.
#	11/9/20.	wmk.
#
# 	jumpto	<label>
#
#	<command line parameters>
#	<label> = shell line label to jump to;
#				example:    jumpto foo
#						...
#							foo:
#
#	Entry Dependencies.
#   <assumed paths, etc>
#
#	Exit Results.
#	<files/paths, etc. affected by proc>
#
#	Modification History.
#	---------------------
#	mm/dd/yy.	wmk.	original shell
#
#	Notes.

# include this boilerplate
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}

start=${1:-"start"}

jumpto $start

start:
# your script goes here...
x=100
jumpto foo

mid:
x=101
echo "This is not printed!"

foo:
x=${x:-10}
echo x is $x
