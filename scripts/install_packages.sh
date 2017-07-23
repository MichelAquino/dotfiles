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

echo "-------------------------------------"
echo "Installing Google Chrome"
echo "-------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

echo "----------------"
echo "Installing Spotify"
echo "----------------"
wget http://ftp.br.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u6_amd64.deb -P /tmp
sudo apt install /tmp/libssl1.0.0_1.0.1t-1+deb8u6_amd64.deb

sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update
sudo apt-get install -y spotify-client
