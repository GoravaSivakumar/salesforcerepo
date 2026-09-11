import subprocess, os
os.chdir('/')
try:
    r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
    print("=== git log --oneline -5 ===")
    print(r.stdout, end='')
    if r.stderr:
        print(r.stderr, end='')
    print()
except Exception as e:
    print(f"Error with git log: {e}")

try:
    r = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
    print("=== git status ===")
    print(r.stdout, end='')
    if r.stderr:
        print(r.stderr, end='')
    print()
except Exception as e:
    print(f"Error with git status: {e}")

try:
    r = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
    print("=== git diff --cached --stat ===")
    print(r.stdout, end='')
    if r.stderr:
        print(r.stderr, end='')
except Exception as e:
    print(f"Error with git diff: {e}")