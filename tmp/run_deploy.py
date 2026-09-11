#!/usr/bin/env python3
import subprocess, sys, os

os.chdir("/")

result = subprocess.run(
    "sf project deploy start --metadata CustomObject:Task_Log__c --target-org default",
    shell=True,
    capture_output=True,
    text=True,
    timeout=180
)

print("=== STDOUT ===")
sys.stdout.write(result.stdout)
print("=== STDERR ===")
sys.stderr.write(result.stderr)
print("=== EXIT CODE ===")
print(result.returncode)