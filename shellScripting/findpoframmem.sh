#! /bin/bash

totalMem=$(free -m | awk '/Mem:/ {print $2}')
availMem=$(free -m | awk '/Mem:/ {print $NF}')

echo "Available RAM Memory is $availMem MB"
echo "Total RAM Memory is $totalMem MB"

thresold=30
echo "Thresold Limit is $thresold%"

present=$((  $availMem * 100 / $totalMem ))

echo "Available Memory Percantage is $present%"

if [ $thresold -ge $present ]
then
	echo "RAM memory usage is exceeded the thresold limit"
else
	echo "RAM memory is within Limits"
fi

