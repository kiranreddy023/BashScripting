#!/bin/bash
echo "Enter the File Name"
read fn
if [ -f  $fn ]
then
	echo "file exists"
else 
	echo "file does not exist"
fi
