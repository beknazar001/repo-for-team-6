#!/bin/bash

# Define the name of the feature branch
feature_branch=$1

# Step 1: Create and switch to a new branch
git checkout -b "$feature_branch" main

# Step 2: Make changes and commit them on the feature branch
echo "First feature commit" >> feature.txt
git add feature.txt
git commit -m "First feature commit"

echo "Second feature commit" >> feature.txt
git add feature.txt
git commit -m "Second feature commit"

# Step 3: Switch back to the main branch
git checkout main

# Step 4: Make sure the main branch is up to date
git pull origin main

# Step 5: Perform the squash merge
git merge --squash "$feature_branch"

# Step 6: Commit the squashed changes
git commit -m "Squashed feature commits"

# Step 7: Display confirmation message
echo "Squash merge completed."

# Optional: You can push the changes to remote if needed
# git push origin main
