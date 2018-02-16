#!/bin/bash

# check parameter
if [ $# -eq 2 ]; then
    find . -not -path '*/\.*' -type f -size -50k -exec sed -i "s|$1|$2|g" {} \;
else
    echo "USAGE: $0 <string_from> <string_to>"
    echo "e.g. $0 foo bar"
    exit 1
fi
