#!/bin/bash
# Show all available commands in PATH that relate to salesforce
echo "PATH=$PATH"
echo "==="
# Check if sf exists as a shell function, alias, or binary
type -a sf 2>&1 || echo "sf not found"
echo "==="
# Look for SALESFORCE_CLI_DIR or similar
env | grep -i salesforce 2>&1 || echo "no salesforce env vars"
echo "==="
env | grep -i sf 2>&1 || echo "no sf env vars"