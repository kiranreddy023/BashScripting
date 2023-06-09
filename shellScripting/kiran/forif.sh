#!/bin/bash

for (( i=1; i<=100; i++ ))
do 
	if (( i%3 == 0 ))
	then 
		touch "file_$i.txt"
	fi

	if (( i%5 == 0 ))
        then
                touch "file_$i.log"
		chmod 777 file_$i.log

        fi
done
