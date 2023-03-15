#!/bin/bash

while getopts a:b:cd param; do
    case $param in  
        a) echo "Parameter 'a' with argument: $OPTARG"
           ;;
        b) echo "Parameter 'b' selected with argument: $OPTARG"
           ;;
        c) echo "Parameter 'c' selected (no colon, no argument)"
           ;;
        d) echo "parameter 'd' selected"
           ;;
    esac
done