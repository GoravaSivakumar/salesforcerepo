#!/bin/bash
cd /
echo "=== Branch ==="
cat .git/HEAD
echo ""
echo "=== Reflog (HEAD) ==="
cat .git/logs/HEAD
echo ""
echo "=== Packed refs ==="
cat .git/packed-refs
echo ""
echo "=== Branch log ==="
cat .git/logs/refs/heads/feature/BM-L3_APEX_REST_RESOURCE-expose-accounts-over-a-rest-endpoint
echo ""
echo "=== Main log ==="
cat .git/logs/refs/heads/main 2>/dev/null || echo "No main log file"