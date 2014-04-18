#!/bin/bash

# debug2.sh
# 使用 _DEBUG=on ./debug2.sh 命令开启调试

function DEBUG()
{
    [ "$_DEBUG" == "on" ] && $@ || :
}

for i in {1..5}
do
    DEBUG echo $i
done
