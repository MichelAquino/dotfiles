#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo dnf check-update

echo "-------------------------------------"
echo "Installing basic applications"
echo "-------------------------------------"
sudo dnf -y install ca-certificates gnupg2 dirmngr git curl vim tmux zsh terminator desktop-file-utils gvfs debian-keyring dkms openssl ncurses-devel ctags-etags libnsl
