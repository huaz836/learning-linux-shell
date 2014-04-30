
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


