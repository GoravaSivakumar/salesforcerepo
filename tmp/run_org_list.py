#!/usr/bin/env python3
import subprocess, sys, os, json

os.chdir("/")

# Step 1: Run org list
result = subprocess.run(
    "sf org list --json",
    shell=True,
    capture_output=True,
    text=True,
    timeout=60
)

print("=== ORG LIST STDOUT ===")
sys.stdout.write(result.stdout)
print("=== ORG LIST STDERR ===")
sys.stdout.write(result.stderr)
print("=== ORG LIST EXIT CODE ===")
print(result.returncode)

# Parse JSON to find default org
if result.returncode == 0 and result.stdout:
    try:
        data = json.loads(result.stdout)
        print("\n=== PARSED ORG LIST ===")
        print(json.dumps(data, indent=2))
    except json.JSONDecodeError as e:
        print(f"\nCould not parse JSON: {e}")
