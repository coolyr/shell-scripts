#!/bin/bash

# Program:
#      使用case语法； 实例程序参数的使用

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

case $1 in
    "hello")
    echo "Hello, how are U?"
    ;;

    "")
    echo "U MUST input parameters, examples> ($0 someword)"
    ;;

    *)
    echo "Usage $0 {hello}"
    ;;
esac

