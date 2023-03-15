#!/bin/bash

 if [ $# -ne 1 ]; then
    echo "Provide exaclty one argument"
    exit 1
fi


FILE=$1

if [ -f $FILE ]; then

    VAR_READ="NO"
    VAR_WRITE="NO"
    VAR_EXE="NO"

    if [ -r $FILE ]; then
        VAR_READ="YES"
    fi

    if [ -w $FILE ]; then
        VAR_WRITE="YES"
    fi

    if [ -x $FILE ]; then
        VAR_EXE="YES"
    fi

    echo =====FILE: $FILE=====
    echo "READ: $VAR_READ"
    echo "WRITE: $VAR_WRITE"
    echo "EXEVUTABLE: $VAR_EXE"
else
    if [ -d $FILE ]; then
        echo "$FILE is a Directory"
    else
        echo "$FILE does not exist"
    fi
fi