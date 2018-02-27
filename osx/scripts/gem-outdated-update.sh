#!/bin/bash

echo ""; echo "gem update..."

gem outdated | awk '{print $1}' | xargs -L1 gem update
