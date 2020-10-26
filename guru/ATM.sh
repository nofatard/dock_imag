#!/bin/bash


#Description: 
#Author: Audrey
#Date: June 2020


echo "Welcome to the ATM"
read thanks
echo "How can i help you today?"
read withdraw 

echo "Insert your card....."
sleep 2

echo "your card is being processed"
sleep 3

echo "Enter your PIN"
read PIN

if 
 [ ${PIN} == "0000" ]
then 

echo "how_much do you want?"
read how_much 

else
echo "invalid PIN"
sleep 3
echo "you stole that card.I will call 911 "
exit
fi

if
 [ ${how_much} -le 5000 ] 
then
 
sleep 4
echo "Do not forget to take your card"
echo "Thank you for using our ATM see next time"

fi

