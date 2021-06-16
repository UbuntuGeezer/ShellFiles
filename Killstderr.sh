exec 3>&2
exec 2> /dev/null
(do stuff where you don't want to see the stderr.)
exec 2>&3
