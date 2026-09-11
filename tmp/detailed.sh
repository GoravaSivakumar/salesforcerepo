#!/bin/bash
echo "PATH=$PATH"
echo "HOME=$HOME"
command -v node
command -v npm
command -v sf
command -v sfdx
# Try to find sf and sfdx more broadly
find /usr /opt /root /home -maxdepth 4 \( -name "sf" -o -name "sfdx" \) -type f 2>/dev/null
# Check if Python is available
which python3
which python