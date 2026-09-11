import subprocess
import os
import sys

# Change to root directory
os.chdir('/')

def run_cmd(cmd, desc):
    print(f"=== {desc} ===")
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
        if result.stdout:
            print(result.stdout, end='')
        if result.stderr:
            print("STDERR:", result.stderr, end='')
        if result.returncode != 0:
            print(f"(exit code: {result.returncode})")
    except Exception as e:
        print(f"Error: {e}")
    print()

run_cmd(['git', 'log', '--oneline', '-5'], "git log --oneline -5")
run_cmd(['git', 'status'], "git status")
run_cmd(['git', 'diff', '--cached', '--stat'], "git diff --cached --stat")