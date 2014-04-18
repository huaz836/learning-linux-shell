#!/bin/bash

# subshell.sh

cmd_output=$(ls | cat -n > lsout.txt)
#cmd_output=`ls | cat -n > lsout.txt`
echo $cmd_output

pwd;
(cd /bin; ls);
pwd;
