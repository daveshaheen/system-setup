#!/bin/bash

echo ""; echo "pip2 update...";

pip2 install --upgrade pip
pip2 list --outdated --format=legacy | awk '{if($1 != "GDAL" && $1 != "pip") print $1}' | xargs -L1 pip2 install --upgrade

echo ""; echo "pip3 update...";

pip3 install --upgrade pip
pip3 list --outdated --format=legacy | awk '{if($1 != "GDAL" && $1 != "pip") print $1}' | xargs -L1 pip3 install --upgrade
