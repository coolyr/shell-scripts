#!/bin/bash

# Program:
#       实例程序参数的使用

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

echo "The script name is    ==> $0"
echo "Total parameter number is     ==> $#"
[ "$#" -lt 2 ] && echo "The number of parameter is less than 2. Stop here." && exit 0

echo "Your whole parameter is   ==> $@"
echo "The 1st para  ==> $1"
echo "The 2nd para  ==> $2"
