#########################################################################
# File Name: s44_sshkeygeneration.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月02日 星期四 15时52分39秒
#########################################################################
#!/bin/bash

# 非交互自动生成 SSH 密钥文件

# ‐t 指定 SSH 密钥的算法为 RSA 算法;‐N 设置密钥的密码为空;‐f 指定生成的密钥文件>存放在哪里

rm -rf ~/.ssh/{known_hosts,id_rsa*}

ssh‐keygen -t RSA -N '' -f ~/.ssh/id_rsa
