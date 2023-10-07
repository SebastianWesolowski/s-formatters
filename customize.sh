#!/bin/bash

# Assign values from environment variables to local variables
FULL_NAME="Sebastian Wesolowski"
GITHUB_USER="SebastianWesolowski"
REPO_NAME="s-formatters"
NODE_VERSION="18.17.1"

# Use the sed command to edit files
# Create backup copies of the original files with the .mybak extension
# Then perform replacements in the files based on local variables

# Edit the package.json file
sed -i.mybak "s/PLACEHOLDER_GITHUB_USER/$GITHUB_USER/g" package.json
sed -i.mybak "s/PLACEHOLDER_NODE/$NODE_VERSION/g" package.json
sed -i.mybak "s/PLACEHOLDER_REPO_NAME/$REPO_NAME/g" package.json
sed -i.mybak "s/PLACEHOLDER_FULL_NAME/$FULL_NAME/g" package.json

# Edit the ./.nvmrc file
sed -i.mybak "s/PLACEHOLDER_NODE/$NODE_VERSION/g" .nvmrc

# Edit the README.md file
sed -i.mybak "s/PLACEHOLDER_GITHUB_USER/$GITHUB_USER/g" README.md
sed -i.mybak "s/PLACEHOLDER_REPO_NAME/$REPO_NAME/g" README.md
sed -i.mybak "s/PLACEHOLDER_FULL_NAME/$FULL_NAME/g" README.md

rm *.mybak
rm .*.mybak

# Display a message upon completion
echo "Finished editing files."

yarn install

echo "Package installed"
