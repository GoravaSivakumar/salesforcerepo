import subprocess, os
os.chdir('/')

# Run all three commands in sequence
print("=== git log --oneline -5 ===")
r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
print(r.stdout, end='')
print(r.stderr, end='')
print()

print("=== git status ===")
r = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
print(r.stdout, end='')
print(r.stderr, end='')
print()

print("=== git diff --cached --stat ===")
r = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
print(r.stdout, end='')
print(r.stderr, end='')