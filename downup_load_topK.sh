#!/bin/bash

###################################################
# Author: coolyr
# Mail: yunrong@pku.edu.cn
# Description:
###################################################

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH

ODPSCMD="/home/yunrong.wyr/software/odps/bin/odpscmd --config=/home/yunrong.wyr/software/odps/conf/odps_config.ini"

IO=$1
claxx=$2
style=$3

if [ "$IO" == "-d" ] || [ "$IO" == "d" ]; then
    echo "下载: wyr_log_analysis_${claxx}_query_${style}_top1000"
    #从odps上下载数据
    $ODPSCMD -e "tunnel d aliyun_searchlog.wyr_log_analysis_${claxx}_query_${style}_top1000 /home/yunrong.wyr/software/odps/wyr_log_analysis_${claxx}_query_${style}_top1000"
    #筛选出第一列的单词
    cat /home/yunrong.wyr/software/odps/wyr_log_analysis_${claxx}_query_${style}_top1000 | awk 'BEGIN  {FS=","} NR<=200 {print $1}' >> /home/yunrong.wyr/software/odps/wyr_log_analysis_${claxx}_query_${style}_top200

elif [ "$IO" == "-u" ] || [ "$IO" == "u" ]; then
    echo "上传: wyr_log_analysis_${claxx}_query_${style}_top100"
    #往odps上上传
    $ODPSCMD -e "tunnel u /home/yunrong.wyr/software/odps/wyr_log_analysis_${claxx}_query_${style}_top100 aliyun_searchlog.wyr_log_analysis_${claxx}_query_${style}_top100"
else
    echo "usage : <[-]u | [-]d> claxx style"
fi
