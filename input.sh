#!/bin/bash

#to enter name using read in different line of the first echo
#echo "Enter names: "
#read name1 name2 name3
#echo "Names: $name1 ,$name2 ,$name3"
#-------------------------------------------------------------------------------------------
#to read username in the same line and read password while the entered data is hidden
#read -p "username: " user_var
#read -sp "password: " pass_var
#echo
#echo "username: $user_var"
#echo "password: $pass_var"
#-------------------------------------------------------------------------------------------
#read names into an array
#echo "Enter names: "
#read -a names
#echo "Names: ${names[0]}, ${names[1]}, ${names[2]}"
#-------------------------------------------------------------------------------------------
#read without any variable will store in a built in variable called REPLY
echo "Enter name: "
read -r
echo "Name: $REPLY"
