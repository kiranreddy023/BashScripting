#! /bin/bash

totalMem=$(free -m | awk '/Mem:/ {print $2}')
availMem=$(free -m | awk '/Mem:/ {print $NF}')

echo "Available RAM Memory is $availMem MB"
echo "\nTotal RAM Memory is $totalMem MB"

thresold=70
echo "\nThresold Limit is $thresold%\n"

present=$((  $availMem *100 / $totalMem ))

echo "Used Memory Percantage is $present% \n"

if [ $present -ge $thresold ]
then
	echo "RAM memory usage is exceeded the thresold limit"
else
	echo "RAM memory is within Limits"
fi

