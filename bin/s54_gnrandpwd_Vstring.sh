#########################################################################
# File Name: s54_gnrandpwd_Vstring.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月17日 星期日 11时10分49秒
#########################################################################
#!/bin/bash

# 生成随机密码(字串截取版本)

# 设置变量 key,存储密码的所有可能性(密码库),如果还需要其他字符请自行添加其他密码字符

# 使用$#统计密码库的长度

key="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

num=${#key}

# 设置初始密码为空

pass=''

# 循环 8 次,生成随机密码

# 每次都是随机数对密码库的长度取余,确保提取的密码字符不超过密码库的长度

# 每次循环提取一位随机密码,并将该随机密码追加到 pass 变量的最后

for i in {1..8}
	
do
	
	index=$[RANDOM%num]
	
	pass=$pass${key:$index:1}
	
done

echo $pass
