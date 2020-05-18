#########################################################################
# File Name: s20_batextname.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月30日 星期一 09时08分14秒
#########################################################################
#!/bin/bash

# 编写批量修改扩展名脚本
#  编写批量修改扩展名脚本,如批量将 txt 文件修改为 doc 文件

# 执行脚本时,需要给脚本添加位置参数

# 脚本名 txt doc(可以将 txt 的扩展名修改为 doc)

# 脚本名 doc jpg(可以将 doc 的扩展名修改为 jpg)
[ $# -ne 2 ] && echo "usage:`basename $0` old_extenedname new_extenedname" && exit 1
for i in `ls *.$1`
do
	mv $i ${i%.*}.$2
done
