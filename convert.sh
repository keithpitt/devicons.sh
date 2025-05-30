set -x

path="$1"
name="$(basename $path)"
url="$2"

magick "icons/$path.png" -background transparent -resize 300x300 -gravity center -extent 300x300 "icons/$path-resized.png"
out=$(ascii-silhouettify -i "icons/$1.png")
echo "$out"
echo "$out" > "icons/$1/$1.png"

