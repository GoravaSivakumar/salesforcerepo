#!/usr/bin/env python3
import subprocess, os, sys
os.chdir('/')
# git branch -a
p = subprocess.Popen(['git','branch','-a'], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
out, err = p.communicate()
sys.stdout.write('=== git branch -a ===\n')
sys.stdout.write(out)
if err: sys.stdout.write(err)

# git status
p = subprocess.Popen(['git','status'], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
out, err = p.communicate()
sys.stdout.write('=== git status ===\n')
sys.stdout.write(out)
if err: sys.stdout.write(err)

# git log --oneline -5
p = subprocess.Popen(['git','log','--oneline','-5'], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
out, err = p.communicate()
sys.stdout.write('=== git log --oneline -5 ===\n')
sys.stdout.write(out)
if err: sys.stdout.write(err)