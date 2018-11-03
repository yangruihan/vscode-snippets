#!/usr/bin/env bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

echo "Current System is ${machine}"

if [ "${machine}" = "Linux" ]; then
    DIR_PATH=$HOME/.config/Code/User/snippets/
else
    DIR_PATH=$HOME/Library/Application\ Support/Code/User/snippets/
fi

echo "Visual studio code snippets path: ${DIR_PATH}"

if [ ! -d "$DIR_PATH" ]
then
    echo "ERROR: Visual Studio Code dose not exist"
else
    echo "----- Do Copy -----"
    echo "$(pwd) to $DIR_PATH"

    cp *.code-snippets "$DIR_PATH"

    echo "--------------------------"
    echo "----- Update Success -----"
    echo "--------------------------"
fi