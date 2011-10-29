#!/bin/bash

i=1
command -v "npm" >/dev/null && echo "" || i=1
command -v "git" >/dev/null && echo "" || { echo "This application requires either GIT or NPM to be installed! "; exit 1; }

if [ "$i" -eq 0 ]; then
	npm install node-static
else 
	git submodule update --init --recursive
fi
script="$(cd -P "$(dirname "$(readlink "$0")")" && pwd)/start.sh"
target="/usr/local/bin/clstart"
if [ -e $target ] || [ -h $target ]; then 
	sudo rm $target 
fi
sudo ln -s $script $target