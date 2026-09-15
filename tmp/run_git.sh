#!/bin/bash
cd /
git branch -a 2>&1
echo "==SEP=="
git status 2>&1
echo "==SEP=="
git log --oneline -5 2>&1