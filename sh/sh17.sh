#!/bin/bash

# Program:
#        查找输入的文件夹下的所有文件的权限    

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

read -p "Please input a directory: " dir

if [ "$dir" == "" -o ! -d "$dir" ]; then
    echo "The $dir is NOT exits in your system"
    exit 1
fi

filelist=$( ls $dir)
for filename in $filelist
do
    perm=""
    test -r "$dir/$filename" && perm="$perm readable"
    test -w "$dir/$filename" && perm="$perm writable"
    test -x "$dir/$filename" && perm="$perm executable"
    echo "The file $dir/$filename's permission is $perm"
done


