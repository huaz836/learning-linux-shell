
    [a-z0-9_]+@[a-z0-9]+\.[a-z]+
    
    ^
    $
    .
    []
    [^]
    [-]
    ?
    +
    *
    ()
    {}
    {n}
    {n,}
    {n,m}
    |
    \

    [:alnum:]
    [:alpha:]
    [:blank:]
    [:digit:]
    [:lower:]
    [:upper:]
    [:punct:]
    [:space:]


    ( ?[a-zA-Z+ ?)
   

-------------------------------

    grep match_pattern filename
    grep "match_pattern" filename
    grep "match_text" file1 file2 file3 --color=auto
    
    cat filename | grep word

    grep -E "[a-z]+"
    egrep "[a-z]+"

    echo this is a line. | grep -o -E "[a-z]+\."
    
    grep -v match_pattern file

    grep -c "text" filename

    echo -e "1 2 3 4\nhello\n5 6" | egrep -c "[0-9]"
    echo -e "1 2 3 4\nhello\n5 6" | egrep -c "[0-9]" | wc -l

    grep word -n filename

    echo gnu is not unix | grep -b -o "not"

    grep -l linux sample1.txt sample2.txt
    grep -L linux sample1.txt sample2.txt

    grep "text" . -R -n

    echo hello world | grep -i "HELLO"

    echo this is a line of text | grep -e "this" -e "line" -o
    grep -f pattern_file source_filename

    grep "main()" . -r --include *.{c,cpp}
    grep "main()" . -r --exclude "README"
    grep "main()" . -r --exclude-dir ./test
    grep "main()" . -r --exclude-from EXCLUDELIST

    grep "test" file* -lZ | xargs -0 rm

    seq 10 | grep 5 -A 3
    seq 10 | grep 5 -B 3
    seq 10 | grep 5 -C 3



-------------------------------

cut -f2,3 filename
cut -f3 --complement filename
cut -f2 -d";" filename

cut -c1-5 filename
cut filename -c1-3,6-9 --output-delimiter ","


-------------------------------

sed 's/pattern/repace_string/' file
sed -i 's/text/replace/' file

sed 's/pattern/repace_string/g' file
sed 's/pattern/repace_string/2g' file

sed 's:text:replace:g'
sed 's|text|replace|g'

sed '/^$/d' file

echo this is an example | sed 's/\w\+/[&]/g'

echo this is digit 7 in a number | sed 's/digit \([0-9]\)/\1/'

sed 'expression; expression'

echo hello world | sed "s/$text/HELLO/"


-------------------------------

awk 'BEGIN{ start statements } { pattern statements } END { end statements }'
awk "BEGIN{ start statements } { pattern statements } END { end statements }"

awk 'BEGIN { i=0 } { i++ } END { print i }' filename

echo -e "line1\nline2" | awk 'BEGIN{ print "Start" } { print } END{ print "End" }'

echo | awk '{ var1="v1"; var2="v2"; var3="v3"; print var1;var2;var3; }'
echo | awk '{ var1="v1"; var2="v2"; var3="v3"; print var1"-"var2"-"var3 }'


echo -e "line1 f2 f3\nline2 f4 f5\nline3 f6 f7" | \
awk '{
    print "Line no:"NR", No of fields:"NF, "$0="$0, "$1="$1, "$2="$2, "$3="$3
}'


-------------------------------





