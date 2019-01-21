#!/bin/sh

# 打包 dirname > tarname.tar
tar -zcvf tarname.tar --exclude=dirname/log dirname

# 解压到
tar -xvf tarname.tar -C dirname

# 拷贝文件到远程服务器 登录账户名@地址:目录
scp dirname username@xxx.xxx.xxx.xxx:/home/

# 提取要的行 
sed -n "2,10"p test.txt 

# 搜索替换行
sed -i "s/string/替换了/" test.txt

# 删除含有string的行 并在文档末尾加一行“删掉了含有string的行”
sed -i -e "/string/d" -e "/$/a 删掉了含有string的行" test.txt

# 文档追加
echo "string" >> file1
cat file1 >> file2
cat file1 |grep string >> file2
grep string file1 >> file2
# 选出内容覆盖到文档
grep "string" file1 > file2
