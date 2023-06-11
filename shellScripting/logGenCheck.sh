#!/bin/bash

# Finding the count in /var/log/ which is generated the less than one hour
count=$( find /var/log/ -type f -cmin -60 | wc -l )
for i in $count
do
	if [ $i -eq 0 ]
	then
		echo "Alert: Log files are not creating"
	else
		echo " Log files are creating"
	fi

done
