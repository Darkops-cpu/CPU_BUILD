#!/bin/bash

# a custom git push script

echo "checking status"
git status

echo "adding files"
git add .

echo "pull from master"
git pull origin main

COMMIT_MSG=${1:-"Auto-update commit"}
echo "[*] Committing with message: $COMMIT_MSG"
git commit -m "$COMMIT_MSG" || echo "Nothing to commit."


echo "push to master"
git push origin main