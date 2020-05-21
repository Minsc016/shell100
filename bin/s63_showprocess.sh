#########################################################################
# File Name: s63_showprocess.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月18日 星期一 19时48分47秒
#########################################################################
#!/bin/bash
# 显示进度条(回旋镖版)
while :
do
	clear
	for i in {1..20}
	do
		echo -e "\033[3;${i}H*"
		sleep 0.1
	done
	clear
	for i in {20..1}
	do
		echo -e "\033[3;${i}H*"
		sleep 0.1
	done
	clear
done
# \033[y;xH设置光标位置
