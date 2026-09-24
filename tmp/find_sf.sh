#!/bin/bash
# Try to find sf command
for dir in /usr/local/bin /usr/bin /usr/local/sf /usr/lib/sfdx /snap/bin /opt/sfdx/bin; do
  if [ -f "$dir/sf" ]; then
    echo "Found sf at: $dir/sf"
    ls -la "$dir/sf"
  fi
done
# Also try the node-based approach
if command -v npx 2>/dev/null; then
  echo "npx available"
  npx --yes sf org list --json 2>&1 | head -20
fi
# Check environment
env | grep -i sf 2>/dev/null | head -5
