#########################################################################
# File Name: s69_pythonautofuu.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: Wed May 20 21:21:07 2020
#########################################################################
#!/bin/bash
# 设置 Python 支持自动命令补齐功能
# Summary:Enable tab complete for python
# Description:
#Needs import readline and rlcompleter module
#
#import readline
#
#import rlcompleter
#
#help(rlcompleter) display detail: readline.parse_and_bind('tab: complete')
#
#man python display detail: PYTHONSTARTUP variable
if [ ! -f /usr/bin/tab.py ];then
	cat >> /usr/bin/tab.py <<EOF
	import readline
	import rlcompleter
	readline.parse_and_bind('tab: complete')
EOF
fi
sed -i '$a export PYTHONSTARTUP=/usr/bin/tab.py' /etc/profile
source /etc/profile
