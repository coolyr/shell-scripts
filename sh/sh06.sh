#!/bin/bash

#Program:
#       显示用户的选择，练习使用[]作为测试

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

read -p "Please input (Y/N) : " yn

[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK, continue" && exit 0
[ "$yn" == "N" -o "$yn" == "n" ] && echo "Oh, interrupt!" &&  exit 0
echo "I dont't know what u choice is " && exit 0

