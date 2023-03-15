#!/bin/bash


PROD=/home/grigor/bashscript/prod

if [ $# -ne 1 ]; then
    echo "only one argument is needed, run $0 destination-path"
    exit 1
fi

DESTINATION=$1

if [[ $DESTINATION != */backup ]]; then
    echo Wrong destination path
    exit 2
fi

DATE=$(date +%Y-%m-%d_%H_%M_%S)
mkdir -p $DESTINATION/$DATE

cp $PROD/*.pdf $DESTINATION/$DATE




if [ $? -eq 0 ]; then
    echo backup ok
else
    echo backup fail
fi

