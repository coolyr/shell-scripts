#!/bin/bash

# Program:
#        联系case;交互式使用read读取参数      

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

echo "This program will print your selection!"

read -p "Input your choice: " choice
case $choice in
#case $1 in
    "one")
    echo "Your choice is ONE"
    ;;

    "two")
    echo "Your choice is TWO"
    ;;

    "three")
    echo "Your choice is THREE"
    ;;

    *)
    echo "Usage $0 (one|two|three)"
    ;;
esac

