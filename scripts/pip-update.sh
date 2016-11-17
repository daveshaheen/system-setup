#!/bin/bash

pip install --upgrade pip
pip list --outdated --format=legacy | awk '{if($1 != "GDAL" && $1 != "pip") print $1}' | xargs -L1 pip install --upgrade
