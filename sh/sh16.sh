#!/bin/bash

# Program:
#        练习for    

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

network="192.168.1"
for sitenu in $(seq 1 10)
do
    #获取ping的回传值是正确还是失败
    ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
    if [ "$result" == 0 ]; then
        echo "Server ${network}.${sitenu} is UP"
    else
        echo "Server ${network}.${sitenu} is DOWN"
    fi
done

