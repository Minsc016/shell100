#########################################################################
# File Name: s100_awk_wcprog.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月22日 星期五 16时07分59秒
#########################################################################
#!/bin/bash

# 用awk编写的wc程序

# 自定义变量 chars 变量存储字符个数,自定义变量 words 变量存储单词个数

# awk 内置变量 NR 存储行数

# length()为 awk 内置函数,用来统计每行的字符数量,因为每行都会有一个隐藏的$,所以每次统计后都+1

# wc 程序会把文件结尾符$也统计在内,可以使用 cat ‐A 文件名,查看该隐藏字符

[ $# -ne 1 ] && echo "需要输入一个参数"
awk '{chars+=length($0)+1;words+=NF} END{print "行数:"NR,"单词数:"words,"字符数:"chars}' $1
