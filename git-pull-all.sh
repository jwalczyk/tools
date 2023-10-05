#!/bin/bash

# Get the current directory
CURRENT_DIR=$(pwd)

# Find all directories one level deep in the current directory
DIRECTORIES=$(find "$CURRENT_DIR" -maxdepth 1 -mindepth 1 -type d)

# Iterate over each directory
for dir in $DIRECTORIES; do
  # Change to the directory
  cd "$dir" || continue

  # Check if it is a Git repository
  if [ -d .git ]; then
    # Perform git pull
    echo "Updating $dir..."
    git pull
    echo "----------------------"
  fi
done

