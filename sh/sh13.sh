#!/bin/bash

# Program:
#        使用循环计算累加和     

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

s=0
i=0
while [ "$i" != "100" ]
do
    i=$(($i+1))
    s=$(($s+$i))
    echo "i=$i"
    echo "s=$s"
done

echo "The result of '1+2+3...+100' is ==> $s"
