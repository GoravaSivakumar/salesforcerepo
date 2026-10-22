#!/bin/bash
# Environment checks
which node 2>&1
node --version 2>&1
which npm 2>&1
npm --version 2>&1
echo "=== Checking for salesforce CLI ==="
npm list -g --depth=0 2>&1
echo "=== Checking npm cache ==="
ls /usr/local/lib/node_modules/ 2>&1 || echo "no global node_modules"
ls /root/.npm 2>&1 || echo "no .npm"
echo "=== Searching for SF CLI ==="
find / -maxdepth 5 -name "*salesforce*" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*sfdx*" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*sf-cli*" -type f 2>/dev/null | head -10
echo "=== Check for authentication files ==="
find / -maxdepth 5 -name "*.auth" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*token*" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*key*" -type f 2>/dev/null | head -20
echo "=== Check home ==="
ls -la /root/ 2>&1
ls -la /home/ 2>&1
echo "=== Check Salesforce DX directories ==="
ls -la /root/.sfdx/ 2>&1
ls -la /root/.local/ 2>&1
find / -maxdepth 5 -name "sfdx-config.json" -type f 2>/dev/null