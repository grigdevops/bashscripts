#!/bin/bash

n=1

while (( n <= 99))
do
    echo $n
    (( n += 2 ))

done