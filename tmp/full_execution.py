#!/usr/bin/env python3
import subprocess, sys, os, json

# Write everything to output file
output_file = "/tmp/command_output.txt"
os.chdir("/")

with open(output_file, "w") as f:
    f.write("=== STEP 1: sf org list --json ===\n\n")
    
    result = subprocess.run(
        "sf org list --json",
        shell=True,
        capture_output=True,
        text=True,
        timeout=60
    )
    
    f.write("STDOUT:\n" + result.stdout + "\n")
    f.write("STDERR:\n" + result.stderr + "\n")
    f.write("EXIT CODE: " + str(result.returncode) + "\n\n")
    
    # Parse default org
    if result.returncode == 0 and result.stdout:
        try:
            data = json.loads(result.stdout)
            f.write("PARSED JSON:\n" + json.dumps(data, indent=2) + "\n\n")
        except json.JSONDecodeError as e:
            f.write(f"JSON Parse Error: {e}\n\n")
    
    f.write("=== STEP 2: sf project deploy start --dry-run --test-level NoTestRun --target-org <org-alias> ===\n\n")
    
    # Determine org alias
    if result.returncode == 0 and result.stdout:
        try:
            data = json.loads(result.stdout)
            # Find default org
            target_org = "default"
            if "result" in data and data["result"] and "nonScratchOrgs" in data["result"]:
                for org in data["result"]["nonScratchOrgs"]:
                    if org.get("isDefaultUsername") or org.get("isDefaultDevHubUsername") or org.get("isDefault"):
                        target_org = org.get("username", org.get("alias", "default"))
                        break
            if "result" in data and data["result"] and "scratchOrgs" in data["result"]:
                for org in data["result"]["scratchOrgs"]:
                    if org.get("isDefaultUsername") or org.get("isDefault"):
                        target_org = org.get("username", org.get("alias", "default"))
                        break
        except:
            target_org = "default"
    else:
        target_org = "default"
    
    f.write(f"Using target org: {target_org}\n\n")
    
    deploy_result = subprocess.run(
        f"sf project deploy start --dry-run --test-level NoTestRun --target-org {target_org}",
        shell=True,
        capture_output=True,
        text=True,
        timeout=180
    )
    
    f.write("STDOUT:\n" + deploy_result.stdout + "\n")
    f.write("STDERR:\n" + deploy_result.stderr + "\n")
    f.write("EXIT CODE: " + str(deploy_result.returncode) + "\n")

print(f"Output written to {output_file}")
