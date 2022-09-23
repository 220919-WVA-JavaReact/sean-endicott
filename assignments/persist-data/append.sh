#!/bin/bash

#exec < $1
#read header

#while IFS="," read -r fname lname email uname pw
#do
 # echo "First name: $fname";
 # echo "Last name: $lname";
 # echo "Email: $email";
 # echo "User name: $uname";
 # echo "Password: $pw;

read -p "enter first name: ":
	echo $fname >> data1.csv;
read -p "enter last name: ";
	echo $lname >> data1.csv;
read -p "enter email: ";
	echo $email >> data1.csv;
read -p "enter user name: ";
	echo $uname >> data1.csv;
read -p "enter password: ";
	echo -s $pw >> data1.csv
