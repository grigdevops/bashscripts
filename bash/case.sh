#!/bin/bash

echo -n "Enter your name: "
read NAME
echo -n "Enter your age: "
read AGE
echo -n "Enter your department"
read DEP


echo "You have entered foloowing"
echo "Name:         $NAME"
echo "Age:         $AGE"
echo "Department:         $DEP"
echo -n "Is taht correct? [ Y/n ] "
read ANSWER
CHECK=0
while [ $CHECK -eq 0 ]

do

case "$ANSWER" in
    "Y"|"y"  )
        echo "Name:         $NAME" >> empl.txt
        echo "Age:         $AGE" >> empl.txt
        echo "Department:         $DEP" >> empl.txt
        echo "========================================================" >> empl.txt
        echo "Your data ere saved in employee file"
        CHECK=1
        ;;
    N|n )
        echo "Nothing was saved , run the script again"
        CHECK=1
        ;;
    * )
        echo "Wrong answrs provided"
        CHECK=1
        ;;
esac
done