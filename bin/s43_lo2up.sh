#########################################################################
# File Name: s43_lo2up.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月02日 星期四 15时43分40秒
#########################################################################
#!/bin/bash

# 将文件中所有的小写字母转换为大写字母

# $1是位置参数,是你需要转换大小写字母的文件名称

# 执行脚本,给定一个文件名作为参数,脚本就会将该文件中所有的小写字母转换为大写字母
[ $# -ne 1 ] && exho "usage:`basename $0` 文件名" && exit 1

tr "[a-z]" "[A-Z]" < $1  
