#!/bin/bash

# Program:
#        练习函数   

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

echo "This program will print your selection!"


function printit(){
    echo -n "Your choice is "
}

#read -p "Input your choice: " choice
#case $choice in
case $1 in
    "one")
    printit; echo $1 | tr 'a-z' 'A-Z' #参数做大小写替换 大 -> 小
    ;;

    "two")
    printit; echo $1 | tr 'a-z' 'A-Z' #为什么使用'[A-Z]'不可以？
    ;;

    "three")
    printit; echo $1 | tr 'a-z' 'A-Z'
    ;;

    *)
    echo "Usage $0 (one|two|three)"
    ;;
esac

