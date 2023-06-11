#!/bin/bash
sysfile="/var/log/syslog"

compFile="/home/ubuntu/bashScripting/shellScripting/compfile_$(date +%Y-%m-%d-%H-%M-%S).tar.gz"

tar -czf $compFile $sysfile
