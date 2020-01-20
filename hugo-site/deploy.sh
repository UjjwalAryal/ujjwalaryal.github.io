#!/bin/sh

# If a command fails then the deploy stops
set -e

# Build the project in the previous directory
hugo -d ../

# Go To Previous Directory
cd ..

# Add changes to git.
git add .

#Commit Changes.
msg="rebuilding site $(date)"

if [ -n "$*" ]; then
	msg = "$*"
fi

git commit -m "$msg"

#Push source and build repos
git push origin master
