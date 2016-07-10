#!/usr/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "+ Installing general packages"
echo "+ Done installing general packages"

echo "+ Copying home files"
cp -va $DIR/home/. ~
echo "+ Done copying home files"
