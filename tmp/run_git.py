import subprocess, os

os.chdir("/")

# Run the commands
print("=== GIT BRANCH ===")
branch = subprocess.run(["git", "branch", "--show-current"], capture_output=True, text=True, cwd="/")
print(branch.stdout.strip())

print("\n=== GIT STATUS ===")
status = subprocess.run(["git", "status", "--short"], capture_output=True, text=True, cwd="/")
output = status.stdout.strip()
if output:
    print(output)
else:
    print("(clean - no uncommitted changes)")
