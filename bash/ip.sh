#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Provide exactly one argument e.g $0 argument"
    exit 1
fi


VAR1=$1

REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"



if ! [[ $VAR1 =~ $REGEX ]]; then
    echo "No Ip address provided"
    exit 2
fi

IP=${BASH_REMATCH[0]}

ping -c4 $IP 1>/dev/null
if [ $? -eq 0 ]; then
    STATUS="ALIVE"
else
    STATUS="DEAD"
fi

echo "IP found: $IP ($STATUS)"