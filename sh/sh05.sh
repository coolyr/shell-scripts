#!/bin/bash
# program:
#           用户输入一个filename，判断是否存在？是文件还是目录？

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

echo -e "Please input a filename, I will check the filename's type and permission. \n\n "

read -p "input a filename: " filename
#判断用户有没有输入
test -z $filename && echo "u must input a filename." && exit 0
#判断文件是否存在
test ! -e $filename && echo "The filename $filename DO NOT EXITS! " && exit 0
#判断是否为文件或者目录
test -f $filename && filetype="file"
test -d $filename && filetype="directory"
#判断 读 写 执行 权限
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"

echo "The filename: $filename is a $filetype"
echo "The permission are : $perm" 

