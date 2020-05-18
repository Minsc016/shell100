#########################################################################
# File Name: s18_dateeth0.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月27日 星期五 11时21分50秒
#########################################################################
#!/bin/bash

# 用死循环实时显示 eth0 网卡发送的数据包流量
[ $# -ne 1 ] && echo usage:'`basename $0' netword_card && exit 1
while :
do
	echo '本地网卡 $1 流量信息如下'
	ifconfig $1 | grep 'RX pack' | awk '{print $5}'
	ifconfig $1 | grep 'TX pack' | awk '{print $5}'
	sleep 1
done
