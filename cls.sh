#!/bin/bash

target="$( cd -P "$(dirname $(readlink "$0"))" && pwd)"
i=""
while true; do
	if [ $1 ]; then
		i="$i $1"
		shift
	else
		break
	fi
done
target="sudo node $target/server/server.js $i"
$target