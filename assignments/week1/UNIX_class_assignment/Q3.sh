#!/bin/bash


read -p "enter number: " n;

#for num in {n..0}
#do
# echo num * n
#done

#for ((i=0: i<n; i-- ))
#do
#  a=$((n * (n-1)
factorial=1

while [ $n -gt 1 ]; 
do
  factorial=$((factorial * n))
  n=$((n-1))
done;

echo factorial


