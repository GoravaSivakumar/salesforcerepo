#!/bin/bash
cd /
export GIT_DIR=/.git
git branch --show-current
echo "---SEPARATOR---"
git log --oneline -3
echo "---DONE---"