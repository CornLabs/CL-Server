#!/bin/bash

target="$( cd -P "$(dirname $(readlink "$0"))" && pwd)"
args=""
while true; do
	if [ $1 ]; then
		args="$args $1"
		shift
	else
		break
	fi
done
target="sudo node $target/server.js $args"
$target