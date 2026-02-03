#!/bin/bash

echo "===== SSH Service Status ====="
systemctl status ssh | head -5

echo ""
echo "===== SSH Configuration ====="
grep -E "PermitRootLogin|PasswordAuthentication" /etc/ssh/sshd_config

echo ""
echo "===== Failed SSH Attempts ====="
sudo grep "Failed password" /var/log/auth.log | tail -10
