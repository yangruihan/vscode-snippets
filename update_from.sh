#!/usr/bin/env bash

DIR_PATH=$HOME/Library/Application\ Support/Code/User/snippets/

if [ ! -d "$DIR_PATH" ]
then
    echo "ERROR: Visual Studio Code dose not exist"
else
    echo "----- Do Copy -----"
    echo "$DIR_PATH to $(pwd)"

    cp -R "$DIR_PATH" .

    echo "--------------------------"
    echo "----- Update Success -----"
    echo "--------------------------"
fi