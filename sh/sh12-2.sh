#!/bin/bash

# Program:
#        练习循环while do done     

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

until [ "$yn" == "yes" -o "$yn" == "YES" ]
do
    read -p "Please input yes/YES to stop the program!" yn
done

echo "OK! you input the correct answer."
