#!/bin/bash

# Define the name of the new branch
new_branch=$1

# Create 10 files and make some changes to them
for i in {1..5}
do
    touch "file$i.txt"
    echo "This is file $i" >> "file$i.txt"
done

# Stage all changes
git add .

# Commit the changes with a timestamp
commit_message="Changes made at $(date)"
git commit -m "$commit_message"

# Create a new branch
git checkout -b "$new_branch"

# Push the changes to the new branch
git push origin "$new_branch"

echo "Changes committed and pushed to branch '$new_branch'"
