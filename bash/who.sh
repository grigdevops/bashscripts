#!/bin/bash

WHOAMI=$(whoami)

if [ "$WHOAMI" != "root" ]; then
    echo "You are not root, exiting"
    exit 1
fi

ps -ef | head -3