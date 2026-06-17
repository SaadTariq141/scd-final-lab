#!/bin/bash

# Variable
DATE_TIME=$(date)

# Function to display system info
show_system_info() {
    echo "===== SYSTEM MONITOR ====="
    echo "Date & Time: $DATE_TIME"
    echo ""
    
    echo "Disk Usage:"
    df -h
    echo ""

    echo "Memory Usage:"
    free -h
}

# Conditional check
if [ -f /etc/os-release ]; then
    echo "Linux system detected"
    show_system_info
else
    echo "Not a Linux system"
fi
