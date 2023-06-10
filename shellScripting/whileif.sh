#!/bin/bash

sc=1
ec=100

while [ $sc -le $ec ]
do
	if (( sc%3 == 0 ))
	then
		echo file$sc.txt
	fi
	(( sc++ ))
done
