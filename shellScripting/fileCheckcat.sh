#!/bin/bash

read -p "Enter the name you want to search" name

if [ -f $name ]
then
	cat $name

elif [ -d $name ]
then
	fCount=$( find $name/ -type f | wc -l )
	echo "No. of file in $name is $fCount"
else
	echo "entered name is not a file or directory"

fi
