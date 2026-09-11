import subprocess, os
os.chdir('/')
# Try git cat-file to get commit details
r = subprocess.run(['git', 'cat-file', '-p', '31068245665c9b72fa9975c97021e871c8c804f9'], capture_output=True, text=True, timeout=30)
print("=== Commit object ===")
print(r.stdout)
print(r.stderr)
print()

# Try git log with various options
r2 = subprocess.run(['git', 'log', '--oneline', '-5', '--all'], capture_output=True, text=True, timeout=30)
print("=== git log --oneline -5 --all ===")
print(r2.stdout)
print(r2.stderr)
print()

# Try git branch
r3 = subprocess.run(['git', 'branch', '-a'], capture_output=True, text=True, timeout=30)
print("=== git branch -a ===")
print(r3.stdout)
print(r3.stderr)
print()

# Try git status
r4 = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
print("=== git status ===")
print(r4.stdout)
print(r4.stderr)
print()

# Try git diff --cached --stat
r5 = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
print("=== git diff --cached --stat ===")
print(r5.stdout)
print(r5.stderr)