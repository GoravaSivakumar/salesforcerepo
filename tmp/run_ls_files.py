import subprocess, os
os.chdir('/')
r = subprocess.run(['git', 'ls-files', '--stage'], capture_output=True, text=True, timeout=30)
print("=== git ls-files --stage ===")
print(r.stdout)
if r.stderr:
    print(r.stderr)