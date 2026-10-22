#!/bin/bash
# Check npm global packages
npm list -g --depth=0 2>&1
echo "==="
# Check if .npmrc exists
cat /root/.npmrc 2>&1 || echo "no npmrc"
echo "==="
# Check local node_modules
ls /node_modules 2>&1
echo "==="
# Check if sf can be installed
which npm 2>&1 && npm --version 2>&1