#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing basic applications"
echo "-------------------------------------"
sudo apt -y install software-properties-common apt-transport-https curl ca-certificates gnupg2 
sudo apt -y install dirmngr git vim tmux zsh terminator desktop-file-utils gvfs debian-keyring dkms openssl p7zip 
sudo apt -y install gnupg-agent firmware-linux firmware-linux-nonfree firmware-atheros build-essential texinfo 
sudo apt -y install libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev gnome-keyring
sudo apt -y install gnutls-dev libgtk-3-dev snapd xsel
sudo snap install core