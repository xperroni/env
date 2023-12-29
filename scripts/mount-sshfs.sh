#!/bin/bash

NAME="$1"
TARGET="$2"

mkdir -p "$HOME/Remote/$NAME"

sshfs $TARGET "$HOME/Remote/$NAME"
