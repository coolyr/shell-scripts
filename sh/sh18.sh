#!/bin/bash

# Program:
#        练习for   

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

read -p "Please input a number, I will count for 1+2+3+...+your_input: " num
s=0
for ((i=1; i<=$num; i=i+1))
do
    s=$(($s+$i))
    read -p "test for, please input anything: " any
done
echo "The result of '1+2+3...+$num' is  ==> $s " 
