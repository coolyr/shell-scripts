#!/bin/bash

# Program:
#       实例程序参数的使用

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

if [ "$1" == "hello" ]; then
    echo "Hello, how are U?"
elif [ "$1" == "" ]; then
    echo "You MUST input parameter, example> {$0 someword}"
else
    echo "The onlyt parameter is 'Hello', example> {$0 hello}"
fi

