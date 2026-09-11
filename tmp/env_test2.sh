#!/bin/bash
$SHELL -c 'command -v sf; command -v sfdx; echo "node: $(node --version 2>/dev/null)"; echo "npm: $(npm --version 2>/dev/null)"' 2>&1