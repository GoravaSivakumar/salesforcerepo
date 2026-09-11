import subprocess, os
os.chdir('/')
r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=10)
print(r.stdout)
print(r.stderr)
print(r.returncode)