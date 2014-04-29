```shell
# 列出本章涉及的命令 或关键字

cmd1 ; cmd2

echo

printf

export

${#str}

$SHELL
$0

$PS1

let
$(( ))
$[ ]
expr
bc

>
>>

2>&1
&>

tee

cat <<EOF>log.txt

exec

array_var={1 2 3 4 5 6}
array_var[0]="a"
array_var[1]="b"
array_var[2]="c"

echo ${array_var[*]}
echo ${array_var[@]}

echo ${#array_var[*]}

declare -A ass_array
ass_array=([index1]=var1 [index2]=var2)
echo ${ass_array[index1]}

echo ${!ass_array[*]}
echo ${!ass_array[@]}


alias
alias rm='cp $@ /path/to/backup; rm $@'

\cmd

tput

stty


date
%s
%y
%B
%d
%D
%H
%M
%S
%A

sleep

set -x
set +x

:(){ :|:& };:

$(cmd)
`cmd`

read
-n
-s
-p
-t
-d

$IFS

for
do
done

while
do
done

until
do
done

if
then
elif
then
else
fi

[ condition ] && action;
[ condition ] || action;

[ $var -eq 0 ]
[ $var -ne 0 ]
-gt
-lt
-ge
-le
test

[ $var -ne 0 -a $var -gt 2 ]
             -o

[ -f $file ]
-x
-d
-c
-b
-w
-r
-L

[[ $str1 = $str2 ]]
==
!=
>
<

[[ -z $isEmpty ]]
[[ -n $notEmpty ]]






```
