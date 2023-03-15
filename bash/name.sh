#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Exaclty one argument needed . tun $0 filepath"
    exit 1
fi

if ! [ -f "$1" ]; then
    echo "File not exist"
    exit 2
fi




FILENAME=$1
COUNT=1

while read line
do
    echo "$COUNT: $line"
    let COUNT++


done < "$FILENAME"