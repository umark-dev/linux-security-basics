#!/bin/bash
TARGET="/opt/soc-data"

echo "Checking permissions for $TARGET"
ls -ld $TARGET
stat $TARGET | grep -E "Uid|Gid|Access"
