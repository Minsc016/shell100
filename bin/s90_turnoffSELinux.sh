#########################################################################
# File Name: s90_turnoffSELinux.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月21日 星期四 15时19分27秒
#########################################################################
#!/bin/bash

# 关闭 SELinux

sed -i '/^SELINUX/s/=.*/=disabled/' /etc/selinux/config

setenforce 0
