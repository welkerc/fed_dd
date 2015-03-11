#!/bin/bash

home=cwelker
for mountedPath in `mount | cut -d ' ' -f 3`; do
    if [[ "${mountedPath}" =~ .*$home.* ]]; then
  	echo ${mountedPath}
    fi
done
exit 1
