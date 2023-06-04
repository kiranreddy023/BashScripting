#!/bin/bash

read a
read b
function returnfunc(){
	sum = $(expr $1 + $2)
	echo $sum
}


returnfunc $a $b
