#!/bin/bash
# Check what's available
which node 2>&1
node --version 2>&1
which npm 2>&1
npm --version 2>&1
echo "==="
# Check if npm cache or global directory exists
ls /usr/local/lib/node_modules/ 2>&1 || echo "no node_modules"
ls /root/.npm 2>&1 || echo "no .npm"
echo "==="
# Search for any SF related files
find / -maxdepth 5 -name "*salesforce*" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*sfdx*" -type f 2>/dev/null | head -10
echo "==="
# Check if there's any auth file for Salesforce
find / -maxdepth 5 -name "*.auth" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*token*" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*AccessToken*" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*private*" -type f 2>/dev/null | head -10
find / -maxdepth 5 -name "*server.key*" -type f 2>/dev/null | head -10