#!/bin/bash


#Description: Condition with AND 
#Author: Audrey
#Date: June 2020


echo "Enter userneme"
read username

echo "Enter password"
read password

if
 [[ ( $username == "admin" && $password == "guru" ) ]]
then 
echo "valid user"

echo "welcome to the world of 6 figures income. Let us be focus and make it"

else 
echo "invalid user"

fi





