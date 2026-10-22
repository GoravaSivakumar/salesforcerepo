python3 -c "
import subprocess, os
os.chdir('/')
print('=== GIT LOG (last 5 commits) ===')
r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, cwd='/')
print(r.stdout or r.stderr)
print('=== GIT STATUS ===')
r = subprocess.run(['git', 'status'], capture_output=True, text=True, cwd='/')
print(r.stdout or r.stderr)
print('=== GIT BRANCH ===')
r = subprocess.run(['git', 'branch', '-a'], capture_output=True, text=True, cwd='/')
print(r.stdout or r.stderr)
"