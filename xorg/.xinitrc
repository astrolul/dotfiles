#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/Xresources
sysmodmap=/etc/X11/xinit/Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -n "`/etc/X11/chooser.sh`" ]; then
 command="`/etc/X11/chooser.sh`"
else
 failsafe="yes"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

feh --bg-scale ~/wallpapers/QDtSKvQ.png
xrdb -merge ~/.Xresources
picom --config ~/.config/picom/picom.conf &
unclutter -idle 3 &
dbus-launch thunar --daemon &
dunst --config ~/.config/dunst/dunstrc &
notify-send "Welcome to Astro's DWM Rice" "OS: $(. /etc/os-release; echo $NAME)" --icon "computer"
exec dbus-run-session dwm
