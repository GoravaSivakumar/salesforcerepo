#!/bin/bash
# Show current environment 
echo "PATH: $PATH"
echo "HOME: $HOME"
echo "SHELL: $SHELL"
echo "USER: $(whoami 2>&1)"
echo "PWD: $(pwd)"
# Try to find the sf command
command -v sf 2>&1 || echo "sf not in PATH"
command -v sfdx 2>&1 || echo "sfdx not in PATH"
# Check node
node --version 2>&1 || echo "node not found"
npm --version 2>&1 || echo "npm not found"