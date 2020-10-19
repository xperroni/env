#!/bin/bash

git -c user.name="$1" -c user.email="$2" "${@:3}"
