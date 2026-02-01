#!/bin/bash

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: $0 <file-or-directory>"
  exit 1
fi

echo "===== Permission Report ====="
ls -ld $TARGET
stat $TARGET | grep -E "Uid|Gid|Access"
echo "============================="
