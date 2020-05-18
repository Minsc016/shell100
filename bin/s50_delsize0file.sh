#########################################################################
# File Name: s50_delsize0file.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月26日 星期日 21时12分35秒
#########################################################################
#!/bin/bash

# 删除某个目录下大小为 0 的文件
# ~shell100/var/ 为测试目录

# 我的写法: ls -l | awk '$5==0 {print $9}' | xargs rm -rf
# 答案写法：
dir=~/shell100/var
find $dir -type f -size 0 -exec rm -rf {} \;
