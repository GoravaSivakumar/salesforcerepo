#!/bin/bash
env
echo "==="
which sf 2>&1 || echo "SF_NOT_FOUND"
echo "==="
cd / && sf config get target-org 2>&1 || echo "FAIL"