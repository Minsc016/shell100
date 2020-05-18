#########################################################################
# File Name: s57_testusrid.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月17日 星期日 11时22分30秒
#########################################################################
#!/bin/bash

# 测试用户名与密码是否正确

#用户名为 tom 并且密码为 123456,则提示登录成功,否则提示登录失败

read -p "请输入用户名:" user

read -p "请输入密码:" pass

if [ "$user" == 'tom' -a "$pass" == '123456' ];then
	
	echo "Login successful"
	
else
	
	echo "Login Failed"
	
fi
