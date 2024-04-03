#!/bin/bash

# Define the name of the feature branch
feature_branch=$1

# Step 1: Create and switch to a new branch
git checkout -b "$feature_branch" main

# Step 2: Make changes and commit them on the feature branch
echo "First feature commit for "$feature_branch" " >> feature.txt
git add feature.txt
git commit -m "First feature commit"


# Step 3: Switch back to the main branch
git checkout main
git pull origin main
echo "Second feature commit for main" >> feature2.txt
git add feature.txt
git commit -m "Second feature commit"
# Step 4: Make sure the main branch is up to date


# Step 5: Perform the recursive merge
git merge "$feature_branch"

# Step 6: Display confirmation message
echo "Recursive merge completed."

# Optional: You can push the changes to remote if needed
# git push origin main
