#!/bin/bash

docker images | awk '(NR>1) && ($1!~/\//) && ($2!~/none/) {print $1}' | xargs -L1 docker pull
