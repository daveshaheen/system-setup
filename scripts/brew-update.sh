#!/bin/bash
# brew-update.sh

echo "Updating..."
brew update && brew upgrade --all && brew cleanup && brew cask update && brew cask install $(brew cask list) && brew cask cleanup
