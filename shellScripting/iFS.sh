#!/bin/bash

# Read the string from the user
echo "Enter a string:"
read input_string

# Set the field separator to a comma
IFS=','

# Split the string into fields
read -ra fields <<< "$input_string"

# Display the fields
echo "Fields:"
for field in "${fields[@]}"
do
  echo -n "$field"
done

