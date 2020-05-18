#########################################################################
# File Name: s10_asc3nums.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月26日 星期四 15时10分22秒
#########################################################################
#!/bin/bash

# 入三个数并进行升序排序
# 依次提示用户输入 3 个整数,脚本根据数字大小依次排序输出 3 个数字

read -p "请输入第一个数字:" num1
read -p "请输入第二个数字:" num2
read -p "请输入第三个数字:" num3

# 不管谁大谁小,最后都打印 echo "$num1,$num2,$num3"

# num1 中永远存最小的值,num2 中永远存中间值,num3 永远存最大值

# 如果输入的不是这样的顺序,则改变数的存储顺序,如:可以将 num1 和 num2 的值对调

tmp=0
# 如果 num1 大于 num2,就把 num1 和和 num2 的值对调,确保 num1 变量中存的是最小值
if [ $num1 -gt $num2 ];then
	tmp=$num1
	num1=$num2
	num2=$tmp
fi

# 如果 num1 大于 num3,就把 num1 和 num3 对调,确保 num1 变量中存的是最小值
if [ $num1 -gt $num3 ];then
	tmp=$num1
	num1=$num3
	num3=$tmp
fi
# 如果 num2 大于 num3,就把 num2 和 num3 对标,确保 num2 变量中存的是小一点的值
if [ $num2 -gt $num3 ];then

	tmp=$num2

	num2=$num3

	num3=$tmp
fi
echo $num1 $num2 $num3
