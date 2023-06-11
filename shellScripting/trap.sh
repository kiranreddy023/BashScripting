#!/bin/bash

# Trap the SIGINT signal
trap 'echo "Script interrupted. Exiting..."; exit' SIGINT

# Rest of the script
echo "Script is running..."
sleep 10
echo "Script completed."

