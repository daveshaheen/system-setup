#!/bin/bash
# brew-update.sh

echo "Updating..."
brew update && brew upgrade && brew cleanup && brew cask update && brew cask install $(brew cask list) && brew cask cleanup
