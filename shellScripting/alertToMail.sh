#!/bin/bash

# Thresholds (adjust these according to your requirements)
CPU_THRESHOLD=30
MEMORY_THRESHOLD=30
DISK_THRESHOLD=30

# Function to check CPU usage
check_cpu() {
    local cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    echo "CPU Usage: $cpu_usage%"
    if [ $(echo "$cpu_usage > $CPU_THRESHOLD" | bc) -eq 1 ]; then
        send_alert "High CPU Usage" "Current CPU usage: $cpu_usage%"
    fi
}

# Function to check Memory usage
check_memory() {
    local memory_usage=$(free | awk '/Mem/{print $3/$2 * 100}')
    echo "Memory Usage: $memory_usage%"
    if [ $(echo "$memory_usage > $MEMORY_THRESHOLD" | bc) -eq 1 ]; then
        send_alert "High Memory Usage" "Current Memory usage: $memory_usage%"
    fi
}

# Function to check Disk usage
check_disk() {
    local disk_usage=$(df -h / | awk '/\// {print $(NF-1)}' | sed 's/%//')
    echo "Disk Usage: $disk_usage%"
    if [ "$disk_usage" -gt "$DISK_THRESHOLD" ]; then
        send_alert "High Disk Usage" "Current Disk usage: $disk_usage%"
    fi
}

# Function to send alert email
send_alert() {
    local subject="$1"
    local message="$2"
    echo "$message" | mail -s "$subject" vkirankumar023@gmail.com
}

# Main script
echo "Monitoring CPU, Memory, and Disk usage..."

# Capture usage metrics
cpu_output=$(check_cpu)
memory_output=$(check_memory)
disk_output=$(check_disk)

# Write output to a file in table format
output_file="usage_report_$(date +'%Y-%m-%d_%H-%M-%S').txt"
echo -e "Timestamp\tCPU Usage\tMemory Usage\tDisk Usage" > "$output_file"
echo -e "$(date +'%Y-%m-%d %H:%M:%S')\t$cpu_output\t$memory_output\t$disk_output" >> "$output_file"

echo "Usage report saved to $output_file"


