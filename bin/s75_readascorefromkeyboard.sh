#########################################################################
# File Name: s75_readascorefromkeyboard.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: Wed May 20 23:20:59 2020
#########################################################################
#!/bin/bash

# 从键盘读取一个论坛积分,判断论坛用户等级
#等级分类如下:
# 大于等于 90 神功绝世
# 大于等于 80,小于 90 登峰造极
# 大于等于 70,小于 80 炉火纯青
# 大于等于 60,小于 70 略有小成
# 小于 60 初学乍练
read -p "请输入积分(0‐100):" JF
if [ $JF -ge 90 ] ; then
	echo "$JF 分,神功绝世"
elif [ $JF -ge 80 ] ; then
	echo "$JF 分,登峰造极"
elif [ $JF -ge 70 ] ; then
	echo "$JF 分,炉火纯青"
elif [ $JF -lt 60 ] ; then
	echo "$JF 分,略有小成"
else
	echo "$JF 分,初学乍练"
fi
# 也可以用case写,不过
# 要写成 100|9[0-9])
# 这样的形式>
