#!/bin/bash

# Description : Professional Training Survey 
# Author: Marcellin
# Date: June 09, 2020

echo " Welcome to our Profession study group. What is your name?"
read A

if
	[ -z ${A} ]
then
echo " Please answer the questions or come back later "
exit 5
fi

echo " What professional training are you doing at the moment?"
read B

echo " Why are you study ${B}?"
read C

echo " if you like it, After your professional training what will be your title (job)?"
read D

echo " How much would you like to earn as salary per year?"
read E

echo " If you want to thank semeones who helped you to achieve your dream come true for your new job, Who are you going to thank here?"
read F

echo "My name is ${A} I study ${B} and ${C} at the end of this professional training I would be ${D} earning in year ${E} . my thanks go to ${F}."
