#!/bin/sh

echo "----------------"
echo "Installing Doom-Emacs"
echo "----------------"
sudo apt -y install ripgrep fd-find
wget http://mirrors.syringanetworks.net/gnu/emacs/emacs-27.1.tar.gz -O emacs-27.1.tar.gz
tar -zxvf emacs-27.1.tar.gz

cd emacs-27.1
./configure
make
make install

git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

cp ../../doom.d/* ~/.doom.d/
~/.emacs.d/bin/doom sync

rm emacs-27.1.tar.gz
rm -rf emacs-27.1
