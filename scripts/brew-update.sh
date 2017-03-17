#!/bin/bash

echo ""; echo "brew update..."; \
  brew update; \
  echo ""; echo "brew upgrade..."; \
  brew upgrade; \
  echo ""; echo "brew cleanup..."; \
  brew cleanup; \
  echo ""; echo "cask cleanup..."; \
  brew cask cleanup; \
