#!/bin/bash

n=12
a=0
b=1


for (( i=0; i<n; i++ )); 
do
  echo  "$a "
  temp=$((a + b))
  a=$b
  b=$temp
        
done


