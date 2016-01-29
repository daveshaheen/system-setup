#!/bin/bash
# cask-remove-old-versions.sh

set i = 0

for folder in /opt/homebrew-cask/Caskroom/*
do
	for version in $folder/*
	do
		let "i++"
	done

	if [ $i -gt 1 ]; then
		# reverse sort so NR>2 skips "total" & current version
		echo "Removing old cask $folder..."
		ls -lr $folder | awk -v d="$folder/" '(NR>2) {print d $9}' | xargs -L1 rm -fr
	fi

	let "i=0"
done

echo "Done!"
