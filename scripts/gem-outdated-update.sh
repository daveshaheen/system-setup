#!/bin/bash

gem outdated | awk '{print $1}' | xargs -L1 gem update
