#!/bin/bash
echo "=== Checking node/npm ==="
which node 2>&1 && node --version
which npm 2>&1 && npm --version
echo "=== Checking Java ==="
which java 2>&1 && java -version 2>&1
echo "=== Home ==="
ls -la /root/ 2>&1
ls -la /home/ 2>&1
echo "=== Searching for sf CLI ==="
find / -maxdepth 5 -name "sf" -type f 2>/dev/null | head -10