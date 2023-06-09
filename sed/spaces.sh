#!/bin/bash

# ./spaces.sh [file-path] [-f | --fix] [-h | --help]

function usage() {
    echo "USAGE: $0 [file-path] [-f| --fix] [-h | --help] "
    exit 1
}
 
FIX=0  #0-do not perform fix 1-perform fix
if [ $# -eq 0 ]; then
    
    usage
fi

while [ $# -gt 0 ]; 
do
    case "$1" in
        -f|--fix )
            shift
            FIX=1
            ;;
        -h|--help )
            usage
            shift
            ;;
        * )
            if [ -f "$1" ]; then
                FILE="$1"
                shift
            else
                usage
            fi
            ;;
    esac


done


if [ $FIX -eq 1 ] && [ -f "$FILE" ]; then
    echo "Fixing spaces and tabs at the begining and at the end of lines"
    sed -i 's/[[:blank:]]\+$//' "$FILE"
    sed -i 's/^[[:blank:]]\+//' "$FILE"
    echo "DONE"
fi


#display graphically space errors

if [ -f "$FILE" ]; then

    LINES=0
    REGEX_START="^[[:blank:]]+"
    REGEX_END="[[:blank:]]+$"

    while IFS= read -r line
    do
        let LINES++
        echo $LINES
        echo "$line" | sed -e '/[[:blank:]]\+$/q9' -e '/^[[:blank:]]\+/q7' > /dev/null
        if [ $? -eq 0 ]; then
            printf %4s "$LINES" >>temp.txt
            echo "$line" >>temp.txt
            continue
        
        fi

        printf %4s "$LINES:" >> temp.txt

        if [[ "$line" =~ $REGEX_START ]]; then
            MATCH=`echo "$BASH_REMATCH" | sed 's/\t|___TAB___|/g'`
            echo -e -n "\e[41$MATCH\e[49m" >> temp.txt
        fi



        echo -e -n "$line" | sed -e 's/^[[:blank:]]\+//' -e 's/[[:blank:]]\+$//' >>temp.txt


        if [[ "$line" =~ $REGEX_END ]]; then
            MATCH=`echo "$BASH_REMATCH" | sed 's/\t|___TAB___|/g'`
            echo -e -n "\e[41$MATCH\e[49m" >> temp.txt

        fi






    done < "$FILE"


    cat temp.txt
    rm temp.txt

fi