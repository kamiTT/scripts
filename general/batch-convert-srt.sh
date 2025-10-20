#! /bin/bash

srcExt=$1
srcDir=$2
destDir=$3
opts=$4

for filename in "$srcDir"/*.$srcExt; do
  basePath=${filename%.*}
  baseName=${basePath##*/}

  ffmpeg -i "$filename" $opts "$destDir"/"$baseName".srt
done
