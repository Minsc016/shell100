#########################################################################
# File Name: s33_autoaddinterpreterinfo.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月31日 星期二 17时07分33秒
#########################################################################
#!/bin/bash

# 自动为其他脚本添加解释器信息#!/bin/bash,如脚本名为 test.sh 则效果如下:
# ./test.sh abc.sh	自动为 abc.sh 添加解释器信息

# ./test.sh user.sh	自动为 user.sh 添加解释器信息

# 先使用 grep 判断对象脚本是否已经有解释器信息,如果没有则使用 sed 添加解释器以及描述信息
[ $# -ne 1 ] && echo "usage:`basename $0` 脚本名" && exit 1
if ! grep -q "^#!" $1; then
	
	sed -i '1i #!/bin/bash' $1
	
	sed -i '2i #Description: ' $1
	# 因为每个脚本的功能不同,作用不同,所以在给对象脚本添加完解释器信息,以及 Description 后还希望

	# 继续编辑具体的脚本功能的描述信息,这里直接使用 vim 把对象脚本打开,并且光标跳转到该文件的第 2 行

	vi +2 $1
	
else
	echo "已有无需添加解释器"
fi
