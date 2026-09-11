#!/bin/bash
export HOME=/root
export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin"
which sf 2>&1
echo "==="
sf --version 2>&1
echo "==="
sf config list 2>&1
echo "==="
sf org list 2>&1