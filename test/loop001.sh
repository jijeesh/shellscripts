#!/usr/bin/env bash
for i in 1 2 3 4 5
do
    echo "Looping ... number $i"
done

for i in hello 1 * 2 goodbye
do
    echo "Looping.. i is set to $i"
done

INPUT_STRING=helloooo
#while :
#do
    echo "Please type something in (bye to quit)"
#    read INPUT_STRING
#    echo "You typed: $INPUT_STRING"
#done
echo "Please talk to me...."
while read f
do
    echo "readed $f"
    case $f in
        hello)
            echo " Hello me"
            ;;
        bye)
            echo "See you again"
            break
            ;;
    esac
done