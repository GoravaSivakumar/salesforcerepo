import subprocess
import os

# Change to root directory
os.chdir('/')

# 1. git log --oneline -5
print("=== git log --oneline -5 ===")
try:
    result = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
    print(result.stdout, end='')
    if result.stderr:
        print("STDERR:", result.stderr)
except Exception as e:
    print(f"Error: {e}")

print()

# 2. git status
print("=== git status ===")
try:
    result = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
    print(result.stdout, end='')
    if result.stderr:
        print("STDERR:", result.stderr)
except Exception as e:
    print(f"Error: {e}")

print()

# 3. git diff --cached --stat
print("=== git diff --cached --stat ===")
try:
    result = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
    print(result.stdout, end='')
    if result.stderr:
        print("STDERR:", result.stderr)
except Exception as e:
    print(f"Error: {e}")