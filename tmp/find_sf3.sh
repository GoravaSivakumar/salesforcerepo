#!/bin/bash
echo "PATH=$PATH"
echo "HOME=$HOME"
echo "=== Checking if sf exists at all ==="
hash sf 2>&1 && echo "sf found via hash" || echo "sf not found via hash"
command -v sf 2>&1
echo "=== Looking for sf binary ==="
ls -la /usr/local/bin/sf 2>&1
ls -la /usr/bin/sf 2>&1
ls -la /bin/sf 2>&1
# Use find to look for it
find /usr -name sf -type f 2>/dev/null | head -5
find /usr -name sfdx -type f 2>/dev/null | head -5