#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xrandr --output HDMI-A-0 --mode 2560x1080 --rate 74.99
~/.config/polybar/launch.sh float &
feh --bg-scale /usr/share/backgrounds/U1kHcco.jpeg &
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
run xfce4-power-manager &
numlockx on &
picom --config ~/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
~/.config/dunst/load.sh &
setxkbmap -option grp:alt_shift_toggle us,br &
wmname LG3D &
