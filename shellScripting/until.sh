#!/bin/bash
i=$1
until [ $i -ge $2 ]
do 
	echo "until_$i"
	i=$(( $i + 1 ))
done
