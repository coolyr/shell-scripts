#!/bin/bash

# Program:
#        使用grep 检测 WWW，SSH，FTP，MAIL 服务      

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/coolwyr/bin
export PATH

echo "Now I will detect your Linux Server's service."
echo -e "the www, ftp, ssh, and mail will be detect! \n"

testing=$( netstat -tuln | grep ":80" )
if [ "$testing" != "" ]; then
    echo "WWWW is running in your system."
fi

testing=$( netstat -tuln | grep ":22")
if [ "$testing" != "" ]; then
    echo "SSH is running in your system."
fi

testing=$( netstat -tuln | grep ":21")
if [ "$testing" != "" ]; then
    echo "FTP is running in your system."
fi

testing=$(netstat -tuln | grep ":25")
if [ "$testing" != "" ]; then
    echo "Mail is running in your system."
fi

