#!/bin/bash

REMOTE_DIR="$1"

git status -s | while read line; do file=$(echo $line | cut -d ' ' -f 2); cp -vr "$file" "$REMOTE_DIR/$(basename $(pwd))/$file" ; done
