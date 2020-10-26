#!/bin/bash
#AUTHOR Leslie
#DESCRIPTION: script to receive a postal mail when busy

echo " bell ringing ..."
sleep 3
echo " Hello who goes there? "
read ANS
if [ ${ANS} != poste ]
then 
echo " sorry you have to call me before comming "
else
echo " do you need a signature? (yes/no) "
read RES
 if [ ${RES} = yes ]
 then
 echo " somebody is comming... "
 else
 echo " drop the package in the front of the door, will pick it up later. Thank you."
 fi
fi
