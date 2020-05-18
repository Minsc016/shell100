#########################################################################
# File Name: s30_requesttimes.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月30日 星期一 16时24分46秒
#########################################################################
#!/bin/bash

# 统计每个远程 IP 访问了本机 apache 几次?

awk '{ip[$1]++}END{for(i in ip){print ip[i],i}}' /var/log/httpd/access_log'
