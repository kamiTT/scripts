#!/bin/sh

for filename in *.mp4; do
  basePath=${filename%.*}
  baseName=${basePath##*/}
  mkvmerge -o "$baseName".mkv "$filename" --language 0:eng --track-name 0:English "$baseName".English.srt

done
