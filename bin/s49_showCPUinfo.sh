#########################################################################
# File Name: s49_showCPUinfo.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月08日 星期三 14时38分20秒
#########################################################################
#!/bin/bash

# 显示 CPU 厂商信息

awk '/vendor_id/{print $3}' /proc/cpuinfo | uniq
