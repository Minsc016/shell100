#########################################################################
# File Name: s21_expectromote.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月30日 星期一 09时38分05秒
#########################################################################
#!/bin/bash

# 使用 expect 工具自动交互密码远程其他主机安装 httpd 软件
rm -rf ~/.ssh/known_hosts
expect <<EOF
spawn ssh 192.168.4.254
expect "yes/no"{send "yes\r"}

# 根据自己的实际情况将密码修改为真实的密码字串
expect "password"{send "密码\r"}
expect "#"{send "sudo apt-get install httpd\r"}
expect "#"{send "exit\r"}
EOF

