#!/bin/bash

echo ~
echo $USER
echo "Today is: " $(date +%M-%d-%y)
echo "No. of users logged in: " $(users | wc -w)
#users | wc -w total different users
#who | wc -l  total users including multiple logins from same user

