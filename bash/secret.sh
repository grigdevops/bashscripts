#!/bin/bash

echo -n Your Age;
read AGE


[ $AGE -lt 20 ] && { echo You are not allowed to see the secret; exit 1;} || echo welcome

echo Secret is that no sectre