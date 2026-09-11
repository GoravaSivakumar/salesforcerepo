import subprocess, os
os.chdir('/')

# Check if git works
try:
    r = subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=True, text=True, timeout=30)
    print("OUT:", r.stdout)
    print("ERR:", r.stderr)
    print("RC:", r.returncode)
except Exception as e:
    print(f"Exc: {e}")