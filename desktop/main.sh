#!/usr/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "+ Installing desktop packages"
echo "+ Done installing desktop packages"

echo "+ Copying home files"
cp -va $DIR/home/. ~
echo "+ Done copying home files"
