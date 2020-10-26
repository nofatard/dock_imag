#!/bin/bash

#Description: sript for school note, grade and range

#Author: Leslie
echo " hi, what is your name? "
read NAME
echo " hello $NAME, in a range of 0 to 20, where do you grade yourself in scripting? "

read NUMBER
if [ $NUMBER -gt 20 ]
then
echo " enter a valid number $NAME "
exit 20
elif [ $NUMBER -lt 10 ]
then
echo " you need to work hard $NAME, Google should be your best friend: 6figures... "
else
echo " keep doing a great job $NAME: 6figures... "
  if [ $NUMBER -lt 15 ]
  then 
  echo " Good job $NAME, you should help your classmates, that will help you to improve yourself: 6figures... "
  else
  echo " feel free to add scripting in your resume $NAME: 6figures... "
  fi
fi

