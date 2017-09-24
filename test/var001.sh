#!/usr/bin/env bash
echo "Please ender values with space"
echo " Var 0 will be file name $0"
echo "My fist var = $1"
echo " My second var = $2"
echo "Total var = $#"
echo "Alls var = $@"
echo "All with star $*"

echo "Shifting the vars"

while [ "$#" -gt "0" ]
do
    echo "\$1 is $1"
    shift
done
/bin/lss
if [ "$?" -ne "0" ]; then
    echo "Sorry , we had a problem"
fi

echo "Show the current running PID: $$"

echo "Show the PID of the last run background process $!"

old_IFS="$IFS"
IFS=:
echo "Please input some data separated by colons ..."
read x y z
IFS=$old_IFS
echo "x is $x y is $y z is $z"