#!/bin/bash
 # -gt --> greater than
 # -lt --> less than
 # -eq --> equals to
 # -ne --> not equals to
number=$1
 if [ $number -lt 10 ]
 then
    echo " the number $number is less than 10 "
else
    echo " the number $number is greater than 10 "
fi
