#########################################################################
# File Name: s72_findud.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: Wed May 20 21:56:51 2020
#########################################################################
#!/bin/bash
# 找出/etc/passwd 中能登录的用户,并将对应在/etc/shadow 中第二列密码提出处理
user=$(awk -F: '/bash$/{print $1}' /etc/passwd)
for i in $user
do
	awk -F: -v x=$i '$1==x{print $1,$2}' /etc/shadow
done
