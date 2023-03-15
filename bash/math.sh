#!/bin/bash
NUMBER=5
let RESULT=NUMBER+5
echo $RESULT


RESULT=$(( NUMBER + 5 ))
echo $RESULT


RESULT=$[ NUMBER + 5 ]
echo $RESULT


RESULT=$(expr $NUMBER + 5 )
echo $RESULT








RESULT=`echo "$NUMBER * 1.9" | bc`
echo $RESULT