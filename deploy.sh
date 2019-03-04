#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# Add changes to git.
 LANG=en_US.utf8  git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
 LANG=en_US.utf8 git commit -m "$msg"

# Push source and build repos.
 LANG=en_US.utf8 git push origin master

# Come Back up to the Project Root
cd ..
