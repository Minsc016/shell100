#########################################################################
# File Name: s89_VNC.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月21日 星期四 15时09分07秒
#########################################################################
#!/bin/bash

# 一键配置 VNC 远程桌面服务器(无密码版本)

# 脚本配置的 VNC 服务器,客户端无需密码即可连接

# 客户端仅有查看远程桌面的权限,没有鼠标和键盘的操作权限

rpm --quiet -q tigervnc‐server

if [ $? -ne 0 ];then

	yum -y tigervnc‐server

fi

x0vncserver AcceptKeyEvents=0 AlwaysShared=1 \

AcceptPointerEvents=0 SecurityTypes=None rfbport=5908
