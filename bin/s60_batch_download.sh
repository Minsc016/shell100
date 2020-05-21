#########################################################################
# File Name: s60_batch_download.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月18日 星期一 19时01分39秒
#########################################################################
#!/bin/bash

# 批量下载有序文件(pdf、图片、视频等等)

# 本脚本准备有序的网络资料进行批量下载操作(如 01.jpg,02.jpg,03.jpg)

# 设置资源来源的域名连接

url="百度一下，你就知道"

echo "开始下载..."

sleep 2

type=jpg

for i in `seq 100`
do
	
	echo "正在下载$i.$type"
	
	curl $url/$i.$type -o /tmp/${i}$type
	
	sleep 1
	
done
#curl 使用-o 选项指定下载文件另存到哪里.
