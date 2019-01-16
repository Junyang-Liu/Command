#!/bin/sh

# 打包 dirname > tarname.tar
tar -zcvf tarname.tar --exclude=dirname/log dirname

# 提取要的行 
sed -n "2,10"p test.txt 

# 搜索替换行
sed -i "s/string/替换了/" test.txt