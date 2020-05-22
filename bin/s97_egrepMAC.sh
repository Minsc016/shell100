#########################################################################
# File Name: s97_egrepMAC.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月22日 星期五 15时27分20秒
#########################################################################
#!/bin/bash

# 使用 egrep 过滤 MAC 地址

# MAC 地址由 16 进制组成,如 AA:BB:CC:DD:EE:FF

# [0‐9a‐fA‐F]{2}表示一段十六进制数值,{5}表示连续出现5组前置:的十六进制

if [ $# -ne 1 ] && echo "`basename $0` filename" && exit 1

egrep "[0-9a-fA-F]{2}(:[0-9a-fA-F]{2}){5}" $1
