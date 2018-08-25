#!/bin/bash

GREEN='\033[0;32m'
WHITE='\033[0m'

echo "\nUpdating config files..."

cp .bash_profile ~
cp .gitconfig ~
cp .gitignore_global ~
cp .vimrc ~
cp .zshrc ~

echo "${GREEN}All done!${WHITE}\n"
