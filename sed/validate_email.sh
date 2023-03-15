#!/bin/bash

read -p "Enter your email address: " email

if [[ $email =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
  echo "Email is Valid"
else
  echo "Email is Invalid"
fi
