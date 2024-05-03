#!/bin/bash
#Check the avalible disk space on the root partition

echo "Cheking disk space for the root partition..."
df -h / | awk 'NR==2{spreint $4 " available"}'