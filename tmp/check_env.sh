#!/bin/bash
which git 2>&1 || echo "git not found"
echo "PATH=$PATH"
ls -la /usr/ 2>&1