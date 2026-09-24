#!/bin/bash
sf project deploy start --dry-run --test-level NoTestRun --ignore-conflicts 2>&1
echo "EXIT_CODE=$?"
