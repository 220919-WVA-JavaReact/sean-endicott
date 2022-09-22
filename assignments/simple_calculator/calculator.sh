#!/bin/bash

# save user input values into variables
read -p "enter first number: " a; 
read -p "enter second number: " b;


# using ps3 variable and select operator
# used bc-> basic calculator for decimals
ps3="Please select an operator to perform on your numbers"
select operator in add subtract multiply divide;
do
	echo "you chose to $operator your numbers"
	if [[ $operator == "add" ]]; then
	echo $(( $a + $b ))
	elif [[ $operator == "subtract" ]]; then
	echo $(( a - b ))
	elif [[ $operator == "multiply" ]]; then
	echo $(( a * b ))
	elif [[ $operator == "divide" ]]; then
	echo  "scale=2; $a / $b"  | bc 
	fi
break
done




