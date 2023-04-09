#!/bin/bash
read num
if [ $num -le 50 ]
then 
    echo "the number is less than or equal to 50"
else 
    echo "not in range"
fi