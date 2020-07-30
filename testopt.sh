#!/bin/bash
# testopt.sh - getopt example script from tutorialspoint.com
#	7/29/20.	wmk.	20:00
# Usage. bash testop.sh -f<filename> -s<source-path> \
#                -d<dest-path> -a<action>
#         <filename> = name of file to perform <action> on
#         <source-path> = (optional) source path for file; if source path
#                 omitted, ./ is assumed
#         <dest-path> = destination path for file action
#         <action> = (optional) action to perform; {copy, move}; if
#                 action omitted, copy is assumed
# Exit.   action {copy, move} performed on <filename> from <source-path>
#                 to <dest-path>
# read the options
TEMP=`getopt -o f:s::d:a:: --long file-name:,source::,destination:,action:: -- "$@"`
eval set -- "$TEMP"

# extract options and their arguments into variables.
while true ; do
    case "$1" in
        -f|--file-name)
            fileName=$2 ; shift 2 ;;
        -s|--source)
             if [ -z "$2" ]; then
               sourceDir='.'; shift 2
             else
               sourceDir=$2 ; shift 2
             fi ;;
#            case "$2" in
#                "") echo $2 ; sourceDir='.' ; shift 2 ;;
#                 *) echo $2 ; sourceDir=$2 ; shift 2 ;;
#            esac ;;
        -d|--destination)
            destinationDir=$2 ; shift 2;;
        -a|--action)
            case "$2" in
                "copy"|"move") action=$2 ; shift 2 ;;
                            *) action="copy" ; shift 2 ;;
            esac ;;
        --) shift ; break ;;
        *) echo "Internal error!" ; exit 1 ;;
    esac
done

# Now take action
case "$action" in
  copy)
   echo "$action file $fileName from $sourceDir to $destinationDir"
   cp "$sourceDir/$fileName" $destinationDir ;;
  move)
   echo "$action file $fileName from $sourceDir to $destionationDir" ;;
esac

