echo "This is test.sh"
a_str="With blank"
if [ -z $a_str ]; then
echo " empty string."
else
echo $a_str #
fi
echo
