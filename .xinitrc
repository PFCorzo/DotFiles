#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Since i'm not using a DM got place this near the top per Evan Leclerc

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --dpi 175 
# picom for opacity

picom -f &

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "~/.Xresources"

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
#
exec i3

#!/bin/sh
xrandr --output eDP-1 --primary --mode 3840x2160 --pos 0x0 --rotate norm
al --output DP-1 --mode 3840x1100 --pos 0x2520 --rotate normal
