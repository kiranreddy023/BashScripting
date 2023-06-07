#!/bin/bash

for i in $( seq 0 5 100 )
do
	touch five_$i.txt
	#echo $i
	chmod 777 five_$i.txt
done
