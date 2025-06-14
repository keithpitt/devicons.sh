#!/usr/bin/env bash

eval "$(stdlib shellenv)"
stdlib::import "file/pathrewrite"

in="$1"
out="$(pathrewrite --basename "%s-trim" "$in")"

magick "$in" -trim "$out"
open "$out"
