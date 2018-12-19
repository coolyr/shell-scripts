#!/bin/bash
# Program:
#       User input first name and last nam. Program shows his full name
# History:
#        2016/04/26 coolwyr First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

read -p "Please input your first name: " firstname
read -p "Please input your last name: " lastname

echo -e "\nYour full name is : $firstname $lastname"

