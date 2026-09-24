cd /
which sf
sf --version 2>&1
echo "---"
sf project deploy start --dry-run --test-level NoTestRun --ignore-conflicts 2>&1
echo "---DONE---"
