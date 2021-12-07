#!/bin/bash

kblayout=$(xkb-switch)

if [ "$kblayout" = "br" ]; then
  echo "BR"
else
  echo "EN"
fi

case $1 in
toggle)
  if [ "$kblayout" = "br" ]; then
      setxkbmap us
  else
      setxkbmap br
  fi
  ;;
esac
