#########################################################################
# File Name: s79_judgeyn.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月21日 星期四 11时42分13秒
#########################################################################
#!/bin/bash

# 断用户输入的是 Yes 或 NO

read -p "Are you sure?[y/n]:" sure

case $sure in
	
	y|Y|Yes|YES)
		
		echo "you enter $a"
		
		;;
		
	n|N|NO|no)
		
		echo "you enter $a"
		
		;;
		
	*)
		
		echo "error";;
		
esac
