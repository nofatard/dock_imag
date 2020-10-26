#!/bin/bash


#Description: Displayin student's grade and remarks
#Author: Akon
#Date: June 10, 2020


read -p "Enter your grades: " grades

if [ $grades -ge 90 ] && [ $grades -le 100 ]
then
   echo "Excellent!"

elif [ $grades -ge 80 ] && [ $grades -le 89 ]
then

   echo "Very Good"

elif [ $grades -ge 70 ]
then
    echo "Good"

elif [ $grades -ge 60 ]
then 
   echo "Just Satisfactory"

elif [ $grades -ge 50 ]
then 
   echo "Need Improvment" 
else
    echo "Not Good"
fi
