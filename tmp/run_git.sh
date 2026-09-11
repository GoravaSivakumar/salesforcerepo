#!/bin/bash
cd /
export GIT_DIR=/.git
git branch --show-current
git log --oneline -3