#!/bin/sh
ROOT_DIR="$(pwd)"
for entry in "$(pwd)"/src/*
do
    if [ -d "$entry" ]; then #if "$entry is a directory"
        cd "$entry"
        y="${entry##*/}"
        git remote remove origin > /dev/null 2>&1
        git remote add origin git@github.com:ifdroids/"$y".git
        git branch -D master > /dev/null/ 2>&1
        git checkout -b master
        cd ../..
    fi
done
echo "Project's remotes added."

# manifest
cd $ROOT_DIR/manifest
git remote remove origin > /dev/null 2>&1
git remote add origin git@github.com/ifdroids/manifest.git
cd ..
# resources
cd $ROOT_DIR/resources
git remote remove origin > /dev/null 2>&1
git remote add origin git@github.com/ifdroids/resources.git
cd ..
# terminal_scripts
cd $ROOT_DIR/terminal_scripts
git remote remove origin > /dev/null 2>&1
git remote add origin git@github.com/ifdroids/terminal_scripts.git
cd ..

echo "All remotes added."
