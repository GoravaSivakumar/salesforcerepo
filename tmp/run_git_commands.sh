#!/bin/bash
cd /
echo "=== git log --oneline -5 ==="
git log --oneline -5
echo ""
echo "=== git status ==="
git status
echo ""
echo "=== git diff --cached --stat ==="
git diff --cached --stat