#!/bin/bash

script="$(cd -P "$(dirname "$(readlink "$0")")" && pwd)/start.sh"
target="/usr/local/bin/clstart"
if [ -e $target ] || [ -h $target ]; then 
	sudo rm $target 
fi
sudo ln -s $script $target