#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
WHITE='\033[0m'

echo "============================================="
echo "Starting development environment installation"
echo "=============================================\n"

echo "Installing homebrew\n"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "\nSetting up homebrew\n"
brew tap caskroom/cask
brew update
brew cask update

echo "\nInstalling core tools\n"
brew install wget
brew install git
brew install node
brew install php70
brew install php70-xdebug

npm install -g http-server

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

echo "Installing Atom and Hyperterm\n"
brew cask install atom
brew cask install hyperterm

apm install --packages-file atom-packages.txt

echo "Installing Aerial screensaver\n"
brew cask install aerial

echo "\nCopying config files"

cp .bash_profile ~
cp .gitconfig ~
cp .hyperterm.js ~
cp .vimrc ~
cp -r .atom/* ~/.atom

echo "${GREEN}All done!${WHITE}\n"
