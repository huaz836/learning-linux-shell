#!/bin/bash
# rename.sh
# 重命名.jpg .png文件

count=1;
for img in *.jpg *.png
do
    new=image-$count.${img##*.}
    mv "$img" "$new" 2> /dev/nul
    if [ $? -eq 0 ];
    then
        echo "Renaming $img to $new"
        let count++
    fi
done
