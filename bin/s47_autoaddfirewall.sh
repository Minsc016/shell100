#########################################################################
# File Name: s47_autoaddfirewall.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年04月08日 星期三 11时35分39秒
#########################################################################
#!/bin/bash

# 动添加防火墙规则,开启某些服务或端口(适用于 RHEL7)

#

# 设置变量定义需要添加到防火墙规则的服务和端口号

# 使用 firewall‐cmd ‐‐get‐services 可以查看 firewall 支持哪些服务

service="nfs http ssh"

port="80 22 8080"

# 循环将每个服务添加到防火墙规则中

for i in $service
	
do
	
	echo "Adding $i service to firewall"
	
	firewall‐cmd --add-service=${i}
	
done

#循环将每个端口添加到防火墙规则中

for i in $port
	
do
	
	echo "Adding $i Port to firewall"
	
	firewall‐cmd --add-port=${i}/tcp
	
done

#将以上设置的临时防火墙规则,转换为永久有效的规则(确保重启后有效)

firewall‐cmd --runtime-to-permanent

