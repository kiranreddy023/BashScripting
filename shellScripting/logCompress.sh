#!/bin/bash
sysfile="var/log/syslog"

compFile="/home/ubuntu/bashScripting/shellScripting/compfile_$(date +%Y-%m-%d).tar.gz"

tar -czf $compFile $sysfile
