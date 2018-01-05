#!/bin/sh

echo "-------------------------------------"
echo "Installing Google Chrome"
echo "-------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

echo "----------------"
echo "Installing Spotify"
echo "----------------"
sudo apt-get update
sudo apt-get install -y spotify-client

echo "----------------"
echo "Installing Slack"
echo "----------------"
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.6.3-amd64.deb -O /tmp/slack-desktop-2.6.3-amd64.deb
sudo dpkg -i /tmp/slack-desktop-2.6.3-amd64.deb

echo "----------------"
echo "Installing Popcorn Time"
echo "----------------"
sudo rm -Rf /opt/popcorntime
sudo rm -Rf /usr/bin/Popcorn-Time
sudo rm -Rf /usr/share/applications/popcorntime.desktop

wget https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz -O /tmp/popcorntime.tar.xz
sudo mkdir /opt/popcorntime
sudo tar Jxf /tmp/popcorntime.tar.xz -C /opt/popcorntime/

sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time

echo -e '[Desktop Entry]\n Version=1.0\n Name=popcorntime\n Exec=/opt/popcorntime/Popcorn-Time\n Icon=/opt/popcorntime/src/app/images/icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/popcorntime.desktop
sudo chmod +x /usr/share/applications/popcorntime.desktop

echo "----------------"
echo "Installing Deluge"
echo "----------------"
sudo apt-get install -y deluge

echo "----------------"
echo "Installing Skype"
echo "----------------"
wget https://go.skype.com/skypeforlinux-64.deb -P /tmp
sudo dpkg -i /tmp/skypeforlinux-64.deb 
