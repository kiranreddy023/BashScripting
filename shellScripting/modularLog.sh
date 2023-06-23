#!/bin/bash

# Define the log file
logfile="/var/log/modular_logs.log"

# Define the log format
log_format="%(asctime)s %(levelname)s %(message)s"

# Create the log file if it doesn't exist
if [ ! -f "$logfile" ]; then
  touch "$logfile"
fi

# Set the logging level
logger --level=INFO

# Log a message
logger -t modular_logs "This is a modular log message"

