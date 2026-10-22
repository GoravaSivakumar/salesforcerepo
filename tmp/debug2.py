import subprocess, os
os.chdir('/')
# Try with explicit GIT_DIR
env = os.environ.copy()
env['GIT_DIR'] = '/.git'
r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=10, env=env)
print("STDOUT:", r.stdout)
print("STDERR:", r.stderr)
print("RC:", r.returncode)