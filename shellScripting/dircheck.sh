#!/bin/bash
echo "Enter the Directory Name"
read dn
if [ -d  $dn ]
then
	echo "Directory exists"
else 
	echo "Directory does not exist"
fi
