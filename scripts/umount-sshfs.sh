#!/bin/bash

NAME="$1"

fusermount -u "$HOME/Remote/$NAME"

rmdir "$HOME/Remote/$NAME"
