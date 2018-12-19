#!/bin/bash

# Program:
#        练习函数,练习函数的输入参数   

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

echo "This program will print your selection!"


function printit(){
    echo  "Your choice is $1"
}

#read -p "Input your choice: " choice
#case $choice in
case $1 in
    "one")
    printit 1
    ;;

    "two")
    printit 2 
    ;;

    "three")
    printit 3 
    ;;

    *)
    echo "Usage $0 (one|two|three)"
    ;;
esac

