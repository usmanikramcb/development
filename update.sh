#!/bin/bash

echo "\nUpdating config files..."

cp .bash_profile ~
cp .gitconfig ~
cp .hyperterm.js ~
cp .vimrc ~
cp -r .atom/* ~/.atom

echo "${GREEN}All done!${WHITE}\n"
