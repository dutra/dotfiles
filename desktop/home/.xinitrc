#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
        for f in /etc/X11/xinit/xinitrc.d/*; do
                [ -x "$f" ] && . "$f"
        done
        unset f
fi


xrdb -merge ~/.Xresources         # update x resources db

xbindkeys

xsetroot -solid black

#/usr/bin/start-pulseaudio-x11

# Set up an icon tray
trayer --edge top --align right --SetDockType true --SetPartialStrut true \
 --expand true --width 9 --transparent true --tint 0x000000 --height 40 &

#wicd-gtk -t &

# pidgin
#pidgin &

# alsa-tray
alsa-tray &

# clementine
#clementine &

xsetroot -cursor_name left_ptr

exec xmonad
