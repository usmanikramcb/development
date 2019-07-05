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

echo "\nInstalling core development tools\n"
brew install wget
brew install bat
brew install ncdu
brew install prettyping
brew install fzf
brew install htop
brew install diff-so-fancy
brew install git
brew install node
brew install php72
brew install tldr
brew install ack
brew install jq
brew cask install docker
brew install fish

npm install -g n
n lts

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15
defaults write -g ApplePressAndHoldEnabled -bool false

echo "Installing Desktop apps\n"
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install 1password
brew cask install spotify
brew cask install aerial
brew cask install phpstorm

sh ./update.sh

echo "${GREEN}All done!${WHITE}\n"
