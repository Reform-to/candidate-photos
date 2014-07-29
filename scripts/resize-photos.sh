#!/bin/sh

# Script to resize candidate photos into the sizes we typically use.
# Run this from the root images directory: scripts/resize-photos.sh.
# Directory candidates/original contains images named by FEC ID.
# The photos will be resized and placed into directories named after the size, retaining their original filename.

SOURCE=candidates/
TARGET=img/

for SIZE in "40x50" "100x125" "200x250"
    do
    mkdir -p $TARGET/$SIZE;
    for f in $SOURCE/original/*.jpg
    do
        f=$(basename "$f")
        outfile=$TARGET/$SIZE/$f
        if [ ! -f $outfile ]; then
            convert $SOURCE/original/$f -resize $SIZE^ -modulate 100,0 -gravity center -extent $SIZE $outfile;
        fi
    done
done
