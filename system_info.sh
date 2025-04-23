#!/bin/bash

echo "----------------------------------"
echo "         System Information       "
echo "----------------------------------"
echo "Hostname:         $(hostname)"
echo "OS Version:       $(lsb_release -d | cut -f2)"
echo "Kernel Version:   $(uname -r)"
echo "System Uptime:    $(uptime -p)"
echo "Current CPU Usage:"
top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'
echo "Memory Usage:"
free -h
echo "Disk Usage (/):"
df -h /


