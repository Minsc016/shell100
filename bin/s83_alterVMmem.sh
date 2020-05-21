#########################################################################
# File Name: s83_alterVMmem.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月21日 星期四 14时30分20秒
#########################################################################
#!/bin/bash

# 调整虚拟机内存参数的 shell 脚本

# 脚本通过调用 virsh 命令实现对虚拟机的管理,如果没有该命令,需要安装 libvirt‐client 软件包

cat << EOF

1.调整虚拟机最大内存数值

2.调整实际分配给虚拟机的内存数值

EOF

read -p "请选择[1‐2]:" select

case $select in
	
	1)
		
		read -p "请输入虚拟机名称" name
		
		read -p "请输入最大内存数值(单位:k):" size
		
		virsh setmaxmem $name --size $size --config
		
		;;
		
	2)
		
		read -p "请输入虚拟机名称" name
		
		read -p "请输入实际分配内存数值(单位:k):" size
		
		virsh setmem $name $size
		
		;;
		
	*)
		
		echo "Error"
		
		;;
		
esac
