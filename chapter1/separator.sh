#!/bin/bash

# separator.sh
# 分隔符变量 $IFS 用法

line="huaz:x:500:500::/home/huaz:/bin/zsh"
oldIFS=$IFS;
IFS=":"

count=0
for item in $line;
do
    [ $count -eq 0 ] && user=$item;
    [ $count -eq 6 ] && shell=$item;
    let count++
done;

IFS=$oldIFS
echo $user\'s shell is $shell.
