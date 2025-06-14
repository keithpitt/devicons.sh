#!/usr/bin/env bash

eval "$(stdlib shellenv)"
stdlib::import "file/pathrewrite"

in="$1"
out="$(pathrewrite --basename "%s-resized" "$in")"

size="$2x${3:-$2}"

magick "$in" \
  -background transparent \
  -resize "$size" \
  -gravity center \
  -extent "$size" \
  "$out"

open "$out"
