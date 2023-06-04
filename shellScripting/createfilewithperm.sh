#!/bin/bash

cat <<KIRAN
#Author - Kiran Vepanjeri
#Date - June 04, 2023
#Description - to create a file with extension and file permission
KIRAN

echo "Enter the file name"
read file
echo "Enter the extension of file"
read ext
echo "Enter the file permission(ex. 755,644)"
read perm

touch $file.$ext
chmod $perm $file.$ext

echo "file created"
