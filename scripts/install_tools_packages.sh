#!/bin/sh

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

echo "----------------"
echo "Installing Slack"
echo "----------------"
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.6.3-amd64.deb -O /tmp/slack-desktop-2.6.3-amd64.deb
sudo dpkg -i /tmp/slack-desktop-2.6.3-amd64.deb
