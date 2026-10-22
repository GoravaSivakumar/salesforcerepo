#!/bin/bash
cd /
which sf 2>&1
echo "==="
sf version 2>&1
echo "==="
sf config list --json 2>&1
echo "==="
sf org list --json 2>&1