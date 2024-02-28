#!/bin/bash

# check whether folder path is given or not
if [ $# -ne 2 ]; then
 echo "usage: $0 <folder/path> <search_word>"
 exit 1
fi

folder="$1"


# check whether given input is a correct path or not
if [ ! -d "$folder" ]; then
 echo "Error: '$folder' is not a folder"
 exit 1
fi

echo "searching for the word '$2' in '$1' folder"

foundFiles=$(grep -rl '$2' '$folder')






