#!/bin/bash
cd /
echo "=== 1. git log --oneline -10 ==="
git log --oneline -10 2>&1
echo ""
echo "=== 2. git status ==="
git status 2>&1
echo ""
echo "=== 3. git branch -a ==="
git branch -a 2>&1
echo ""
echo "=== 4. git diff HEAD~1 --name-only ==="
git diff HEAD~1 --name-only 2>&1 || { echo "Fallback:"; git show --name-only --format="" HEAD~1 2>&1; }