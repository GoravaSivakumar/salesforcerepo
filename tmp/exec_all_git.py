import subprocess
import os

os.chdir('/')

# 1. git log --oneline -5
print("=== git log --oneline -5 ===")
result = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=10)
stdout = result.stdout
stderr = result.stderr
print(stdout, end='')
if stderr:
    print(stderr, end='')

# 2. git status
print("=== git status ===")
result = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=10)
stdout = result.stdout
stderr = result.stderr
print(stdout, end='')
if stderr:
    print(stderr, end='')

# 3. git diff --cached --stat
print("=== git diff --cached --stat ===")
result = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=10)
stdout = result.stdout
stderr = result.stderr
print(stdout, end='')
if stderr:
    print(stderr, end='')