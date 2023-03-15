#!/bin/bash

echo -n "enter first number"
read FIRST
echo -n "enter second number:"
read SECOND



let RESULT=FIRST+SECOND
echo $RESULT


echo "$FIRST + $SECOND = $RESULT"


RESULT=`echo "$FIRST^$SECOND" | bc`