#!/bin/bash

# Program:
#        练习for循环使用     

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

for animal in dog cat elephant
do
    echo "This animal is $animal"
done
