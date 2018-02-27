#!/bin/bash

echo "Removing <none> images..."

docker images | grep none | awk '{ print $3 }' | xargs -L1 docker rmi

echo "Done!"
