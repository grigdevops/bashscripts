#!/bin/bash

function addition {
    local FIRST=$1
    local SECOND=$2
    let RESULT=FIRST+SECOND
    echo "RESULT: $RESULT"
    let FIRST++
    let SECOND++
}


echo -n "Enter first  Number: "
read FIRST
echo -n "Enter second Number: "
read SECOND

addition $FIRST $SECOND
echo "Printing Varibales: "
echo "FIRST: $FIRST"
echo "SECOND: $SECOND"
echo "RESULT: $RESULT"