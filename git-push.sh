#!/bin/bash

# Check if a commit message was provided
if [ "$#" -eq 0 ]; then
    echo "Please provide a commit message"
    echo "Usage: ./git-push.sh \"your commit message\""
    exit 1
fi

# Execute git commands
git add .
git commit -m "$1"
git push

echo "✅ Changes pushed successfully!" 