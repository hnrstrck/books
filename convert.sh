#!/bin/bash

files=$(find . -type f -name '*.html')

for f in $files; do
  echo -e '---\n---\n' > $f
  rename -f 's/\.html$/\.md/g' $f
done
