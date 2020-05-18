#########################################################################
# File Name: s13_testnet_while.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月26日 星期四 16时59分07秒
#########################################################################
#!/bin/bash

# 编写脚本测试 192.168.4.0/24 整个网段中哪些主机处于开机状态,哪些主机处于关机状态(while 版本)

i=1
while [ $i -le 254 ]
do
	ping -c2 -i0.3 -W1 192.168.4.$i &>/dev/null
	if [ $? -eq 0 ];then
		echo "192.168.4.$i is up"
	else 
		echo "192.168.4.$i is down"
	fi

let i++

done
