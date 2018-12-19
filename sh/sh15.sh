#!/bin/bash

# Program:
#        练习for循环使用     

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

users=$( cut -d ":" -f 1 /etc/passwd )
for username in $users
do
    id $username
    finger $username
done

