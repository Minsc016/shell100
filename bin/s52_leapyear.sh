#########################################################################
# File Name: s52_leapyear.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月26日 星期日 22时50分09秒
#########################################################################
#!/bin/bash

# 提示用户输入年份后判断该年是否为闰年

# 能被4整除并且并不能被100整除的年份是闰年

# 能被400整除的年份也是闰年

read -p "请输入一个年份:" year
# 使用正则测试变量 year 中是否包含大小写字母
if [[ -z "$year" || "$year" =~ [a-Z] ]];then
	echo "年份输入错误"
	exit 1
fi

# 判断是否为闰年
#if [ $[year % 4] -eq 0 ] && [ $[year % 100] -ne 0 ];then
#	echo "$year年是闰年"
#elif [ $[year % 400] -eq 0 ];then
#	echo "$year年是闰年"
#else
#	echo "$year年不是闰年"
#fi

# 判断是否为闰年
#if [ `expr $year % 400` -eq 0 ];then
#	echo "$year 年是闰年"
#elif [[ `expr $year % 4` -eq 0 && `expr $year % 100` -ne 0 ]];then
#	echo "$year 年是闰年"
#else
#	echo "$year 年不是闰年"
#fi

# expr --> $[]
if [ $[year % 100] -eq 0 ];then
	if [ $[year % 400] -eq 0 ];then
		echo "$year 年是闰年"
	else
		echo "$year 年不是闰年"
	fi
elif [ $[year % 4] -eq 0 ];then
	echo "$year 年是闰年"
else
	echo "$year 年不是闰年"
fi


