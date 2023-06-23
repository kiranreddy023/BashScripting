#!/bin/bash

array=("devops" "jenkins" "azure" "aws" "jenkins" "devops")
echo 'array ' '=' "${array[@]}"
echo ""

sorted_array=($(echo "${array[@]}" | tr ' ' '\n' | sort | uniq ))

echo "Sorted and Unique Array:"

for value in "${sorted_array[@]}"
do
  echo "$value"
done

