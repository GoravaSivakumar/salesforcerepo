#!/bin/bash
set -e
cd /
echo "=== git branch -a ==="
git branch -a 2>&1
echo ""
echo "=== git status ==="
git status 2>&1
echo ""
echo "=== git log --oneline -5 ==="
git log --oneline -5 2>&1