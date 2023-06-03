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

xrandr --output DP-2 --dpi 96 --mode 1680x1050 --rate 60 --rotate left --right-of HDMI-0 --output HDMI-0 --dpi 96 --mode 1920x1080 --rate 74.97 --panning 1920x1080+0+300
feh --bg-fill ~/wallpapers/solarized.png
xrdb -merge ~/.Xresources
xscreensaver &
/usr/bin/lxqt-policykit-agent &
picom --config ~/.config/picom/picom.conf &
unclutter -idle 3 &
dunst --config ~/.config/dunst/dunstrc &
exec dwm
