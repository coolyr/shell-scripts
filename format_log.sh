#!/bin/bash

###################################################
# Author: coolyr
# Mail: yunrong@pku.edu.cn
# Description:
###################################################

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH

log=$1
claxx=$2
style=$3
scTYPE=$4

if [ "$log" == "-c" ] || [ "$log" == "c" ]; then
    echo "collinear格式化：${claxx}  ${style}"
    python2.7 /home/yunrong.wyr/projects/clickLog/wyr_log_analysis_query_collinear_format.py ${claxx} ${style}
elif [ "$log" == "-s" ] || [ "$log" == "-s" ]; then
    echo "session格式化:  ${claxx}  ${style}"
    python2.7 /home/yunrong.wyr/projects/clickLog/wyr_log_analysis_session_acticity_format.py ${claxx} ${style}
elif [ "$log" == "-j" ] || [ "$log" == "j" ]; then
    echo "scTYPE格式化：${claxx} ${style} ${scTYPE}"
    python2.7 /home/yunrong.wyr/projects/clickLog/wyr_log_analysis_scTYPE_format.py ${claxx} ${style} ${scTYPE}
elif [ "$log" == "-h" ] || [ "$log" == "h" ]; then
    echo "host格式化：${claxx} ${style} ${scTYPE}"
    python2.7 /home/yunrong.wyr/projects/clickLog/wyr_log_analysis_scTYPE_host_format.py ${claxx} ${style} ${scTYPE}
else
    echo "usage : <[-]c | [-]s | [-]j | [-]h> claxx style [scTYPE]"
fi
