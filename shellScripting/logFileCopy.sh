#!/bin/bash

for file in /var/log/*
do

	if [ $file == "/var/log/syslog" ]
	then 
		cp $file /home/ubuntu/kiran2



	fi
done
