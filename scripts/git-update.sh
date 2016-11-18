#!/bin/bash

for user in $HOME/workspace/src/github.com/*
do
  if [[ ! $user =~ $GITHUB_USER_NAME ]]; then
    for project in $user/*
    do
      if [ -d $project/.git ]; then
        if [[ $project == *base16-shell* ]]; then
          (output=$(echo "git $project"; cd $project; git pull --all); echo "$output"; echo "") &
        else
          (output=$(echo "git $project"; \
            cd $project; \
            git fetch --all; \
            git reset --hard; \
            git clean -df; \
            git merge --ff-only; \
            git submodule update --recursive); \
            echo "$output"; echo "") &
        fi
      fi
    done
  fi
done
wait
