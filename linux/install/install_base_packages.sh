#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing basic applications"
echo "-------------------------------------"
sudo apt -y install software-properties-common apt-transport-https curl ca-certificates gnupg2 dirmngr git vim tmux zsh terminator desktop-file-utils gvfs debian-keyring dkms openssl p7zip gnupg-agent firmware-linux firmware-atheros build-essential texinfo libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev gnutls-dev libgtk-3-dev
