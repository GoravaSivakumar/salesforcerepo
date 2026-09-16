import subprocess, os

# Try with shell=True
branch = subprocess.run("git branch --show-current", capture_output=True, text=True, cwd="/", shell=True)
print("BRANCH: " + branch.stdout.strip())
print("BRANCH_STDERR: " + branch.stderr.strip())

status = subprocess.run("git status --short", capture_output=True, text=True, cwd="/", shell=True)
out = status.stdout.strip()
print("STATUS: " + (out if out else "clean"))
print("STATUS_STDERR: " + status.stderr.strip())
