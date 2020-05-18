#########################################################################
# File Name: s32_fileNname.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月31日 星期二 16时56分09秒
#########################################################################
#!/bin/bash

# 统计/var/log 有多少个文件,并显示这些文件名
# 统计/var/log 有多少个文件,并显示这些文件名

# 使用 ls 递归显示所有,再判断是否为文件,如果是文件则计数器加 1

cd /var/log
sum=0

for i in `ls -r *`
do
	if [ -f $i ];then
		let sum++
		echo "文件名:$i"
	fi
done
echo "总文件数量为:$sum"
