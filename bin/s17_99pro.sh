#########################################################################
# File Name: s17_99pro.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月27日 星期五 10时56分38秒
#########################################################################
#!/bin/bash

# # 9*9 乘法表(编写 shell 脚本,打印 9*9 乘法表)

for i in `seq 9`
do
	for j in `seq $i`
	do
		echo -n "$i * $j = $[$i*$j] "
	done
	echo 
done
