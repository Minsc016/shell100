#########################################################################
# File Name: s86_loginVMwithoutpass.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月21日 星期四 14时40分32秒
#########################################################################
#!/bin/bash

# 破解虚拟机密码,无密码登陆虚拟机系统

# 该脚本使用 guestmount 工具,Centos7.2 中安装 libguestfs‐tools‐c 可以获得 guestmount 工具

read -p "请输入虚拟机名称:" name

if virsh domstate $name | grep -q running ;then
	
	echo "破解,需要关闭虚拟机"
	
	virsh destroy $name
	
fi

mountpoint="/media/virtimage"

[ ! -d $mountpoint ] && mkdir $mountpoint

echo "请稍后..."

if mount | grep -q "$mountpoint" ;then
	
	umount $mountpoint
	
fi

guestmount -d $name -i $mountpoint

# 将 passwd 中密码占位符号 x 删除,该账户即可实现无密码登陆系统

sed -i "/^root/s/x//" $mountpoint/etc/passwd
