#########################################################################
# File Name: s88_memcached.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月21日 星期四 15时08分28秒
#########################################################################
#!/bin/bash

# 一键部署 memcached

# 脚本用源码来安装 memcached 服务器

# 注意:如果软件的下载链接过期了,请更新 memcached 的下载链接

wget http://www.memcached.org/files/memcached-1.5.1.tar.gz

yum -y install gcc

tar -xf memcached‐1.5.1.tar.gz

cd memcached‐1.5.1

./configure

make

make install
