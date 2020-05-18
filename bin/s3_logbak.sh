#########################################################################
# File Name: s3.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2019年10月17日 星期四 14时45分32秒
#########################################################################
#!/bin/bash

# back_up /var/log/ files  with tar command

tar -czf log-`date +%Y%m%d`.tar.gz /var/log
# tar -cpvf -->*.tar path
# tar -xvf *.tar ##unpress#
