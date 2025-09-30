#!/usr/bin/env bash
# Install all nodejs versions found via .nvmrc files with nvm

echo "----- INSTALLING NODEJS VERSIONS -----"
find ~/dev -maxdepth 3 -name .nvmrc -type f | xargs sed 's/^v//' | xargs -L 1 nvm install
