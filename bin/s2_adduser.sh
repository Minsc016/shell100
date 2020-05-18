#########################################################################
# File Name: s2.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2019年10月17日 星期四 11时41分15秒
#########################################################################
#!/bin/bash
# create user and password for linux 
# throuth location variables

echo "please input username;"
# read U
# useradd $U
U=test
echo "please input password:"
stty -echo
read P
stty echo
echo "#P" | passwd --stdin "$U"
# NOTICE: ubuntu(debian) does not support --stdin parameters


# stty -echo  : turn off the echo 
# so does read -s for bash
# read -p "help-info" varibales

