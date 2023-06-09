#!/bin/bash
i=$1
while [ $i -le $2 ]
do 
	echo "while_$i.txt"
	i=$(( i + 5 ))
done
