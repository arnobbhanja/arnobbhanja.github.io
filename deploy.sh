#!/bin/sh

# If a command fails then the deploy stops
set -e

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

printf "\n Building the project..."
hugo -t ezhil

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"
git push origin HEAD:master
