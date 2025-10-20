srcDir=$1

for filename in "$srcDir"/*.mkv; do
  basePath=${filename%.*}
  baseName=${basePath##*/}
  for subtitle in "$basePath"*.srt; do
    # echo "$filename"
    # ffmpeg -i "$filename" -i "$subtitle" -c copy -c:s mov_text "$filename".mkv
    # ffmpeg -i yourmkv.mkv -i yoursubtitles.sub -map 0 -map 1 -c copy youroutput.mkv
    mkvmerge -o "${baseName} (1).mkv" "$filename" "$subtitle"
    mv "{./$filename}" "{./temp/$filename}"
    mv "{./$subtitle}" "{./temp/$subtitle}"

  done
done
