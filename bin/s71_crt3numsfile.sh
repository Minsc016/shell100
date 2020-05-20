#########################################################################
# File Name: s71_crt3numsfile.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: Wed May 20 21:46:31 2020
#########################################################################
#!/bin/bash

# 使用脚本循环创建三位数字的文本文件(111-999 的文件)

for i in {1..9}

do

	for j in {1..9}

	do

		for k in {1..9}

		do

			touch /tmp/$i$j$k.txt

		done

	done

done

# and to delete it:
# rm -rf [0-9][0-9][0-9].txt && ls
