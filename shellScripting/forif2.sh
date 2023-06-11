#!/bin/bash

for i in $(seq 1 100)
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
