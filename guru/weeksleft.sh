#!/bin/bash


#Description: Displaying weeks left to our guru-group to present our offer letters to Serge  
#Author: Akon
#June: 9 June 2020

count=0
num=10
while [ $count -lt 10 ]
do
    echo
    echo $num weeks left to present our offer letters guys
    echo
  sleep 1

num=`expr $num - 1`
count=`expr $count + 1`
done
echo
echo  Here are our offer letters , we did it with success!!!
echo
echo Congratulation to us guys. We are really gurus!!!
echo
echo Thank you so much Serge!
echo

