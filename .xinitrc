#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    /usr/bin/xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    /usr/bin/xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    /usr/bin/xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    /usr/bin/xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# device stat utility
/usr/local/bin/slstatus &

# compositor
/usr/bin/picom &

# battery status notification
/usr/local/bin/battery &

# restore wallpaper using feh
/usr/bin/feh --bg-fill $HOME/.wall --bg-fill $HOME/.wall

# set keyboard layout
/usr/bin/setxkbmap -layout us -option "caps:swapescape"

# polkit agent (manages gui authentication)
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

# execute startdwm
exec $HOME/.local/bin/startdwm
