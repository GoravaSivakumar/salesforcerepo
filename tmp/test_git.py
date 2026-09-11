import subprocess, os
os.chdir('/')
r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
print(r.stdout, end='')
if r.stderr:
    print(r.stderr, end='')