#!/bin/bash

echo ""; echo "gem cleanup..."

gem list | awk '{print $1}' | xargs -L1 gem cleanup
