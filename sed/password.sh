#!/bin/bash


IFS=$'n' read -d '' -r -a lines < /etc/passwd


for line in "${lines[@]}"
do
    uid=$(echo $line | cut -d ':' -f 3)
    echo "$uid:$line"

done


awk -F: '{
    for (i=1; i<=NF; i++) {
        for (j=i+1)
    }
}'