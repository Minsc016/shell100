#########################################################################
# File Name: s45_chkinstall.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月02日 星期四 15时56分10秒
#########################################################################
#!/bin/bash

# 检查特定的软件包是否已经安装
[ $# -eq 0 ] && echo "你需要指定一个软件包名称作为脚本参数" && echo "userge:`basename 0` 软件名" && exit 1

for package in "$@"
do
	if rpm -q ${package} &>/dev/null ;then
		echo -e "${package}\033[32m 已经安装\033[0m"
		
	else
		
		echo -e "${package}\033[34;1m 未安装\033[0m"
		
	fi
	
done
# 实际测试什么都未安装？？？？
