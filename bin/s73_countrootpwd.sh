#########################################################################
# File Name: s73_countrootpwd.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: Wed May 20 22:22:20 2020
#########################################################################
#!/bin/bash

# 统计/etc/passwd 中 root 出现的次数

#每读取一行文件内容,即从第 1 列循环到最后 1 列,依次判断是否包含 root 关键词,如果包含则 x++

awk -F: '{i=1;while(i<=NF){if($i~/root/){x++};i++}} END{print "root 出现次数为"x}' /etc/passwd
