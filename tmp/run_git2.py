import subprocess, os
os.chdir('/')
r = subprocess.run(['git', 'diff', '--cached', '--stat'], capture_output=True, text=True, timeout=30)
print("DIFF CACHED:", repr(r.stdout))
print("DIFF CACHED ERR:", repr(r.stderr))
print("DIFF CACHED RC:", r.returncode)

r2 = subprocess.run(['git', 'diff', '--stat'], capture_output=True, text=True, timeout=30)
print("DIFF WORKTREE:", repr(r2.stdout))
print("DIFF WORKTREE ERR:", repr(r2.stderr))

r3 = subprocess.run(['git', 'status', '--porcelain'], capture_output=True, text=True, timeout=30)
print("STATUS PORCELAIN:", repr(r3.stdout))
print("STATUS PORCELAIN ERR:", repr(r3.stderr))