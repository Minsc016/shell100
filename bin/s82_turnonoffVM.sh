#########################################################################
# File Name: s82_turnonoffVM.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月21日 星期四 14时27分12秒
#########################################################################
#!/bin/bash

# 使用脚本开启关闭虚拟机

# 脚本通过调用virsh命令实现对虚拟机的管理,如果没有该命令,需要安装 libvirt‐client 软件包

# $1是脚本的第1个参数,$2是脚本的第2个参数

# 第1个参数是你希望对虚拟机进行的操作指令,第2个参数是虚拟机名称

case $1 in

	list)

		virsh list --all

		;;

	start)

		virsh start $2

		;;

	stop)

		virsh destroy $2

		;;

	enable)

		virsh autostart $2

		;;

	disable)

		virsh autostart --disable $2

		;;

	*)

		echo "Usage:$0 list"
		
		echo "Usage:$0 [start|stop|enable|disable] VM_name"
		
		cat << EOF
		
		#list 显示虚拟机列表
		
		#start 启动虚拟机
		
		#stop 关闭虚拟机
		
		#enable 设置虚拟机为开机自启
		
		#disable 关闭虚拟机开机自启功能
		
EOF
		
		;;
		
esac
