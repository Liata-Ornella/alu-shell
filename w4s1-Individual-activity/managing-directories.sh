#!/bin/bash

# Prompt the user to enter a directory name
read -p "Enter the name of the submissions directory: " dir_name

# Define file names
file1="submission1.txt"
file2="submission2.txt"

# Check if a file (not a directory) with that name exists
if [ -f "$dir_name" ]; then
    echo "Error: '$dir_name' is a file, not a directory."
    exit 1
fi

# If the directory exists
if [ -d "$dir_name" ]; then
    echo "Directory '$dir_name' already exists."
else
    # If it doesn't exist, create the directory
    echo "Creating directory '$dir_name'..."
    mkdir "$dir_name"
    echo "Directory '$dir_name' created successfully."
fi

# Create the two files inside the directory
touch "$dir_name/$file1" "$dir_name/$file2"
echo "Files '$file1' and '$file2' created in '$dir_name'."
