#########################################################################
# File Name: s5.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2019年10月17日 星期四 15时07分42秒
#########################################################################
#!/bin/bash

# a monitor shows memory-size and hard-disk ,
# make a alart when too low

disk_size=$(df | awk '/\//{print $4}')

mem_size=$(free | awk '/Mem/{print $4}')

while :
do
	# notice that unit is kb
	# if [ $disk_size -le  512000 -a $mem_size -le 1024000 ]
	# -o = or ;-a = and
	if [[$disk_size -le 512000]] || [[$mem_size -le 1024000]]
	then
		mail -s "Warnng " minsc <<EOF
		Insufficient resources
EOF
	fi
done


# awk 可以//匹配
