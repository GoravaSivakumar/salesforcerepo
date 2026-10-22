#!/usr/bin/env python3
import subprocess, sys, os, json

os.chdir("/")

# Step 2: Run deploy with dry-run targeting the default org
result = subprocess.run(
    "sf project deploy start --dry-run --test-level NoTestRun --target-org default",
    shell=True,
    capture_output=True,
    text=True,
    timeout=180
)

print("=== DEPLOY STDOUT ===")
sys.stdout.write(result.stdout)
print("=== DEPLOY STDERR ===")
sys.stdout.write(result.stderr)
print("=== DEPLOY EXIT CODE ===")
print(result.returncode)
