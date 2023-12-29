#!/bin/bash

# Run the PlantUML command-line utility.
#
# Author: Helio Perroni Filho

# Conversion to PDF doesn't work; as a workaround, generate an SVG file then convert it to PDF with:
#
# sudo apt install librsvg2-bin # if not yet installed
# rsvg-convert -f pdf -o <filename>.pdf <filename>.svg

docker run --rm --name="plantuml-cli" --volume="$HOME:$HOME" --user="$(id -u):$(id -g)" plantuml/plantuml "$@"
