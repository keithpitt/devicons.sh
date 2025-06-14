#!/usr/bin/env bash

eval "$(stdlib shellenv)"
stdlib::import "file/pathrewrite"

in="$1"
out="$(pathrewrite --basename "%s-resized" "$in")"

magick "$in" -background transparent -resize 300x300 -gravity center -extent 400x400 "$out"
open "$out"
