#!/bin/bash
cd /
export PATH="/usr/local/bin:/usr/bin:/bin:$HOME/.local/bin:$HOME/bin"
sf config get target-org 2>&1 || echo "NO_TARGET_ORG"
echo "---"
sf org list --json 2>&1 || echo "NO_ORG_LIST"