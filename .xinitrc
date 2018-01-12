#!/bin/sh

xrandr --output VGA-2 --auto --output HDMI-1 --primary --auto --right-of VGA-2 --output VGA-1-1 --auto --right-of HDMI-1

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f /etc/xprofile ]] && source /etc/xprofile

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

[[ -f ~/.xautostart ]] && source ~/.xautostart

if [ -z "$WM" ] ; then
  WM="openbox-session"
fi

if [ -z "$1" ] ; then
  exec "$WM"
else
  exec "$1"
fi
