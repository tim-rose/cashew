#!/bin/sh
#
# CASHEW --Freshen up and flatten a cache directory.
#
# TODO: recursive flag (descend into "cache.conf"-containing subdirs?
# TODO: specify config file
# TODO: restrict updates to only specified files
# TODO: URL support: use curl to get timestamp info?
#
. midden
require log

version="VERSION"
config=cache.conf

main()
{
    while read path; do
        file="${path##*/}"        # basename
        if [ "$path" -nt "$file" ]; then
            notice 'updating %s' "$file"
            cp "$path" "$file"
        else
            info 'file: %s' "$file"
        fi
    done  < $config
}

main "@"
