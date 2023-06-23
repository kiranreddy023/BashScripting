#!/bin/bash

echo "Enter a string:"
read string

split=($(echo "$string" | grep -o .))

for letters in "${split[@]}"
do
  echo "$letters"
done

