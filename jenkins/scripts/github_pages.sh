#!/usr/bin/env sh
set -x

ls build

git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --global user.name "github-actions[bot]"

git remote set-url origin https://git:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git

npx gh-pages --message '[skip ci] Updates' --dist build