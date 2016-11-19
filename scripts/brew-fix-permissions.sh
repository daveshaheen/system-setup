#!/bin/bash

echo "taking ownership"
sudo chown -R $(whoami):admin /usr/local /usr/local/bin /Library/Caches/Homebrew

echo "done!"
