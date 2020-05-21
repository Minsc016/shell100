#########################################################################
# File Name: s64_int_LAMP.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月20日 星期三 15时51分17秒
#########################################################################
#!/bin/bash

# 安装 LAMP 环境(yum 版本)

# 本脚本适用于 RHEL7(RHEL6 中数据库为 mysql)

yum makecache &>/dev/null

num=$(yum repolist | awk '/repolist/{print $2}' | sed 's/,//')

if [ $num -lt 0 ];then
	
	yum -y install httpd
	
	yum -y install mariadb mariadb-server mariadb-devel
	
	yum -y install php php-mysql
	
else
	
	echo "未配置 yum 源..."
	
fi
