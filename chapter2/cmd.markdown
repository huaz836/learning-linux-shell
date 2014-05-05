```shell

echo 'some text' | cat - file.txt

cat -s file
cat file | tr -s '\n'


script -t 2> timing.log -a output.session
scriptreplay timing.log output.session


#T1
mkfifo scriptfifo

#T2
cat scriptfifo

#T1
script -f scriptfifo
cmd
.
.


find . -name "*.txt" -print
find . \( -name "*.txt" -o -iname "*.PDF" \)

find ~/ -path "*xxx"
find ~/ -regex ".*\(\.py\|\.sh\)$" 
find ~/ -iregex ".*\(\.py\|\.sh\)$" 

find . ! -name "*.txt"

find . -maxdepth 2 -type f 
find . -mindepth 2 -type f

find . -type d
f
l
c
b
s
p

find . -type f -atime -7
find . -type f -atime 7
find . -type f -atime +7
-atime
-mtime
-ctime

-amin
-mmin
-cmin

find . -type f -newer file.txt

find . -type f -size +2k
find . -type f -size 2k
find . -type f -size -2k
b
c
w
k
M
G

find . -type f -name "*.swp" -delete

find . -type f -name "*.php" ! -perm 644

find . -type f -user root


find . -type f -user root -exec chowm huaz {} \;
find . -type f -name "*.c" -exec cat {} \;>all_in_one.txt
find . -type f -mtime +10 -name "*.txt" -exec cp {} ../OLD \;


find . \( -name ".git" -prune \) -o \( -type f -print \)

 
cat example.txt | xargs
cat example.txt | xargs -n 3

echo $PATH | xargs -d : -n 1

cat args.txt | xargs -n 1 ./cecho.sh
cat args.txt | xargs -I {} ./cecho.sh -p {} -l

find . -type f -name "*.txt" -print0 | xargs -0 rm -f
find . -type f -name "*.cpp" -print0 | xargs -0 wc -l

cat args.txt | ( while read arg; do echo $arg; done )
cat args.txt | xargs -I {} echo {}


echo "HELLO WHO IS THIS" | tr 'A-Z' 'a-z'
echo 12345 | tr '0-9' '9876543210'
echo 87654 | tr '9876543210' '0-9' 

# ROT13
echo "hello world" | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'

cat text | tr '\t' ' '

echo "Hello 123 World 456" | tr -d '0-9'
echo "hello 1 char 2 no 4" | tr -d -c '0-9 \n'

echo "GNU is   not   UNIX.  Recursive  right  ?" | tr -s ' '


echo -e "1\n2\n3\n4\n5" > sum.txt
cat sum.txt | echo $[ $(tr '\n' '+' ) 0 ]

tr '[:lower:]' '[:upper:]'


md5sum filename
md5sum filename > file_dum.md5
md5sum -c file_sum.md5

sha1sum filename



sort -n file.txt
sort -r file.txt
sort -nk 2,3 data.txt

sort -z data.txt | xargs -0

sort -bd unsorted.txt

uniq sorted.txt
sort sorted.txt | uniq
sort -u sorted.txt

uniq -u sorted.txt
sort sorted.txt | uniq -u

sort sorted.txt | uniq -c

sort sorted.txt | uniq -d

uniq -z file.txt | xargs -0 rm



temp_file="/tmp/var.$$"



dd if=/dev/zero bs=100k count=1 of=data.file
split -b 10k data.file
split -b 10k data.file -d -a 4 data-

split -l 10 data.file

csplit



file="hack.fun.book.txt"
echo ${file%.*}
echo ${file%%.*}
echo ${file#*.}
echo ${file##*.}


rename *.JPG *.jpg

rename 's/ /_/g' *

rename 'y/A-Z/a-z/' *
rename 'y/a-z/A-Z/' *

find . -type f -name "*.mp3" -exec mv {} ./music \;



echo -e "12\nhello\n" |./interactive.sh 

echo -e "12\nhello\n" > input.data
./interactive.sh < input.data









```
