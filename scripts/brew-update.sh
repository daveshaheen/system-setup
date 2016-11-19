#!/bin/bash

echo ""; echo "brew update..."; \
  brew update; \
  echo ""; echo "brew upgrade..."; \
  brew upgrade; \
  echo ""; echo "brew cleanup..."; \
  brew cleanup; \
  echo ""; echo "cask update..."; \
  brew cask update; \
  echo ""; echo "cask install..."; \
  brew cask install $(brew cask list); \
  echo ""; echo "cask cleanup..."; \
  brew cask cleanup; \
