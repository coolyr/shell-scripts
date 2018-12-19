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
scTYPE=$4
echo "$IO - $claxx - $style - $scTYPE"

if [ "$IO" == "-s" ] || [ "$IO" == "s" ]; then
    echo "下载: wyr_log_analysis_${claxx}_${style}_session_acticity_rdd"
    $ODPSCMD -e "tunnel d aliyun_searchlog.wyr_log_analysis_${claxx}_${style}_session_acticity_rdd /home/yunrong.wyr/software/odps/wyr_log_analysis_${claxx}_${style}_session_acticity_rdd"
elif [ "$IO" == "-c" ] || [ "$IO" == "c" ]; then
    echo "下载: wyr_log_analysis_${claxx}_${style}_query_collinear_query_title_url_1m"
    $ODPSCMD -e "tunnel d aliyun_searchlog.wyr_log_analysis_${claxx}_${style}_query_collinear_query_title_url_1m /home/yunrong.wyr/software/odps/wyr_log_analysis_${claxx}_${style}_query_collinear_query_title_url_1m"
elif [ "$IO" == "-j" ] || [ "$IO" == "j" ]; then
    echo "下载：wyr_log_analysis_${claxx}_query_${style}_count_${scTYPE}_filter_url_title_count_1m"
    $ODPSCMD -e "tunnel d aliyun_searchlog.wyr_log_analysis_${claxx}_query_${style}_count_${scTYPE}_filter_url_title_count_1m /home/yunrong.wyr/software/odps/wyr_log_analysis_${claxx}_query_${style}_count_${scTYPE}_filter_url_title_count_1m"
else
    echo "usage : <[-]c | [-]s | [-]j> claxx style"
fi
