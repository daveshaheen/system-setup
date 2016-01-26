#!/bin/bash
# brew-fix-permissions.sh

echo "taking ownership"
sudo chown -R $(whoami):admin /usr/local /usr/local/bin /Library/Caches/Homebrew

echo "done!"
