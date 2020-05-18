#########################################################################
# File Name: s16_showProcessBar_active.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月26日 星期四 17时34分56秒
#########################################################################
#!/bin/bash

# 进度条,动态时针版本；定义一个显示进度的函数,屏幕快速显示| / ‐ \

# 进度条,动态时针版本

# 定义一个显示进度的函数,屏幕快速显示| / ‐ \

rotate_line(){
	INTERVAL=0.5 #设置间隔时间
	COUNT="0" # 设置4个形状的编号，默认编号为0（不代表任何图像）
	while :
	do
		COUNT=`expr $COUNT + 1` # 执行循环，COUNT 每次循环+1，（分别代表4种不同的情况)
		case $COUNT in #判断 COUNT 的值
			"1") #值为1显示
				echo -e '-'"\b\c"
				sleep $INTERVAL
				;;
			"2") # 值为2显示\\,第一个\是转义
				echo -e '\\'"\b\c"
				sleep $INTERVAL
				;;
			"3") #值为3时显示|
				echo -e "|\b\c"
				sleep $INTERVAL
				;;
			"4") #值为4显示/
				echo -e "/\b\c"
				sleep $INTERVAL
				;;
			*) # 其他 值，将COUNT 重置为 0
				COUNT="0";;
		esac
	done
}
rotate_line
