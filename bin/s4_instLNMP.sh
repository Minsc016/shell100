#########################################################################
# File Name: s4.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2019年10月17日 星期四 15时07分29秒
#########################################################################
#!/bin/bash

sudo apt-get install httpd
sudo apt-get install mariadb mariadb-devel mariadb-server

sudo apt-get install php php-mysql

systemctl start httpd mariadb
systemctl enable httpd mariadb
