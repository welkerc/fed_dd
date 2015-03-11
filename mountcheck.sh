#!/bin/bash

for mountedPath in `mount | cut -d ' ' -f 3`; do
    if [[ "${mountedPath}" =~ .*cwelker.* ]]; then

        echo ${mountedPath}
	exit 0
    fi
done
exit 1
