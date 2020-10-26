#!/bin/bash


#Description: Script to display some Input-Output questions
#Author: Akon
#Date: 9 June 2020


a=`hostname`
echo Hello, my server name is $a
echo
echo what is your name?
read b
echo
echo what is your profession?
read c
echo
echo who is your teacher?
read d
echo
echo Hello $b
echo Your profession $c is awesome!
echo $d is a good teacher
echo Thank you and see you next time

