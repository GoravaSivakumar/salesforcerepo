#!/bin/bash
export GIT_DIR=/.git
git cat-file -p HEAD 2>/dev/null | head -5