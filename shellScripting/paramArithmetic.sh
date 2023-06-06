#!/bin/bash

# Author - Kiran
# Date   - June 05, 2023
# Desc   - Arithmetic operations with parameters command

sum=$(( $1 + $2))
echo Sum of $1 and $2 is $sum

echo ====================================================

mul=$(( $1 * $2))
echo Multiplication of $1 and $2 is $mul

echo ==============================================================

sub=$(( $1 - $2))
echo difference of $1 and $2 is $sub

echo =========================================================================

div=$(( $1 / $2))
echo Division of $1 and $2 is $div

echo =====================================================================================

mod=$(( $1 % $2))
echo Modulus of $1 and $2 is $mod
