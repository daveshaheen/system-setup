#!/bin/bash
# apple-dock-reset.sh

defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock

