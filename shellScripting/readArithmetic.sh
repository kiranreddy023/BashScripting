#!/bin/bash

# Author - Kiran
# Date   - June 05, 2023
# Desc   - Arithmetic operations with read command

echo "Enter the first number"
read n1
echo "Enter the second number"
read n2

echo "============================================"

sum=$(( $n1 + $n2))
echo Sum of $n1 and $n2 is $sum

echo ====================================================

mul=$(( $n1 * $n2))
echo Multiplication of $n1 and $n2 is $mul

echo ==============================================================

sub=$(( $n1 - $n2))
echo difference of $n1 and $n2 is $sub

echo =========================================================================

div=$(( $n1 / $n2))
echo Division of $n1 and $n2 is $div

echo =====================================================================================

mod=$(( $n1 % $n2))
echo Modulus of $n1 and $n2 is $mod
