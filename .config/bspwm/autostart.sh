#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xrandr --output HDMI-A-0 --mode 2560x1080 --rate 74.99
$HOME/.config/polybar/launch.sh &
feh --bg-fill /usr/share/backgrounds/papers.co-bj03-art-logo-wave-simple-minimal-dark-2560x1600.jpg &
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
run xfce4-power-manager &
numlockx on &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
run volumeicon &
wmname LG3D &