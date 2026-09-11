cd /
git log --oneline -5 2>&1
echo "---SEP---"
git status 2>&1
echo "---SEP---"
git diff --cached --stat 2>&1