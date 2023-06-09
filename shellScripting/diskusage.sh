#!/bin/bash

threshold=80

usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

if [ "$usage" -ge "$threshold" ]
then
	echo "Disk usage is above $threshold%"
else
	echo "Disk usage is below Threshold Limit"
fi
