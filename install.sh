#!/bin/bash

script=$(readlink "$0")
script="$(cd -P "$(dirname "$script")" && pwd)"
script="$script/cls.sh"
sudo ln -s $script "/usr/local/bin/cls"