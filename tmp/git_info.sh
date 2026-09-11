cd /
# Get list of tracked files
git ls-tree --name-only -r HEAD 2>&1
echo "---"
# Show current branch name
git branch --show-current 2>&1
echo "---"
# Show all branches
git branch -a 2>&1