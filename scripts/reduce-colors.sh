#!/usr/bin/env bash

eval "$(stdlib shellenv)"
stdlib::import "file/pathrewrite"

in="$1"
out="$(pathrewrite --basename "%s-reduced" "$in")"

convert "$in" +dither -colors "${2:-2}" "$out"
open "$out"
