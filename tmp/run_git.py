#!/usr/bin/env python3
import subprocess, os

os.chdir('/')

# Run git commands
cmds = [
    ('git branch -a', ['git', 'branch', '-a']),
    ('git status', ['git', 'status']),
    ('git log --oneline -5', ['git', 'log', '--oneline', '-5']),
]

for title, cmd in cmds:
    print(f"=== {title} ===")
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.stdout:
        print(result.stdout, end='')
    if result.stderr:
        print(f"STDERR: {result.stderr}", end='')
    print()