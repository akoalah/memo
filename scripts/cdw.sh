#!/bin/bash

FILE=$1

if [ -z "$FILE" ]; then
    echo Usage: $0 \<file path in Windows format.\>
    exit 1
fi

FILE=${FILE//\\//}
FILE=${FILE,}
FILE=$(echo $FILE | sed 's|^\([a-z]\):|/mnt/\1|')

echo $FILE

cd $FILE
