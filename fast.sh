#!/bin/bash
# Define the name of the feature branch
feature_branch=$1
# Step 1: Create and switch to a new branch
git checkout -b "$feature_branch" main
# Step 2: Make changes and commit them on the feature branch
echo "New feature" >> feature.txt
git add feature.txt
git commit -m "Added new feature"
# Step 3: Switch back to the main branch
git checkout main
# Step 4: Make sure the main branch is up to date
git pull origin main
# Step 5: Merge changes from the feature branch into main
git merge "$feature_branch"
# Step 6: Display confirmation message
echo "Fast-forward merge completed."
# Optional: You can push the changes to remote if needed
# git push origin main

