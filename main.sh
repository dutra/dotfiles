#!/bin/bash

echo 'Dotfiles - dutra'
echo '################'
echo ""

echo 'Installing general packages'
./install.sh

./all/main.sh

if [ $1 = "laptop" ]; then
    echo '* Executing laptop scripts'
    ./laptop/main.sh
fi

if [ $1 = "desktop" ]; then
    echo '* Executing laptop scripts'
    ./laptop/main.sh
fi
