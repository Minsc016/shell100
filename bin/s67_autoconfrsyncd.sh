#########################################################################
# File Name: s67_autoconfrsyncd.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: Wed May 20 21:16:53 2020
#########################################################################
#!/bin/bash

# 自动配置 rsynd 服务器的配置文件 rsyncd.conf

# See rsyncd.conf man page for more options.

[ ! -d /home/ftp ] && mkdir /home/ftp

echo 'uid = nobody

gid = nobody

use chroot = yes

max connections = 4

pid file = /var/run/rsyncd.pid

exclude = lost+found/

transfer logging = yes

timeout = 900

ignore nonreadable = yes

dont compress = *.gz *.tgz *.zip *.z *.Z *.rpm *.deb *.bz2

[ftp]

path = /home/ftp

comment = share' > /etc/rsyncd.conf
