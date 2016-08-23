#!/bin/bash
# git-update.sh

for user in ~/Workspace/src/github.com/*
do
	if [[ ! $user =~ $GITHUB_USER_NAME ]]; then
		for project in $user/*
		do
			if [ -d $project/.git ]; then
				echo "git $project"
				cd $project
				if [[ $project == *base16-shell* ]]; then
					git pull --all
				else
					#statements
					git fetch --all
					git reset --hard
					git clean -df
					git merge --ff-only
					git submodule update --init --recursive
				fi
				echo ""
			fi
		done
	fi
done

for bundle in ~/.vim/bundle/*
do
	if [ -d $bundle/.git/ ]; then
		echo "git $bundle"
		cd $bundle
		git fetch --all
		git reset --hard
		git clean -df
		git merge --ff-only
		git submodule update --init --recursive
		echo ""
	fi
done
