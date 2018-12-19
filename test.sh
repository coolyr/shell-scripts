#!/bin/bash

# Program:
#        练习for   

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH
date=$(date +%Y%m%d)
echo $date
echo "开始时间：$(date +%F^_^%X)"
#mkdir $date
time_start=$(date +%s)
echo $time_start
time_end=$(date +%s)
echo $time_end
how_long=$((time_end - time_start))
echo "long : "$how_long

echo $(((510 -20)/60))
