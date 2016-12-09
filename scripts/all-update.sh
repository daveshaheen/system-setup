#!/bin/bash

~/scripts/brew-update.sh; \
  ~/scripts/cask-remove-old-versions.sh; \
  ~/scripts/git-update.sh; \
  ~/scripts/npm-outdated-update.sh; \
  ~/scripts/gem-outdated-update.sh; \
  ~/scripts/pip-update.sh

echo ""; date

echo ""; echo "Done!"; echo ""
