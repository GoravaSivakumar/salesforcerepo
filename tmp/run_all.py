import subprocess, os
os.chdir('/')

print("=== git log --oneline -5 ===")
p = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
print(p.stdout + p.stderr, end='')

print("=== git status ===")
p = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
print(p.stdout + p.stderr, end='')

print("=== git diff --cached --stat ===")
p = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
print(p.stdout + p.stderr, end='')