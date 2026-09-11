#!/bin/bash
# List key binaries
ls -la /usr/bin/ 2>&1 | head -50
echo "---"
ls -la /usr/local/bin/ 2>&1
echo "---"
which git 2>&1
which python3 2>&1
which python 2>&1
which php 2>&1
which node 2>&1
which java 2>&1
which curl 2>&1
which wget 2>&1