#!/bin/bash
export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/bin:/bin"
echo "PATH=$PATH"
echo "HOME=$HOME"
sf config get target-org 2>&1 || echo "FAILED_TARGET_ORG"
echo "==="
sf org list 2>&1 || echo "FAILED_ORG_LIST"