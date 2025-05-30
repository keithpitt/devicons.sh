set -x
magick "$1" -background transparent -resize 300x300 -gravity center -extent 300x300  "$1"-resized.png
ascii-silhouettify -i "$1"-resized.png
