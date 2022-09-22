
#!/bin/bash

# save user input values into variables
read -p "enter first number: " a;
read -p "enter second number: " b;

if [[ $a =~ ^[0-9]+$ && $b =~ ^[0-9]+$ ]]; then
        echo "you entered $a and $b"
else
        echo "Please choose a valid number"
        exec bash "$0"
fi


# using ps3 variable and select operator
# used bc-> basic calculator for decimals

ps3="Please select an operator to perform on your numbers"
select operator in add subtract multiply divide;
do


        if [[ $operator == "add" ]]; then
                echo "$a $operator $b = " $(( $a + $b ))
        elif [[ $operator == "subtract" ]]; then
                echo "$a $operator $b = " $(( a - b ))
        elif [[ $operator == "multiply" ]]; then
                echo "$a $operator $b = " $(( a * b ))
        elif [[ $operator == "divide" ]]; then
                echo "$a $operator $b = "
                echo "scale=2; $a / $b"  | bc
        else
                echo "Please chose a valid number"
                exec bash "$0"
        fi
break
done








