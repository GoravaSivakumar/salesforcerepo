#!/bin/bash
# Check git availability and look for repos
echo "=== git version ==="
git --version 2>&1
echo ""
echo "=== pwd ==="
pwd
echo ""
echo "=== ls -la ==="
ls -la
echo ""
echo "=== check for .git ==="
ls -la /workspace/.git 2>&1
echo ""
echo "=== try git log ==="
cd /workspace && git log --oneline -10 2>&1