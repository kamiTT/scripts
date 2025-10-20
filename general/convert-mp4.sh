srcDir=$1
# lang=$2

for filename in "$srcDir"/*.mp4; do
  basePath=${filename%.*}
  baseName=${basePath##*/}

  ffmpeg -i "$filename" -map 0 -vcodec copy -acodec copy "$baseName".mkv
  # -metadata:s:a:0 language="$lang"

done
