#########################################################################
# File Name: s48_createloigcdisk.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月08日 星期三 14时28分18秒
#########################################################################
#!/bin/bash

# # 使用脚本自动创建逻辑卷

# 清屏,显示警告信息,创建将磁盘转换为逻辑卷会删除数据

clear

echo -e "\033[32m !!!!!!警告(Warning)!!!!!!\033[0m"

echo

echo "+++++++++++++++++++++++++++++++++++++++++++++++++"

echo "脚本会将整个磁盘转换为 PV,并删除磁盘上所有数据!!!"

echo "This Script will destroy all data on the Disk"

echo "+++++++++++++++++++++++++++++++++++++++++++++++++"

echo

read -p "请问是否继续 y/n?:" sure

# 测试用户输入的是否为 y,如果不是则退出脚本
[ $sure != y ] && exit 1

# 提示用户输入相关参数(磁盘、卷组名称等数据),并测试用户是否输入了这些值,如果没有输入,则脚本退出

read -p "请输入磁盘名称,如/dev/vdb:" disk

[ -z $disk ] && echo "没有输入磁盘名称" && exit

read -p "请输入卷组名称:" vg_name

[ -z $vg_name ] && echo "没有输入卷组名称" && exit

read -p "请输入逻辑卷名称:" lv_name

[ -z $lv_name ] && echo "没有输入逻辑卷名称" && exit

read -p "请输入逻辑卷大小:" lv_size

[ -z $lv_size ] && echo "没有输入逻辑卷大小" && exit

# 使用命令创建逻辑卷

pvcreate $disk

vgcreate $vg_name $disk

lvcreate -L ${lv_size}M -n ${lv_name} ${vg_name}
