#!/usr/bin/env bash

set -exu

SOURCE=https://raw.githubusercontent.com/google/material-design-icons/master/font/MaterialIcons-Regular.codepoints
OUTFILE_UNDERSCORE=index.d.ts
OUTFILE_KEBAB=kebab.d.ts

echo 'export type MaterialIconName = ' > $OUTFILE_UNDERSCORE
curl -Ss $SOURCE | awk '{print "  | \x27" $1 "\x27"}' >> $OUTFILE_UNDERSCORE

cat $OUTFILE_UNDERSCORE | perl -pe 's/_/-/g' > $OUTFILE_KEBAB

echo 'Done.'
