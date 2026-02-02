#!/bin/bash

echo "===== Running Processes ====="
ps aux --sort=-%cpu | head -10

echo ""
echo "===== Top Memory Consumers ====="
ps aux --sort=-%mem | head -10

echo ""
echo "===== Active Services ====="
systemctl list-units --type=service --state=running | head -10
