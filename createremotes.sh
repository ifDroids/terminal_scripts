#!/bin/sh
for entry in "$(pwd)"/src/*
do
    if [ -d "$entry" ]; then #if "$entry is a directory"
        cd "$entry"
        y="${entry##*/}"
        git remote remove origin > /dev/null 2>&1
        git remote add origin git@github.com/ifdroids/"$y".git
        cd ../..
    fi
done
echo "Remotes added."
