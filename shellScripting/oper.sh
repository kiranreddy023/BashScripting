#! /bin/bash

echo "Please select the operation \n 1 : free -m \n 2 : df -h \n 3 : du -h \n 4 : uname -a"
read option


case "$option" in

"1")	free -m ;;
"2")    df -h ;;
"3")    du -h ;;
"4")    uname -a ;;
*)      man --help;;


esac
