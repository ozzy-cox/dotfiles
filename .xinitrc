#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

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

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

picom -b --no-fading-openclose
setxkbmap custom_us custom
xset r rate 200 50
echo 1 > /sys/bus/hid/drivers/apple/module/parameters/swap_opt_cmd
echo 1 > /sys/bus/hid/drivers/apple/module/parameters/swap_fn_leftctrl
echo 2 > /sys/bus/hid/drivers/apple/module/parameters/fnmode
xinput set-prop "Apple MTP multi-touch" "libinput Natural Scrolling Enabled" 0
exec awesome
