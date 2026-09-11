import subprocess
import os

os.chdir('/')

# Run all 3 commands
for cmd, desc in [
    (['git', 'log', '--oneline', '-5'], "git log --oneline -5"),
    (['git', 'status'], "git status"),
    (['git', 'diff', '--cached', '--stat'], "git diff --cached --stat"),
]:
    print(f"=== {desc} ===")
    try:
        r = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
        if r.stdout:
            print(r.stdout, end='')
        if r.stderr:
            print(r.stderr, end='')
    except Exception as e:
        print(f"Error: {e}")
    print()