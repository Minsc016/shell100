#########################################################################
# File Name: s68_altermaxfiles.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: Wed May 20 21:18:56 2020
#########################################################################
#!/bin/bash

# 修改 Linux 系统的最大打开文件数量

# 往/etc/security/limits.conf 文件的末尾追加两行配置参数,修改最大打开文件数量为 65536

cat >> /etc/security/limits.conf <<EOF

* soft nofile 65536

* hard nofile 65536

EOF
