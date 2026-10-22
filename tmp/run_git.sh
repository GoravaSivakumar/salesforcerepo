#!/bin/sh
cd /
echo "=== 1. git log --oneline -10 ==="
git log --oneline -10
echo ""
echo "=== 2. git status ==="
git status
echo ""
echo "=== 3. git branch -a ==="
git branch -a
echo ""
echo "=== 4. git diff HEAD~1 --name-only ==="
git diff HEAD~1 --name-only 2>&1 || {
  echo "HEAD~1 doesn't exist, trying git show --name-only --format='' HEAD..."
  git show --name-only --format="" HEAD
}