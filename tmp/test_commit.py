import subprocess, os
os.chdir('/')
r = subprocess.run(['git', 'cat-file', '-p', '31068245665c9b72fa9975c97021e871c8c804f9'], capture_output=True, text=True, timeout=30)
print("COMMIT:")
print(r.stdout)
print("ERR:", r.stderr)