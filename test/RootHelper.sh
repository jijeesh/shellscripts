#!/usr/bin/env bash

function usage()
    {
    printf "%b \a\n\nRootHelper"
    }

usage

printf "%b" "\a\n Please select the options"

PS3='Please enter your choice: '
options=("Help" "Clean UP" "Quit")
select opt in "${options[@]}"
do
    case $opt in
    "Help")
        usage
        printf "%b\n"
        ;;
    "Quit")
        break
        ;;
    *)
        echo Invalid Option;;
    esac

done