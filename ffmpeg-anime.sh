srcDir=$1
destDir=$2
opts=$3

for filename in "$srcDir"/*.{mkv,mp4,avi}; do
  basePath=${filename%.*}
  baseName=${basePath##*/}

  ffmpeg -i "$filename" $opts -map 0 -c copy -metadata:s:s:0 language=eng -metadata:s:a:0 language=jpn "$destDir"/"$baseName".mkv
done
