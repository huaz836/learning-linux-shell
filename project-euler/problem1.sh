#!/bin/bash
#
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
#

sum=0
for i in {1..999}
do
    let result3=i%3
    let result5=i%5
    [ $result3 -eq 0 -o $result5 -eq 0 ] && let sum+=i
done
echo $sum

