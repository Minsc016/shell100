#########################################################################
# File Name: t.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月22日 星期五 11时41分13秒
#########################################################################
#!/bin/bash

# 测试 判断 文件/目录是否存在
[ $# -ne 1 ] && echo "`basename $0` [文件名|目录]" && exit 1

[ -f $1 ] && echo "该文件存在" && ls -l $1 || echo "该文件不存在"
[ -d $1 ] && echo "该目录存在" && ls -l $1 || echo "该目录不存在"
