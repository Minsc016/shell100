#########################################################################
# File Name: s15_showProcessBar.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月26日 星期四 17时11分09秒
#########################################################################
#!/bin/bash

# 编写脚本,显示进度条
jindu()
{
	while :
	do
		echo -n "#"
		sleep 0.2
	done
}
jindu &
#cp -a $1 $2
sleep 5
killall $0
echo "done"

#### 问题： ####输出停不下来 ####
