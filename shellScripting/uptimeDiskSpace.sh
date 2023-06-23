#!/bin/bash

#uptime function
userUptime () {
	echo '===========User Uptime============='
	uptime
}

#disk space fuction
diskSpace () {
	echo '===========Disk Space=============='
	df -h
}

#calling uptime function
userUptime

#calling disk space function
diskSpace
