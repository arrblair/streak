#!/bin/sh

(cd commit_files &&
for f in *; do
    line_count=`wc -l "$f" | awk '{ print $1 }'`
    if [ $line_count -lt 2 ]
    then
      echo "$f"
    fi
done)
