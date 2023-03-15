#!/bin/bash
NUMBER=7
let RESULT=NUMBER+5
echo $RESULT
let NUMBER++
echo $NUMBER
let RESULT--
echo $RESULT