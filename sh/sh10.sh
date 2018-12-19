#!/bin/bash

# Program:
#        用户输入一个日期，计算与当前日期的间隔      

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

echo "This program will caculate: "
echo "How many days before your input date!"
read -p "Please input your date (YYYYMMDD example>20160426): " date2

date_d=$(echo $date2 | grep '[0-9]\{8\}')
echo "*****************" $date_d
if [ "$date_d" == "" ]; then
    echo "U input the wrong format..."
    exit 1
fi

declare -i date_dem=`date --date="$date2" +%s`
declare -i date_now=`date +%s`
declare -i date_total_s=$(($date_dem - $date_now))
declare -i date_d=$(( $date_total_s/60/60/24))

if [ "$date_total_s" -lt 0 ]; then
    echo "You had been leaved before: " $((-1*$date_d)) "ago"
else
#因为计算相差的秒数/60/60/24的时候 会默认把不足一天的去掉。。。
#所以在计算相差的时间精确到小时的时候要重新计算下小时。（xx天mm小时）
    declare -i date_h=$(($(($date_total_s - $date_d*60*60*24))/60/60))
    echo "U will leave after $date_d days and $date_h hours!"
fi

