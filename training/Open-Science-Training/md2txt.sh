find . -name "*.md" -print0 | while read -d $'\0' fullfile
do
  # rename file
  path="${fullfile%/*}"
  file="${fullfile##*/}"
  # rename extension
  `pandoc --eol=crlf -f gfm "$fullfile" -t gfm -o "${fullfile%.*}.txt"`
done
