#!/bin/bash

filepath="$(realpath $0)"
mypath="$(dirname "$filepath")"
cd $mypath

git clone $REPO_URL WABOT

cp -rf WABOT/* ./

rm -rf WABOT

bash run.sh
