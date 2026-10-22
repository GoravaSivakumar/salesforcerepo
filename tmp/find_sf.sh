#!/bin/bash
# Find sf CLI
for dir in /usr/local/bin /usr/bin /bin /root/.local/bin /root/bin; do
  if [ -f "$dir/sf" ]; then
    echo "Found sf at: $dir/sf"
    ls -la "$dir/sf"
  fi
done
# Check node/npm as sf is node-based
which node 2>/dev/null && node --version 2>/dev/null
which npm 2>/dev/null && npm --version 2>/dev/null
# Check home
echo "HOME=$HOME"
echo "PWD=$(pwd)"
echo "USER=$(whoami 2>/dev/null)"
# Look for sf CLI executable
find / -name "sf" -type f 2>/dev/null | head -5
# Look for sfdx
find / -name "sfdx" -type f 2>/dev/null | head -5