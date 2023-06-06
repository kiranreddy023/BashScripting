#! /bin/bash
wcc=$( wc -c $1  | awk 'NR==1 {print $1}' )

if [ $wcc -ge 1000 ]
then
	echo "password is strong"
else
	echo "weak password"
fi
