#!/bin/bash
# Program:
#           Program creates three files, which named by use's input
#           and date command
# History:
#           2016/04/26  coolwyr First realse

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin

export PATH

echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your filename : " filename

filename=${filename:-"filename"}
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)

file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

echo $file1
echo $file2
echo $file3

touch "$file1"
touch $file2
touch "$file3"

