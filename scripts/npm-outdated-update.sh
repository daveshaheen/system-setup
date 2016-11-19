#!/bin/bash

echo "npm update..."

npm outdated -g | awk '(NR>1) {print $1}' | xargs -L1 npm install -g
