#!/bin/bash

while [ $# -gt 0 ]
do
    case "$1" in
        -h|--help )
            echo "USAGE: $0 [-h] [--help] [-f file] [--file file]"
            shift # throw away parameter
            exit 1
            ;;
        -f|--file )
            FILE=$2
            if ! [ -f "$FILE" ]; then
                echo "File does not exists"
                exit 2
            fi

            LINES=`cat "$FILE" | wc -l`
            WORDS=`cat "$FILE" | wc -w`
            CHARACTERS=`cat "$FILE" | wc -m`

            echo "===FILE: $FILE==="
            echo "Lines: $LINES"
            echo "Words: $WORDS"
            echo "Characters: $CHARACTERS"
            shift # throw away parameter
            shift
            ;;

        * )
            echo "USAGE: $0 [-h] [--help] [-f file] [--file file]"
            exit 1
            ;;
    esac

done