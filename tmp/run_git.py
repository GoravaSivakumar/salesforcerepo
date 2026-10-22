import subprocess, os
os.chdir('/')
r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
print("=== git log --oneline -5 ===")
print(r.stdout)
if r.stderr:
    print(r.stderr)
print()

r2 = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
print("=== git status ===")
print(r2.stdout)
if r2.stderr:
    print(r2.stderr)
print()

r3 = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
print("=== git diff --cached --stat ===")
print(r3.stdout)
if r3.stderr:
    print(r3.stderr)