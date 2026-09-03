#!/bin/bash

if (($# == 0 )); then
    echo " no inputs" >&2
    exit 1
fi

if ! [[ -d $1 ]]; then
    echo " not a valid dir" >&2
    exit 1
fi

if !  [[ -n $2 ]]; then
    echo " not a valid string " >&2
    exit 1
fi

filedir=$1
string=$2

x=$(find "$filedir" -type f | wc -l)
y=$(grep -r "$string" "$filedir"| wc -l)


echo "The number of files are "$x" and the number of matching lines are "$y" "