---
description: 基本知识：shell13问
---

# SHELL

```text
bash test.sh       # ./test.sh     # 新开一个shell
source test.sh     # . test.sh

# 重定向错误输出
type shit >/dev/null 2>&1 &&(echo "obase=16;ibase=10;65535"| bc -l)
echo "obase=16;ibase=10;32767"|bc -l        ##0x7FFF

##产生随机数
for i in $(seq 1 10);do echo $i $(($RANDOM/8192+3)) $(($RANDOM/10+3000));done

## 求平均数 ./test.sh data
[ $# -lt 1 ] && echo "paramter error" && exit -1
[ ! -f $1 ] $$ echo "$1 is not a file" && exit -1
awk '{printf("%d %0.2f\n",$1,$3/$2)}' $1|sort -k 2 -nr

## while的使用
while :; do type $1; [ $? -eq 0 ] && break; done

## seq使用
seq -s: -w 1 2 14
seq -f "0x%g" 1 12

## 统计网页中重复单词出现的次数
wget -c "www.baidu.com" 
sed "s/[^a-zA-Z]/\n/g" index.html | grep -v ^$ |sort |uniq -c |sort -k 1 -rn | head -5

## 统计指定单词出现的次数
if [ $# -lt 1 ] ; then echo "Usage: basename %0 FILE WORDS ......" ; exit -1 ; fi
FILE=$1
((WORDS_NUM=$#-1))

do
    shift
    sed -e "s/[^a-zA-Z]/\n/g" $FILE | grep -v ^$ |sort|grep ^$1$ | uniq -c
done

## 一条命令的版本 , 可将 grep -e 替换成 egrep
sed -e "s/[^a-zA-Z]/\n/g" index.html | grep -v ^$ | sort | grep -E "^name$|^another_name$" | uniq -c
```



