#########################################################################
# File Name: s41_mysqlalive.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月02日 星期四 15时18分31秒
#########################################################################
#!/bin/bash

# 检测 MySQL 服务是否存活

# host 为你需要检测的 MySQL 主机的 IP 地址,user 为 MySQL 账户名,passwd 为密码

# 这些信息需要根据实际情况修改后方可使用

host=192.168.51.198

user=root

passwd=123456

mysqladmin -h"$host" -u"$user" -p"$passwd" ping &>/dev/null

if [ $? -eq 0 ]
	
then
	
	echo "MySQL is UP"
	
else
	
	echo "MySQL is down"
	
fi

# 1,localhost 127.0.0.1
# 2,-h -u -p 后紧贴主机、用户、密码 不可以有空格
# 3,变量名用 "" 不可以''
