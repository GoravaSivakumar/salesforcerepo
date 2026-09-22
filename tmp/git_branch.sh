#!/bin/bash
cd /
echo "=== git branch -a ==="
git branch -a
echo ""
echo "=== git status ==="
git status
echo ""
echo "=== git log --oneline -5 ==="
git log --oneline -5