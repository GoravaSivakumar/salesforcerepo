import subprocess
import os
os.chdir('/')
result1 = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
print("=== git log --oneline -5 ===")
print(result1.stdout, end='')
if result1.stderr:
    print(result1.stderr, end='')
print("--- git status ---")
result2 = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
print(result2.stdout, end='')
if result2.stderr:
    print(result2.stderr, end='')
print("--- git diff --cached --stat ---")
result3 = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
print(result3.stdout, end='')
if result3.stderr:
    print(result3.stderr, end='')