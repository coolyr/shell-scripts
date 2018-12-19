#!/bin/bash

#Program:
#       用户输入2个整数，程序计算它们的成绩
# History:
#        2016/04/26 coolyr  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin

export PATH

echo -e "You should input 2 numners; program will cross these two numbers."
read -p "First number: " num1
read -p "Second number: " num2
#以下两种定义运算变量的方法都可以
#因为shell默认的变量是String类型，所以必须要声明int
total=$(($num1*$num2))
declare -i total_dec=$num1*$num2
echo -e "\nThe result of $num1 x $num2 is ==> " $total "  ---  " $total_dec
