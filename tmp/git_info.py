#!/usr/bin/env python3
import subprocess
import os

os.chdir('/')

# git branch -a
r1 = subprocess.run(['git', 'branch', '-a'], capture_output=True, text=True)
print("=== git branch -a ===")
print(r1.stdout.rstrip())

# git status
r2 = subprocess.run(['git', 'status'], capture_output=True, text=True)
print("=== git status ===")
print(r2.stdout.rstrip())

# git log --oneline -5
r3 = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True)
print("=== git log --oneline -5 ===")
print(r3.stdout.rstrip())