#!/bin/bash

# a custom git push script

echo "checking status"
git status

echo "adding files"
git add .

echo "pull from master"
git pull origin main

echo "making general commit"
git commit -m "commit to update the entire structure"

echo "push to master"
git push origin main