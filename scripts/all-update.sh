#!/bin/bash
# all-update.sh

~/Scripts/brew-update.sh && \
	~/Scripts/cask-remove-old-versions.sh && \
	~/Scripts/git-update.sh && \
	~/Scripts/npm-outdated-update.sh && \
	~/Scripts/gem-outdated-update.sh
