#########################################################################
# File Name: s70_autoeditplanconf.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: Wed May 20 21:37:41 2020
#########################################################################
#!/bin/bash

# # 自动修改计划任务配置文件

read -p "请输入分钟信息(00‐59):" min

read -p "请输入小时信息(00‐24):" hour

read -p "请输入日期信息(01‐31):" date

read -p "请输入月份信息(01‐12):" month

read -p "请输入星期信息(00‐06):" weak

read -p "请输入计划任务需要执行的命令或脚本:" program

echo "$min $hour $date $month $weak $program" >> /etc/crontab
