#!/bin/bash

find /var/log/ -size +500M -atime +30 -exec rm {} \;
