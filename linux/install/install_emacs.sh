#!/bin/sh

echo "----------------"
echo "Installing Doom-Emacs"
echo "----------------"
sudo apt -y install ripgrep fd-find
wget http://mirrors.syringanetworks.net/gnu/emacs/emacs-27.1.tar.gz -O emacs-27.1.tar.gz
sudo tar -zxvf emacs-27.1.tar.gz

cd emacs-27.1
sudo ./configure
sudo make
sudo make install

git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

cp ../../doom.d/* ~/.doom.d/
sudo ~/.emacs.d/bin/doom sync

sudo rm emacs-27.1.tar.gz
sudo rm -rf emacs-27.1
