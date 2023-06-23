#!/bin/bash
echo "enter a number to do iteratives"
read n
a=0
b=1

#echo $a
for ((i=0; i <= $n; i++))
do
	echo $a
	fb=$(( $a + $b ))
	a=$b
	b=$fb
done
