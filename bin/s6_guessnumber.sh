#########################################################################
# File Name: s6_guessnumber.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月26日 星期四 14时46分30秒
#########################################################################
#!/bin/bash

# 脚本生成一个 100 以内的随机数,提示用户猜数字,根据用户的输入,提示用户猜对了,

# 猜小了或猜大了,直至用户猜对脚本结束。

# RANDOM 为系统自带的系统变量,值为 0‐32767的随机数

# 使用取余算法将随机数变为1~100的随机数
num=$[RANDOM%100+1]
echo "$num"

# 使用read 提示用户猜数字
# 使用if判断用户猜数字的大小关系，-eq等于,-ne不等于,-gt大于,-lt小于，-ge大于等于，-le小于等于
while :
do
	read -p "计算机生成了一个1~100的随机数，你猜  " cai
	if [ $cai -eq $num ];then
		echo "恭喜，猜对了"
		exit 0
	elif [ $cai -gt $num ];then
		echo "Oops,猜大了"
	elif [ $cai -lt $num ];then
		echo "oops,猜小了"
	fi
done


