#!/bin/bash
# Check npm global
npm list -g --depth=0 2>/dev/null | grep -i salesforce
echo "==="
# Check if sf is available via npx
npx sf --version 2>&1
echo "==="
# Check if sfdx is available
which sfdx 2>/dev/null && sfdx --version 2>/dev/null
echo "==="
# Check for salesforce CLI via npm
ls /usr/local/lib/node_modules/@salesforce 2>/dev/null || echo "no global sf"
echo "==="
# look for sf in node_modules
find / -path "*/node_modules/*" -name "sf" -type f 2>/dev/null | head -5