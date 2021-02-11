#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update

echo "-------------------------------------"
echo "Installing basic applications"
echo "-------------------------------------"
sudo apt -y install \ 
    software-properties-common \ 
    apt-transport-https \ 
    curl \ 
    ca-certificates \ 
    gnupg2 \ 
    dirmngr \ 
    git \ 
    vim \ 
    tmux \ 
    zsh \ 
    terminator \ 
    desktop-file-utils \ 
    gvfs \ 
    debian-keyring \ 
    dkms \ 
    openssl \ 
    ncurses-devel \ 
    ctags-etags \ 
    libnsl \ 
    p7zip \ 
    gnupg-agent
