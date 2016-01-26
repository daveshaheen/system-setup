#!/bin/bash

for d in ~/Workspace/src/github.com/*/
do
	if [ -d $d.git/ ]; then
		echo "git $d"
		cd $d
		git fetch --all
		git reset --hard
		git clean -df
		git submodule update --init --recursive
		echo ""
	fi

	# only going one sublevel in
	for i in $d*/
	do
		if [ -d $i.git/ ]; then
			echo "git $i"
			cd $i
			git fetch --all
			git reset --hard
			git clean -df
			git submodule update --init --recursive
			echo ""
		fi
	done
done

for d in ~/.vim/bundle/*/
do
	if [ -d $d.git/ ]; then
		echo "git $d"
		cd $d
		git fetch --all
		git reset --hard
		git clean -df
		git submodule update --init --recursive
		echo ""
	fi
done
