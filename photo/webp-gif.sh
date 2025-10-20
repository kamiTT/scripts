srcDir=$1

for filename in "$srcDir"/*.webp; do
  basePath=${filename%.*}
  baseName=${basePath##*/}

  magick "$filename" "$baseName".gif
done
