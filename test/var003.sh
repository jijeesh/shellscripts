#!/usr/bin/env bash
echo -en " What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ] ; then
    myname=`whoami`
fi

echo "Your name is : $myname"

echo -en "enter name again: ${myname2:-saru}"
read myname2

echo "yor name $myname2"