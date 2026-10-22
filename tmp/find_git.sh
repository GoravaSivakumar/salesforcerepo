cd /
# Try to find git executable
which git 2>/dev/null || echo "git not found in PATH"
ls -la /usr/bin/git 2>/dev/null || echo "no /usr/bin/git"
find / -name "git" -type f 2>/dev/null | head -5