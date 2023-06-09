#!/bin/bash

for (( i=1; i<=100; i++ ))
do 
	if (( i%3 == 0 ))
	then 
		echo "file_$i.txt"
	fi

	if (( i%5 == 0 ))
        then
                echo "file_$i.log"

        fi
done
