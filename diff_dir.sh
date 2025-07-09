#!/bin/bash

if [ $# -ne 2 ]; then
    echo -e "USAGE: ./dirdiff.sh directory1 directory2"
    exit 1
fi

# Generate checksum for directory file list (names only)
checksum1=$(ls -1 "$1" | sort | md5sum | awk '{print $1}')
checksum2=$(ls -1 "$2" | sort | md5sum | awk '{print $1}')

if [ "$checksum1" = "$checksum2" ]; then
    echo -e "No difference between the 2 directories"
    exit 0
fi

# If directory contents differ, display differences
diff -q "$1" "$2"


