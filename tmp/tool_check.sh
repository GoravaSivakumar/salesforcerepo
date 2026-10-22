#!/bin/bash
# Check available tools
which node 2>/dev/null && node --version
echo "==="
which npm 2>/dev/null && npm --version
echo "==="
which npx 2>/dev/null
echo "==="
which java 2>/dev/null && java -version 2>&1
echo "==="
which jq 2>/dev/null
echo "==="
which curl 2>/dev/null
echo "==="
echo "OS:" 
cat /etc/os-release 2>/dev/null | head -3
echo "==="
# Check if there's a global npm prefix
npm config get prefix 2>/dev/null
echo "==="
# Check if sf is in PATH by searching for it
command -v sf 2>&1
type sf 2>&1