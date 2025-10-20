srcDir=$1
lang=$2

for filename in "$srcDir"/*.mkv; do
  basePath=${filename%.*}
  baseName=${basePath##*/}

  mkvpropedit "$baseName".mkv --edit info --edit track:a1 --set language="$lang"
done
