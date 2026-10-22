import subprocess, os
os.chdir('/')
r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
print("STDOUT:", repr(r.stdout))
print("STDERR:", repr(r.stderr))
print("RC:", r.returncode)
# Also check GIT_DIR
print("GIT_DIR env:", os.environ.get('GIT_DIR'))
# Check if we're in a submodule?
r2 = subprocess.run(['git', 'rev-parse', '--git-dir'], capture_output=True, text=True, timeout=30)
print("GIT_DIR resolved:", repr(r2.stdout), repr(r2.stderr))