#!/bin/bash

git ls-files | while read -r line;
do
  STATUS=$(git status -s "$line");
  if [ ! -n "$STATUS" ]; then
    echo "  $line";
  fi;
done
