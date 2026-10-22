#!/bin/bash
cd /
sf project deploy start --dry-run --test-level NoTestRun --ignore-conflicts 2>&1
echo "===EXIT CODE: $?==="
