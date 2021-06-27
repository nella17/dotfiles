#!/usr/bin/env bash
set -x
fn=.gitignore_home
cat $fn | git update-index --no-assume-unchanged --stdin
git add -f `cat $fn`
git commit
cat $fn | git update-index --assume-unchanged --stdin
