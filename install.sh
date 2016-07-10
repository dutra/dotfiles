#!/bin/bash

sudo pacman -S xorg-xserver xorg-xinit xorg-utils xorg-apps xmonad xmonad-contrib xmobar slim xterm dialog
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
