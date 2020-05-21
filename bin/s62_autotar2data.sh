#########################################################################
# File Name: s62_autotar2data.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月18日 星期一 19时43分53秒
#########################################################################
#!/bin/bash

# 指定目录路径,脚本自动将该目录使用 tar 命令打包备份到/data目录
[ ! -d data ] && mkdir /data
[ -z $1 ] && exit 
if [ -d $1 ];then
	tar -czf /data/$1.-`date +%Y%m%d`.tar.gz $1
else
	echo "该目录不存在"
fi

# 1.检查目录是否存在
# 2.检查需打包的目录是否存在
# 3.tar 
