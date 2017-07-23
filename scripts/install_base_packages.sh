#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing basic applications"
echo "-------------------------------------"
sudo apt-get -y install \ 
    apt-transport-https \
    ca-certificates \
    gnupg2 \
    software-properties-common \
    dirmngr \
    git \
    curl \
    vim \
    tmux \
    zsh \
    terminator \
    build-essential \ 
    libssl-dev
