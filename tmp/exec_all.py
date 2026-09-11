import subprocess, os, sys
os.chdir('/')

# 1
print("=== git log --oneline -5 ===")
sys.stdout.flush()
r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
sys.stdout.write(r.stdout)
sys.stdout.write(r.stderr)
sys.stdout.flush()

print()
# 2
print("=== git status ===")
sys.stdout.flush()
r = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
sys.stdout.write(r.stdout)
sys.stdout.write(r.stderr)
sys.stdout.flush()

print()
# 3
print("=== git diff --cached --stat ===")
sys.stdout.flush()
r = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
sys.stdout.write(r.stdout)
sys.stdout.write(r.stderr)
sys.stdout.flush()