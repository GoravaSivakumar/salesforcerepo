#!/usr/bin/env python3
import subprocess, os
os.chdir('/')
print("=== git branch -a ===")
print(subprocess.check_output(['git','branch','-a'], text=True, stderr=subprocess.STDOUT))
print("=== git status ===")
print(subprocess.check_output(['git','status'], text=True, stderr=subprocess.STDOUT))
print("=== git log --oneline -5 ===")
print(subprocess.check_output(['git','log','--oneline','-5'], text=True, stderr=subprocess.STDOUT))