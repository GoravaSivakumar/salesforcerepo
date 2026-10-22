#!/bin/bash
which node 2>&1 && node --version
which npm 2>&1 && npm --version
find / -maxdepth 5 -name "sf" -o -name "sfdx" 2>/dev/null | head -5