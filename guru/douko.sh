#!/bin/bash

#Description: Script to get precriptions

#Author: Douko

#Date: June 2020

echo "please enter your prescription number"
read p

echo "What is your date of birth?"
read d

echo "what is your name?"
read n

echo "Do you need pharmacist counseling?"
echo "1.yes"
echo "2.no"
echo "choose option"
read o


echo "your prescription number is ${p}, your date of birth is ${d}, your name is ${n}.The option chosen is:${o}"




if
[ ${o} = 1 ]
then
echo "Please wait a pharmacist will be with you shortly"

else
echo "Thank you for shopping with us today"
fi
