#!/bin/bash

if (($# == 0 )); then
    echo " no inputs" >&2
    exit 1
fi


if !  [[ -n $2 ]]; then
    echo " not a valid string " >&2
    exit 1
fi

mkdir -p "$(dirname "$1")"

if (($? != 0)); then 
    echo " Error: could not create dir path"
    exit 1
fi

echo "$2">"$1"
if (($? != 0)); then 
    echo " Error: could not create or write to file"
    exit 1
fi