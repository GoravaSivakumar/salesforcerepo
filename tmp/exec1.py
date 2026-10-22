import subprocess, os
os.chdir('/')
subprocess.run(['git', 'log', '--oneline', '-5'], capture_output=False, text=True, timeout=30)