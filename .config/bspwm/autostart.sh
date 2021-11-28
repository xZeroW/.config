#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
xrandr --output HDMI-A-0 --mode 2560x1080 --rate 74.99
#autorandr horizontal

$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
feh --bg-fill /usr/share/backgrounds/papers.co-bj03-art-logo-wave-simple-minimal-dark-2560x1600.jpg &
#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

#dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
# Mouse pointer
xsetroot -cursor_name left_ptr &
# Keybinds
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
# Widget
#conky -c $HOME/.config/bspwm/system-overview &
# Wallpaper
#run variety &
# Network manager
run nm-applet &
# Package update check
#run pamac-tray &
run xfce4-power-manager &
numlockx on &
#lueberry-tray &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
$HOME/.config/dunst/load.sh &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
#run solaar &
wmname LG3D &
#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &
