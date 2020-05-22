#########################################################################
# File Name: s99_generateSIGNPASSWD.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月22日 星期五 16时00分50秒
#########################################################################
#!/bin/bash
# 生成签名私钥和证书

read -p "请输入存放证书的目录:" dir

if [ ! -d $dir ];then
	echo "该目录不存在"
	exit
fi
# [ -d $idr ] || mkdir $dir

read -p "请输入密钥名称:" name

# 使用 openssl 生成私钥
openssl genrsa -out ${dir}/${name}.key

# 使用 openssl 生成证书 #subj 选项可以在生成证书时,非交互自动填写 Common Name 信息
openssl req -new -x509 -key ${dir}/${name}.key -subj "/CN=common" -out ${dir}/${name}.crt
