#!/bin/bash



#exit the script if there is more or less than 2 argument

if [ ! $# -eq 2 ]; then
    echo "Two argument needed, run the script with 2 arguments"
    exit 1
fi  
FIRST=$1
SECOND=$2

let RESULT=FIRST*SECOND

if [ $? -ne 0 ]; then
    echo "You need to put 2 ointeger argument, run script again"
    exit 2
else
    echo "$FIRST * $SECOND  = $RESULT"
fi