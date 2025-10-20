srcDir=$1
lang=$2

for filename in "$srcDir"/*.mp4; do
  basePath=${filename%.*}
  baseName=${basePath##*/}

  ffmpeg -i "$filename" -map 0 -vcodec copy -acodec copy \
    -metadata:s:a:0 language="$lang" \
    -metadata:s:s:0 language=eng \
    "$baseName".mkv


done
