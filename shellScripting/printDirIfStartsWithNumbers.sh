#!/bin/bash

# Use the find command to search for directories starting with a number
# and print their names
find /var/ -type d -regex '.*/[0-9].*' -print

