#!/bin/bash
ARCH_PACKAGES="git yay polybar rofi zsh feh bitwarden brave-bin alacritty gotop-bin bat neovim bspwm sxhkd ttf-fira-code dunst discord-canary noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-emoji font-manager-git picom-ibhagwan-git btop spotifyd-full-git spotify-tui"

echo " > Install arch packages"
sudo pacman -S --needed --noconfirm $(echo $ARCH_PACKAGES)

echo " > Set zsh as default shell for user"
sudo -u $USER chsh -s /usr/bin/zsh

echo " > Copy configs files"
cp -rT .config $HOME/.config

echo " > Copy .zshrc"
cp -T .zshrc $HOME/.zshrc

echo "Install Done!"
