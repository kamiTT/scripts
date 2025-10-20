#! /bin/bash

srcDir=$1
destDir=$2
lang=$3
opts=$4

for filename in "$srcDir"/*.mp4; do
  basePath=${filename%.*}
  baseName=${basePath##*/}

  ffmpeg -i "$filename" $opts -map 0 -c copy -metadata:s:a:0 language=$lang "$destDir"/"$baseName".mkv
done
