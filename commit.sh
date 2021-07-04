#!/usr/bin/env bash
set -x
files=$(ls -1a | grep -v '^\(\.\{1,2\}\|\.git\)$' | tee .gitignore_home)
git reset
git update-index --no-assume-unchanged $files
git add -f $files
git commit
git update-index --assume-unchanged $files
