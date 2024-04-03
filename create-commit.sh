#!/bin/bash

# Define the name of the new branch
new_branch=$1

# Create 10 files and make some changes to them
touch "file-$new_branch.txt"
git checkout -b "$new_branch" main
for i in {1..5}
do
    
    echo "This is file $i" >> "file-$new_branch.txt"
    # Stage all changes
    git add .
    # Commit the changes with a timestamp
    commit_message="Changes made at $(date)"
    git commit -m "$commit_message"
    # Create a new branch
done


# Push the changes to the new branch
git push origin "$new_branch"
echo "Changes committed and pushed to branch '$new_branch'"
