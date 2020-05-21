#########################################################################
# File Name: s66_getlocalMAC.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年05月20日 星期三 16时00分15秒
#########################################################################
#!/bin/bash

# 获取本机 MAC 地址

ip a s | awk 'BEGIN{print "本机mac地址信息如下:"}/^[0-9]/{print $2;getline;if($0~/link\/ether/){print $2}}' | grep -v lo

# awk 读取 ip 命令的输出,输出结果中如果有以数字开始的行,先显示该行的地 2 列(网卡名称),

# 接着使用 getline 再读取它的下一行数据,判断是否包含 link/ether

# 如果保护该关键词,就显示该行的第 2 列(MAC 地址)

# lo 回环设备没有 MAC,因此将其屏蔽,不显示
