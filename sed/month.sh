#!/bin/bash
read -p "Enter month name: " month

case "$month" in
    January|March|May|JUly|August|October|December)
        echo "31 days";;
    April|June|September|November)
        echo "30 days";;
    February)
        read -p "Enter year (YYYY format): " year
        if (( year % 4 == 0 && year % 100 != 0 || year % 400 == 0 ))
        then
            echo "29 days"
        else
            echo "28 days"
        fi;;
    *)
        echo "Invalid month name";;
esac