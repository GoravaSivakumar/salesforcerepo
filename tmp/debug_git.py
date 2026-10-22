import subprocess
import os

os.chdir('/')

# Test if git is available
r = subprocess.run(['which', 'git'], capture_output=True, text=True)
print("git location:", r.stdout, r.stderr)

# Run git commands
r1 = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
print("LOG_STDOUT:", repr(r1.stdout))
print("LOG_STDERR:", repr(r1.stderr))
print("LOG_RC:", r1.returncode)

r2 = subprocess.run(['git', 'status'], capture_output=True, text=True, timeout=30)
print("STATUS_STDOUT:", repr(r2.stdout))
print("STATUS_STDERR:", repr(r2.stderr))
print("STATUS_RC:", r2.returncode)

r3 = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
print("DIFF_STDOUT:", repr(r3.stdout))
print("DIFF_STDERR:", repr(r3.stderr))
print("DIFF_RC:", r3.returncode)