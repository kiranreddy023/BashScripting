#!/bib/bash

if [ -f $1 ]
then
	if [ -r $1 ] && [ -w $1 ] && [ -x $1 ]
	then
		echo "file has all permissions"

	fi

	if [ ! -r $1 ]
	then
		chmod +r $1
	fi

	if [ ! -w $1 ]
        then
                chmod +w $1
        fi

	if [ ! -x $1 ]
        then
                chmod +x $1
	fi
else
	echo "$1 is not a file"
fi
